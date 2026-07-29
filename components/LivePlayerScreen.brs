' LivePlayerScreen — category-based live TV with top category bar
'
' State:
'   m.state.categoryIndex  — active category (0-based)
'   m.state.channelIndex   — active channel within category (0-based)
'   m.state.focusArea      — "player" | "categories"

sub init()
    m.scene             = m.top.getScene()
    m.video             = m.top.findNode("liveVideo")
    m.categoryBar       = m.top.findNode("categoryBar")
    m.bufferingSpinner  = m.top.findNode("bufferingSpinner")
    m.channelOverlay    = m.top.findNode("channelOverlay")
    m.channelNumberLabel= m.top.findNode("channelNumberLabel")
    m.channelNameLabel  = m.top.findNode("channelNameLabel")
    m.errorLabel        = m.top.findNode("errorLabel")
    m.overlayHideTimer  = m.top.findNode("overlayHideTimer")

    m.maxRetries        = 3
    m.retryCount        = 0

    ' Central state object
    m.state = {
        categoryIndex: 0
        channelIndex:  0
        focusArea:     "player"
    }

    m.bufferingSpinner.poster.uri = "pkg:/images/loader.png"

    m.video.observeField("state",     "onVideoStateChanged")
    m.video.observeField("errorCode", "onVideoError")
    m.overlayHideTimer.observeField("fire", "onOverlayHideTimerFire")
    m.top.observeField("visible",           "onVisibleChanged")
    m.categoryBar.observeField("selectedIndex",     "onCategoryBarIndexChanged")
    m.categoryBar.observeField("categoryConfirmed", "onCategoryConfirmed")

    giveFocusToPlayer()
    playCurrentChannel(true)
end sub

' ─── Focus helpers ───────────────────────────────────────────────────────────

sub giveFocusToPlayer()
    m.state.focusArea = "player"
    m.categoryBar.showFocus = false
    m.video.setFocus(true)
end sub

sub giveFocusToCategoryBar()
    m.state.focusArea = "categories"
    m.categoryBar.showFocus = true
    m.categoryBar.setFocus(true)
end sub

' ─── Playback ────────────────────────────────────────────────────────────────

sub playCurrentChannel(showOverlay as Boolean)
    channel = GetChannel(m.state.categoryIndex, m.state.channelIndex)
    if channel = invalid then return

    m.retryCount  = 0
    m.errorLabel.visible = false

    m.video.control = "stop"
    content = CreateObject("roSGNode", "ContentNode")
    content.url          = channel.url
    content.streamformat = "hls"
    content.title        = channel.title
    m.video.content  = content
    m.video.visible  = true
    m.video.control  = "play"

    if showOverlay
        showChannelOverlay()
    end if
end sub

sub showChannelOverlay()
    channel = GetChannel(m.state.categoryIndex, m.state.channelIndex)
    if channel = invalid then return
    cats = GetCategoryList()
    catTitle = cats[m.state.categoryIndex].title
    m.channelNumberLabel.text = catTitle + " · Ch " + (m.state.channelIndex + 1).ToStr()
    m.channelNameLabel.text   = channel.title
    m.channelOverlay.visible  = true
    m.overlayHideTimer.control = "start"
end sub

sub onOverlayHideTimerFire()
    m.channelOverlay.visible = false
    m.overlayHideTimer.control = "stop"
end sub

' ─── Category bar observers ───────────────────────────────────────────────────

' Called whenever user moves left/right on the category bar.
' Immediately load the new category and auto-play its first channel.
sub onCategoryBarIndexChanged()
    newCat = m.categoryBar.selectedIndex
    if newCat = m.state.categoryIndex then return
    m.state.categoryIndex = newCat
    m.state.channelIndex  = 0
    playCurrentChannel(true)
end sub

' Called when user presses DOWN or OK on the category bar — return to player.
sub onCategoryConfirmed()
    giveFocusToPlayer()
end sub

' ─── Video state ─────────────────────────────────────────────────────────────

sub onVisibleChanged()
    if m.top.visible
        m.video.setFocus(true)
    else
        if m.video <> invalid
            m.video.control = "stop"
        end if
    end if
end sub

sub onVideoStateChanged()
    state = m.video.state
    if state = "buffering"
        m.bufferingSpinner.visible = true
    else if state = "playing"
        m.bufferingSpinner.visible = false
        m.errorLabel.visible       = false
        m.retryCount               = 0
    else if state = "stopped" or state = "finished" or state = "paused"
        m.bufferingSpinner.visible = false
    else if state = "error"
        m.bufferingSpinner.visible = false
        handlePlaybackFailure()
    end if
end sub

sub onVideoError()
    if m.video.state = "error"
        handlePlaybackFailure()
    end if
end sub

sub handlePlaybackFailure()
    if m.retryCount < m.maxRetries
        m.retryCount = m.retryCount + 1
        m.video.control = "play"
        return
    end if
    m.errorLabel.visible = true
end sub

' ─── Remote navigation ───────────────────────────────────────────────────────

function OnKeyEvent(key as String, press as Boolean) as Boolean
    if not press then return false

    if m.state.focusArea = "player"
        if key = "left"
            m.state.channelIndex = GetPreviousChannelIndex(m.state.channelIndex, m.state.categoryIndex)
            playCurrentChannel(true)
            return true
        else if key = "right"
            m.state.channelIndex = GetNextChannelIndex(m.state.channelIndex, m.state.categoryIndex)
            playCurrentChannel(true)
            return true
        else if key = "up"
            giveFocusToCategoryBar()
            return true
        else if key = "back"
            if m.video.visible
                m.video.control = "stop"
                m.video.visible = false
            end if
            return true
        end if
    end if

    ' Category bar handles its own left/right/down keys via its own OnKeyEvent
    return false
end function

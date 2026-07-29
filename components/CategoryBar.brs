' CategoryBar — horizontal tab bar for live TV categories
' Focus indicator: shade + white underline bar below the focused tab

sub init()
    m.tabGroup   = m.top.findNode("tabGroup")
    m.categories = GetCategoryList()
    m.tabWidth   = 1920 / m.categories.Count()
    m.tabHeight  = 80
    m.barFocused = false

    buildTabs()
    m.top.observeField("selectedIndex", "onSelectedIndexChanged")
    m.top.observeField("showFocus", "onShowFocusChanged")
    refreshTabs()
end sub

sub buildTabs()
    underlineW = Int(m.tabWidth * 0.45)
    underlineX = Int((m.tabWidth - underlineW) / 2)

    for i = 0 to m.categories.Count() - 1
        tabNode = CreateObject("roSGNode", "Group")

        bg = CreateObject("roSGNode", "Rectangle")
        bg.id     = "tabBg_" + i.ToStr()
        bg.width  = m.tabWidth
        bg.height = m.tabHeight
        bg.color  = "0x0B1526FF"

        lbl = CreateObject("roSGNode", "Label")
        lbl.id         = "tabLbl_" + i.ToStr()
        lbl.text       = m.categories[i].title
        lbl.width      = m.tabWidth
        lbl.height     = m.tabHeight - 10
        lbl.horizAlign = "center"
        lbl.vertAlign  = "center"
        lbl.color      = "0xAAAAAAFF"
        lbl.font       = CreateObject("roSGNode", "Font")
        lbl.font.uri   = "pkg:/components/Fonts/Roboto-Regular.ttf"
        lbl.font.size  = 28

        ' Solid white bar under the tab (reliable on Roku — no Poster)
        underline = CreateObject("roSGNode", "Rectangle")
        underline.id          = "tabUnder_" + i.ToStr()
        underline.width       = underlineW
        underline.height      = 5
        underline.translation = [underlineX, m.tabHeight - 10]
        underline.color       = "0xFFFFFFFF"
        underline.visible     = false

        tabNode.appendChild(bg)
        tabNode.appendChild(lbl)
        tabNode.appendChild(underline)
        m.tabGroup.appendChild(tabNode)
    end for
end sub

sub onSelectedIndexChanged()
    refreshTabs()
end sub

sub onShowFocusChanged()
    m.barFocused = m.top.showFocus
    refreshTabs()
end sub

sub refreshTabs()
    activeIdx = m.top.selectedIndex
    for i = 0 to m.categories.Count() - 1
        bg        = m.top.findNode("tabBg_" + i.ToStr())
        lbl       = m.top.findNode("tabLbl_" + i.ToStr())
        underline = m.top.findNode("tabUnder_" + i.ToStr())

        if i = activeIdx
            if m.barFocused
                bg.color         = "0x2A4A7EFF"  ' shade while focused
                lbl.color        = "0xFFFFFFFF"
                lbl.font.size    = 32
                underline.visible = true          ' white bar below
            else
                bg.color         = "0x1A3A6EFF"  ' selected, no focus
                lbl.color        = "0xFFFFFFFF"
                lbl.font.size    = 30
                underline.visible = false
            end if
        else
            bg.color          = "0x0B1526FF"
            lbl.color         = "0xAAAAAAFF"
            lbl.font.size     = 28
            underline.visible = false
        end if
    end for
end sub

function OnKeyEvent(key as String, press as Boolean) as Boolean
    if not press then return false

    cats = m.categories
    idx  = m.top.selectedIndex

    if key = "left"
        if idx > 0
            m.top.selectedIndex = idx - 1
        end if
        return true
    else if key = "right"
        if idx < cats.Count() - 1
            m.top.selectedIndex = idx + 1
        end if
        return true
    else if key = "down" or key = "ok"
        m.top.showFocus = false
        m.top.categoryConfirmed = not m.top.categoryConfirmed
        return true
    end if

    return false
end function

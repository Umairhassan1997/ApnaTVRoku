' UsageTimerManager — free-time limit disabled (no subscription offering)

function GetFreeWatchLimitSeconds() as Integer
    return -1 ' unlimited
end function

function GetUsageRegistrySection() as String
    return "LiveTV"
end function

function GetUsageRegistryKey() as String
    return "remainingSeconds"
end function

sub InitUsageTimer()
    m.global.AddField("launchRoutePending", "boolean", false)
    m.global.AddField("remainingSeconds", "integer", false)
    m.global.AddField("isPlaying", "boolean", false)
    m.global.AddField("currentChannelIndex", "integer", false)

    ' No free-time countdown — keep a large sentinel for any legacy readers
    m.global.remainingSeconds = 999999
    if m.global.currentChannelIndex = invalid
        m.global.currentChannelIndex = 0
    end if
    m.global.isPlaying = false
end sub

sub SaveRemainingSeconds(seconds as Integer)
    m.global.remainingSeconds = 999999
end sub

function GetRemainingSeconds() as Integer
    return 999999
end function

function HasFreeTimeRemaining() as Boolean
    return true
end function

function TickUsageSecond() as Boolean
    return true
end function

sub PauseUsageTracking()
    m.global.isPlaying = false
end sub

sub ResumeUsageTracking()
    m.global.isPlaying = true
end sub

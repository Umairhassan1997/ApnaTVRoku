' Subscription check disabled — all users are unrestricted

sub VerifySubscription()
    m.top.isSubscribed = true
    OnSubscriptionCheckFinished()
end sub

sub OnSubscriptionCheckFinished()
    if m.global.launchRoutePending = true
        m.global.launchRoutePending = false
        scene = m.top.getScene()
        if scene <> invalid
            scene.callFunc("RouteOnLaunch")
        end if
    end if
end sub

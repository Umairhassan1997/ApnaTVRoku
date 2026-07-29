' ChannelManager — static live TV channel list and index helpers

function GetLiveChannelList() as Object
    return [
        {
            id: "1"
            title: "ApnaTV 1"
            streamUrl: "https://streams2.sofast.tv/v1/master/611d79b11b77e2f571934fd80ca1413453772ac7/70e45fc8-1f6c-4492-ac26-9868f70f4e02/manifest.m3u8"
            logo: "pkg:/images/HeroItem.png"
        },
        {
            id: "2"
            title: "ApnaTV 2"
            streamUrl: "https://live-manifest.production-public.tubi.io/live/9fe78734-1db2-49b4-af7b-3c89f5f256ad/playlist.m3u8"
            logo: "pkg:/images/HeroItem.png"
        },
        {
            id: "3"
            title: "ApnaTV 3"
            streamUrl: "https://aegis-cloudfront-1.tubi.video/a78ea283-8666-44a1-a0f6-fde5d229ac21/playlist.m3u8"
            logo: "pkg:/images/HeroItem.png"
        },
        {
            id: "4"
            title: "ApnaTV 4"
            streamUrl: "https://streams2.sofast.tv/vglive-sk-462904/playlist.m3u8"
            logo: "pkg:/images/HeroItem.png"
        }
    ]
end function

function GetLiveChannelCount() as Integer
    return GetLiveChannelList().Count()
end function

function GetLiveChannel(index as Integer) as Object
    channels = GetLiveChannelList()
    if index < 0 or index >= channels.Count()
        return invalid
    end if
    return channels[index]
end function

function GetNextChannelIndex(currentIndex as Integer) as Integer
    count = GetLiveChannelCount()
    if count = 0
        return 0
    end if
    return (currentIndex + 1) mod count
end function

function GetPreviousChannelIndex(currentIndex as Integer) as Integer
    count = GetLiveChannelCount()
    if count = 0
        return 0
    end if
    idx = currentIndex - 1
    if idx < 0
        idx = count - 1
    end if
    return idx
end function

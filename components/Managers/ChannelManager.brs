' ChannelManager — category-based live TV channel data and navigation helpers

function GetCategoryList() as Object
    return [
        {
            id: "urdu"
            title: "Urdu"
            channels: [
                { title: "Dunya News HD",      url: "https://imob.dunyanews.tv/livehd/ngrp:dunyalivehd_2_all/playlist.m3u8" }
                { title: "News18 Urdu",         url: "https://n18syndication.akamaized.net/bpk-tv/News18_Urdu_NW18_MOB/output01/master.m3u8" }
                { title: "Joo Music",           url: "https://livecdn.live247stream.com/joomusic/tv/playlist.m3u8" }
                { title: "Urdu Ch 4",           url: "https://cdn-4.pishow.tv/live/229/master.m3u8" }
                { title: "Madani Channel",      url: "https://streaming.madanichannel.tv/static/streaming-playlists/hls/b9790f10-cb0d-4e30-82bf-84a756234e58/master.m3u8" }
                { title: "Peace TV Urdu",       url: "https://dzkyvlfyge.erbvr.com/PeaceTvUrdu/index.m3u8" }
                { title: "BSS TV",              url: "https://lbgo.bozztv.com/ssh101/ssh101/bstv/playlist.m3u8" }
                { title: "Urdu Ch 8",           url: "https://cdn-4.pishow.tv/live/8/master.m3u8" }
                { title: "Jeremiah TV",         url: "https://x.streamablecloud.com/stream/hls/jeremiahtv/index.m3u8" }
                { title: "Saazo Awaz",          url: "https://streamer12.vdn.dstreamone.net/saazoawaz/saazoawaz/playlist.m3u8" }
                { title: "Filmax",              url: "https://s3.ideationtec.live/Filmax/Filmax.m3u8" }
                { title: "Disk Kids",           url: "https://vodzong.mjunoon.tv:8087/streamtest/disckids-157-1/playlist.m3u8" }
                { title: "M-Sports",            url: "https://cdn.rabta.stream/M-Sports/index.m3u8" }
            ]
        }
        {
            id: "punjabi"
            title: "Punjabi"
            channels: [
                { title: "Desi Channel",        url: "https://livestream.unlimitedcdn.com/agm-dc/desi-channel/index.m3u8" }
                { title: "Punjabi Ch 2",        url: "https://cdn-4.pishow.tv/live/1521/master.m3u8" }
                { title: "Punjabi Ch 3",        url: "https://d3qs3d2rkhfqrt.cloudfront.net/out/v1/6e14bac6d0384e129521a4d005188bfb/index.m3u8" }
                { title: "Punjabi Ch 4",        url: "https://d3qs3d2rkhfqrt.cloudfront.net/out/v1/3e22a9c278db4e3eb779afd42e41b0a6/index.m3u8" }
                { title: "Punjabi Ch 5",        url: "https://d2lk5u59tns74c.cloudfront.net/out/v1/f913cf893c594f73b114216e74a2efbc/index.m3u8" }
                { title: "Punjabi Hits",        url: "https://stream.ottlive.co.in/punjabihits/index.m3u8" }
                { title: "Chardikala Time TV",  url: "https://chardikalagurbanitv.gigabitcdn.net/in-chardikala/chardikala-timetv/playlist.m3u8" }
                { title: "Chardikala North USA", url: "https://chardikalanorthamerica.gigabitcdn.net/in-chardikala/chardikala-north-usa/playlist.m3u8" }
                { title: "Global Punjab",       url: "https://server.livelegitpro.in/globalpunjab/globalpunjab/index.m3u8" }
                { title: "Hamdard TV",          url: "https://tv.hamdardtv.com/hamdard/index.m3u8" }
                { title: "Pitaara TV",          url: "https://vg-pitaaratvlive.akamaized.net/v1/master/611d79b11b77e2f571934fd80ca1413453772ac7/vglive-sk-583798/playlist.m3u8" }
                { title: "Punjabi Shorts",      url: "https://vglivessai.akamaized.net/ptnr-yupptv/title-Punjabi_Shorts/in/v1/master/611d79b11b77e2f571934fd80ca1413453772ac7/27c3fd7a-b01f-4b00-ac03-557ac77acd47/index.m3u8" }
            ]
        }
        {
            id: "hindi"
            title: "Hindi"
            channels: [
                { title: "9XM",                 url: "https://9xjio.wiseplayout.com/9XM/master.m3u8" }
                { title: "Hindi Ch 2",          url: "https://cdn-2.pishow.tv/live/415/master.m3u8" }
                { title: "Epic Music",          url: "https://mumt04.tangotv.in/m18aqlK4EPICMUSIC/index.m3u8" }
                { title: "Hindi Ch 4",          url: "https://cdn-2.pishow.tv/live/226/master.m3u8" }
                { title: "Steelbird Music TV",  url: "https://cdn2.in/SteelbirdMusicTVhls/live.m3u8" }
                { title: "YRF Music",           url: "https://cdn-uw2-prod.tsv2.amagi.tv/linear/amg01412-xiaomiasia-yrfmusic-xiaomi/playlist.m3u8" }
                { title: "DAI Hindi",           url: "https://dai.google.com/linear/hls/event/JCAm25qkRXiKcK1AJMlvKQ/master.m3u8" }
                { title: "22 Scope",            url: "https://thelegitpro.in/HDlive/22scope/index.fmp4.m3u8" }
                { title: "Aaj Tak HD",          url: "https://feeds.intoday.in/aajtak/api/aajtakhd/master.m3u8" }
                { title: "Ganga TV",            url: "https://d2l4ar6y3mrs4k.cloudfront.net/live-streaming/ganga-livetv/master.m3u8" }
                { title: "Amar Ujala",          url: "https://amarujala.ottlive.co.in/amarujala/index.m3u8" }
                { title: "ANB News",            url: "https://server.livelegitpro.in:9899/anbnews/anbnews/index.m3u8" }
                { title: "Awaaz India",         url: "https://awaazindia.livebox.co.in/AwaazIndaTVhls/Live.m3u8" }
                { title: "Bansal News",         url: "https://8yzmq2gbdvax-hls-live.wmncdn.net/bansalnewstv1/live1.stream/playlist.m3u8" }
                { title: "Hindi Ch 15",         url: "https://cdn-2.pishow.tv/live/12/master.m3u8" }
                { title: "First India News",    url: "https://xlbor37ydvaj-hls-live.wmncdn.net/firstindianewstv1/live.stream/index.m3u8" }
                { title: "Aaj Tak Live",        url: "https://aajtaklive.vgcdn.net/v1/master/611d79b11b77e2f571934fd80ca1413453772ac7/3196cced-ce29-4219-9809-f07ccdaa02b9/vglive-sk-848805/master.m3u8" }
                { title: "India TV News",       url: "https://pl-indiatvnews.akamaized.net/out/v1/db79179b608641ceaa5a4d0dd0dca8da/index.m3u8" }
                { title: "All Time Movies",     url: "https://mumt03.tangotv.in/Dsly5z3HALLTIMEMOVIES/index.m3u8" }
                { title: "Bollywood RU",        url: "https://xykt-fix.github.io/cinerama_edge01/hls/BOLLYWOOD_RU/Movie009.m3u8" }
                { title: "Hindi Ch 21",         url: "https://cdn-2.pishow.tv/live/1460/master.m3u8" }
                { title: "MoviePlex",           url: "https://mumt04.tangotv.in/m18aqlK4MOVIEPLEX/index.m3u8" }
                { title: "Sony Sports",         url: "https://cc-yw7ztecy8do3q.akamaized.net/v1/master/3722c60a815c199d9c0ef36c5b73da68a62b09d1/cc-yw7ztecy8do3q/SS_IN.m3u8" }
                { title: "Samsung Hindi",       url: "https://sis-global.prod.samsungtv.plus/v1/tvpprd/sc-mp2ar4ca425xo.m3u8" }
            ]
        }
        {
            id: "bengali"
            title: "Bengali"
            channels: [
                { title: "Akash Aath",          url: "https://mumt03.tangotv.in/Dsly5z3HAAKASHAATH/index.m3u8" }
                { title: "Live Bangla",         url: "https://live-bangla.akamaized.net/liveabr/playlist.m3u8" }
                { title: "Bengali Ch 3",        url: "https://cdn-4.pishow.tv/live/1473/master.m3u8" }
                { title: "Ruposhi Bangla",      url: "https://app24.jagobd.com.bd/c3VydmVyX8RpbEU9Mi8xNy8yMFDEEHGcfRgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcEdsEfeDeKiNkVN3PTOmdFseWRtaW51aiPhnPTI2/ruposhibangla.stream/playlist.m3u8" }
                { title: "Colors HD",           url: "https://d1g8wgjurz8via.cloudfront.net/bpk-tv/ColorsHD/default/ColorsHD.m3u8" }
                { title: "Ananda TV",           url: "https://d2l4ar6y3mrs4k.cloudfront.net/live-streaming/ananda-livetv/master.m3u8" }
                { title: "CNN News",            url: "https://live.legitpro.co.in/cnnnews/index.m3u8" }
                { title: "CTV Nakd Plus",       url: "https://live.legitpro.co.in/ctvnakdplus/index.m3u8" }
                { title: "Desh TV",             url: "https://bozztv.com/rongo/rongo-DeshTV/index.m3u8" }
                { title: "High News",           url: "https://highmedia.livebox.co.in/HIGHNEWShls/LIVE.m3u8" }
                { title: "Kolkata TV",          url: "https://cdn.ottlive.co.in/kolkatatv/index.m3u8" }
                { title: "News18 Bangla",       url: "https://n18syndication.akamaized.net/bpk-tv/News18_Bangla_NW18_MOB/output01/master.m3u8" }
                { title: "NK Bangla",           url: "https://nktv.smartstream.video/smartstream-us/nkbangla/nkbangla/playlist.m3u8" }
                { title: "Republic TV",         url: "https://vg-republictvlive.akamaized.net/v1/master/611d79b11b77e2f571934fd80ca1413453772ac7/vglive-sk-456368/main.m3u8" }
                { title: "Samay Kolkata",       url: "https://server.livelegitpro.in/samaykolkata/samaykolkata/index.m3u8" }
                { title: "Somoy TV",            url: "https://bozztv.com/rongo/rongo-somoy/index.m3u8" }
                { title: "Bengali Ch 17",       url: "https://dyjmyiv3bp2ez.cloudfront.net/pub-iotv9banaen8yq/liveabr/playlist.m3u8" }
                { title: "ATN Bangla UK",       url: "https://app.ncare.live/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/atnbanglauk-off.stream/playlist.m3u8" }
                { title: "Bengali Ch 19",       url: "https://d3qs3d2rkhfqrt.cloudfront.net/out/v1/7ff57cc9046b4c188b51a0d506f36e7f/index.m3u8" }
                { title: "Bengali Ch 20",       url: "https://d3qs3d2rkhfqrt.cloudfront.net/out/v1/52b998e9510d41c29ad2ceca8ea3d849/index.m3u8" }
                { title: "DB Canada",           url: "https://dbcanada.sonarbanglatv.com/deshebideshe/dbtv/index.m3u8" }
                { title: "Deshi TV",            url: "https://deshitv.deshitv24.net/live/myStream/playlist.m3u8" }
                { title: "Jonmobhumi TV",       url: "https://jtvs.ncare.live/Gznr84Woj7UEye3OPVeWq2ForboWAgdV/jonmobhumitv.stream/playlist.m3u8" }
                { title: "Tribe TV",            url: "https://server.livelegitpro.in:9899/tribetv/tribetv/index.m3u8" }
                { title: "Bengali Ch 25",       url: "https://cdn-4.pishow.tv/live/1499/master.m3u8" }
                { title: "Bengali Ch 26",       url: "https://cdn-4.pishow.tv/live/1143/master.m3u8" }
                { title: "ZB Music",            url: "https://server.zillarbarta.com/zbmusic/index.m3u8" }
                { title: "Madani Bangla",       url: "https://streaming.madanichannel.tv/static/streaming-playlists/hls/d3e49b76-ac06-4689-a641-9200445b647f/master.m3u8" }
                { title: "Peace TV Bangla",     url: "https://dzkyvlfyge.erbvr.com/PeaceTvBangla/index.m3u8" }
                { title: "R Plus News 24x7",    url: "https://thelegitpro.in/pntv/rplusnews24x7/index.m3u8" }
            ]
        }
    ]
end function

' Returns the channel list for a given category index
function GetChannelsForCategory(categoryIndex as Integer) as Object
    cats = GetCategoryList()
    if categoryIndex < 0 or categoryIndex >= cats.Count()
        return []
    end if
    return cats[categoryIndex].channels
end function

' Returns total number of categories
function GetCategoryCount() as Integer
    return GetCategoryList().Count()
end function

' Returns a single channel object {title, url} given category and channel index
function GetChannel(categoryIndex as Integer, channelIndex as Integer) as Object
    channels = GetChannelsForCategory(categoryIndex)
    if channelIndex < 0 or channelIndex >= channels.Count()
        return invalid
    end if
    return channels[channelIndex]
end function

' Next channel index within current category, wraps around
function GetNextChannelIndex(channelIndex as Integer, categoryIndex as Integer) as Integer
    count = GetChannelsForCategory(categoryIndex).Count()
    if count = 0 then return 0
    return (channelIndex + 1) mod count
end function

' Previous channel index within current category, wraps around
function GetPreviousChannelIndex(channelIndex as Integer, categoryIndex as Integer) as Integer
    count = GetChannelsForCategory(categoryIndex).Count()
    if count = 0 then return 0
    idx = channelIndex - 1
    if idx < 0 then idx = count - 1
    return idx
end function

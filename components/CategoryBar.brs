' CategoryBar — horizontal tab bar for live TV categories

sub init()
    m.tabGroup    = m.top.findNode("tabGroup")
    m.categories  = GetCategoryList()
    m.tabWidth    = 1920 / m.categories.Count()   ' equal-width tabs
    m.tabHeight   = 72

    buildTabs()
    m.top.observeField("selectedIndex", "onSelectedIndexChanged")
    highlightTab(0)
end sub

' Build one Rectangle+Label per category
sub buildTabs()
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
        lbl.height     = m.tabHeight
        lbl.horizAlign = "center"
        lbl.vertAlign  = "center"
        lbl.color      = "0xAAAAAAFF"
        lbl.font       = CreateObject("roSGNode", "Font")
        lbl.font.uri   = "pkg:/components/Fonts/Roboto-Regular.ttf"
        lbl.font.size  = 28

        tabNode.appendChild(bg)
        tabNode.appendChild(lbl)
        m.tabGroup.appendChild(tabNode)
    end for
end sub

sub onSelectedIndexChanged()
    highlightTab(m.top.selectedIndex)
end sub

sub highlightTab(activeIdx as Integer)
    for i = 0 to m.categories.Count() - 1
        bg  = m.top.findNode("tabBg_"  + i.ToStr())
        lbl = m.top.findNode("tabLbl_" + i.ToStr())
        if i = activeIdx
            bg.color   = "0x1A3A6EFF"   ' highlighted tab background
            lbl.color  = "0xFFFFFFFF"   ' white text
            lbl.font.size = 32          ' slightly larger
        else
            bg.color   = "0x0B1526FF"   ' default background
            lbl.color  = "0xAAAAAAFF"   ' grey text
            lbl.font.size = 28
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
        ' Signal parent to return focus to player
        m.top.categoryConfirmed = not m.top.categoryConfirmed
        return true
    end if

    return false
end function

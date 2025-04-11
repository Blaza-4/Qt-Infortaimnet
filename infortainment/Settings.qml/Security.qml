import QtQuick
import QtQuick.Controls
Rectangle{
    height:parent.height
    width:parent.width
    color:theme.paneleft
    LabelButton{
        id:btn1
        anchors{
            margins:20
            left:parent.left
            top:parent.top
        }
        labeltext:"Wiper service"
    }
    Rectangle{
        id:headlight
        height:parent.height /4
        width:parent.width * .45
        color:Theme.Istheme ? "#1c1d21" : "#dfdfdf"
        border.width:2
        border.color:"grey"
        radius:30
        anchors{
            left:parent.left
            top:btn1.bottom
            margins:20
        }
        Image {
            id: headlightreseticon
            source: Theme.Istheme ? "../Assets/Settings/headlights-small.svg" :  "../Assets/Settings/light/headlights-small_dark.svg"
            anchors{
                horizontalCenter:parent.horizontalCenter
                verticalCenter:parent.verticalCenter
            }
            fillMode:Image.PreserveAspectFit
        }
        Label{
            text:"RESET HEADLIGHTS"
            anchors{
                horizontalCenter:parent.horizontalCenter
                top:headlightreseticon.bottom
                margins:10
            }
            color:theme.fontcolor
        }
    }
    Rectangle{
        id:headlightreset
        height:parent.height /4
        width:parent.width * .45
        color:Theme.Istheme ? "#1c1d21" : "#dfdfdf"
        border.width:2
        border.color:"grey"
        radius:30
        anchors{
            left:parent.left
            top:headlight.bottom
            margins:20
        }
        Image {
            id: headlightadjust
            source: Theme.Istheme ? "../Assets/Settings/headlights-small.svg" :  "../Assets/Settings/light/headlights-small_dark.svg"
            anchors{
                horizontalCenter:parent.horizontalCenter
                verticalCenter:parent.verticalCenter
            }
            fillMode:Image.PreserveAspectFit
        }
        Label{
            text:"ADJUST HEADLIGHTS"
            anchors{
                horizontalCenter:parent.horizontalCenter
                top:headlightadjust.bottom
                margins:10
            }
            color:theme.fontcolor
        }
    }
}

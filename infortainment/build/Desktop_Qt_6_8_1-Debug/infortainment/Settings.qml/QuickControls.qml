import QtQuick
import QtQuick.Controls

Rectangle{
    height:parent.height
    width:parent.width
    color:theme.paneleft
    Image{
        id:icon1
        source:Theme.Istheme ? "../Assets/Settings/display.svg" :  "../Assets/Settings/light/display.svg"
         anchors{
            top:parent.top
            left:parent.left
            margins:10

        }
        fillMode:Image.PreserveAspectFit
    }
    Label{
        text:"Display Brightness"
        font.bold:Font.Normal

        font.family: "Montserrat"
        font.pixelSize:15
        anchors{
            left:icon1.right
            verticalCenter:icon1.verticalCenter
             margins:10
        }
        color:theme.fontcolor

    }

    TSlider{
        id:slider1
        anchors{
            horizontalCenter:parent.horizontalCenter
            top:icon1.bottom
             margins:10
        }
    }
    Image {
        id: headlights
        source: Theme.Istheme ? "../Assets/Settings/headlights-small.svg" :  "../Assets/Settings/light/headlights-small_dark.svg"
        anchors{
            top:slider1.bottom
            left:parent.left
            margins:10

        }
        fillMode:Image.PreserveAspectFit
    }
    Label{
        id:label1
        text:"Exterior"
        font.pixelSize:20
        anchors{
            left:headlights.right
            verticalCenter:headlights.verticalCenter
            margins:10
        }
        color:theme.fontcolor
    }
    Label{
        id:label2
        text:"Headlights"
        font.bold:Font.Normal
        color:theme.fontcolor
        font.family: "Montserrat"
        font.pixelSize:15
        anchors{
            top:label1.bottom
            left:parent.left
            margins:10
        }
    }
    LabelSelector{
        id:selector1
        anchors{
            top:label2.bottom
            left:parent.left
            margins:10
        }
        labelList:["Off","On","Auto"]
    }
    LabelButton{
        id:btn1
        anchors{
            top:selector1.bottom
            left:parent.left
            margins:10
        }
        labeltext:"Front fog"
    }
    Image {
        id: settings
        source: Theme.Istheme ? "../Assets/Settings/adjustments.svg" : "../Assets/Settings/light/adjustments_dark.svg"
        anchors{
            top:btn1.bottom
            left:parent.left
            margins:10

        }
        fillMode:Image.PreserveAspectFit
    }
    Label{
        id:label3
        text:"Adjustments"
        font.bold:Font.Normal
       color:theme.fontcolor
        font.family: "Montserrat"
        font.pixelSize:15
        anchors{
            verticalCenter:settings.verticalCenter
            left:settings.right
            margins:10
        }
    }
    Rectangle{
        id:mirrors
        height:parent.height /4
        width:parent.width * .45
        color:Theme.Istheme ? "#1c1d21" : "#dfdfdf"
        border.width:2
        border.color:"grey"
        radius:30
        anchors{
            left:parent.left
            top:label3.bottom
            margins:20
        }
        Image {
            id: headlightreseticon
            source: Theme.Istheme ? "../Assets/Settings/mirror.svg" :  "../Assets/Settings/light/mirror_dark.svg"
            anchors{
                horizontalCenter:parent.horizontalCenter
                verticalCenter:parent.verticalCenter
            }
            fillMode:Image.PreserveAspectFit
        }
        Label{
            text:"MIRRORS"
            anchors{
                horizontalCenter:parent.horizontalCenter
                top:headlightreseticon.bottom
                margins:10
            }
            color:theme.fontcolor
        }
    }
    Rectangle{
        id:mirrors1
        height:parent.height /4
        width:parent.width * .45
        color:Theme.Istheme ? "#1c1d21" : "#dfdfdf"
        border.width:2
        border.color:"grey"
        radius:30
        anchors{
            left:mirrors.right
            top:label3.bottom
            margins:20
        }
        Image {
            id: steering
            source: Theme.Istheme ? "../Assets/Settings/steering-wheel-small.svg" :  "../Assets/Settings/light/steering-wheel-small.svg"
            anchors{
                horizontalCenter:parent.horizontalCenter
                verticalCenter:parent.verticalCenter
            }
            fillMode:Image.PreserveAspectFit
        }
        Label{
            text:"STEERING"
            anchors{
                horizontalCenter:parent.horizontalCenter
                top:steering.bottom
                margins:10
            }
            color:theme.fontcolor
        }
    }
}

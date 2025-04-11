import QtQuick
import QtQuick.Controls

Rectangle{
    height:parent.height
    width:parent.width
    color:theme.paneleft
    Label{
        id:labeel
        text:"Visibility"
        font.bold:Font.Normal
        color:theme.fontcolor
        font.family: "Montserrat"
        font.pixelSize:20
        anchors{
            top:parent.top
            left:parent.left
             margins:10
        }
    }
    Image{
        id:labeel1
        source:Theme.Istheme ? "../Assets/Settings/display.svg" :  "../Assets/Settings/light/display.svg"
        anchors{
            top:labeel.bottom
            left:parent.left
             margins:10

        }
        fillMode:Image.PreserveAspectFit
    }
    Label{
        text:"Display Brightness"
        font.bold:Font.Normal
        color:theme.fontcolor
        font.family: "Montserrat"
        font.pixelSize:15
        anchors{
            left:labeel1.right
            verticalCenter:labeel1.verticalCenter
             margins:10
        }

    }

    TSlider{
        id:slider1
        anchors{
            horizontalCenter:parent.horizontalCenter
            top:labeel1.bottom
             margins:10
        }
    }
    Label{
        id:warningsign
        text:"Reduce Brightness To Conserve More Energy"
        opacity:.6
        color:theme.fontcolor
        anchors{
            left:parent.left
            top:slider1.bottom
            margins:10
        }
    }

    Label{
        id:labeel2
        text:"Display Mode"
        font.bold:Font.Normal
        color:theme.fontcolor//"white"
        font.family: "Montserrat"
        font.pixelSize:15
        anchors{
            top:warningsign.bottom
            left:parent.left
            margins:10
        }
    }
    LabelSelector{
        anchors{
            top:labeel2.bottom
            horizontalCenter:parent.horizontalCenter
            margins:10
        }

        labelList:["Day","Night","AUto"]
    }
    Label{
        id:labeel3
        text:"Units & Formats"
        font.pixelSize:25
        anchors{
            verticalCenter:parent.verticalCenter
            left:parent.left
            margins:10
        }
        color:theme.fontcolor
    }
    Label{
        id:labeel4
        text:"Distance"
        font.bold:Font.Normal
        color:theme.fontcolor//"white"
        font.family: "Montserrat"
        font.pixelSize:15
        anchors{
            top:labeel3.bottom
            left:parent.left
            margins:10
        }
    }
    LabelSelector{
        id:distance
        anchors{
            top:labeel4.bottom
            left:parent.left
            margins:10
        }
        labelList:["Kmp","Mph","Auto"]
    }
    Label{
        id:labeel5
        text:"Temperature"
        font.bold:Font.Normal
        color:theme.fontcolor//"white"
        font.family: "Montserrat"
        font.pixelSize:15
        anchors{
            top:distance.bottom
            left:parent.left
            margins:10
        }
    }
    LabelSelector{
        anchors{
            top:labeel5.bottom
            left:parent.left
            margins:10
        }
        labelList:["℃","℉","Auto"]
    }
}

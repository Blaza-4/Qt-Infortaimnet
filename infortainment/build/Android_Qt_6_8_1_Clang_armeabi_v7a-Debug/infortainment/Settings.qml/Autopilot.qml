import QtQuick
import QtQuick.Controls

Rectangle{
    height:parent.height
    width:parent.width
    color:theme.paneleft

    Label{
        id:label1
        text:"Cruise follow distance"
        font.bold:Font.Normal
        color:theme.fontcolor//"white"
        font.family: "Montserrat"
        font.pixelSize:20
        anchors{
            left:parent.left
            top:parent.top
            margins:10
        }
    }
    Image {
        id: reduce
        source:Theme.Istheme ? "../Assets/Settings/reduce.png" :  "../Assets/Settings/light/reduce.png"
        fillMode:Image.PreserveAspectFit
        anchors{
            left:parent.left
            top:label1.bottom
            bottom:btn1.top
            margins:10
        }
    }
    Label{
        id:label2
        text:"10"
        font.bold:Font.Normal
        color:theme.fontcolor//"white"
        font.family: "Montserrat"
        font.pixelSize:55
        anchors{
            left:reduce.right
            verticalCenter:reduce.verticalCenter
            margins:10
        }
    }
    Image {
        id:increase
        source: Theme.Istheme ? "../Assets/Settings/increase.png" :  "../Assets/Settings/light/increase.png"
        fillMode:Image.PreserveAspectFit
        anchors{
            left:label2.right
            top:label1.bottom
            bottom:btn1.top
            margins:10
        }
    }
    ToggleButton{
        id:btn1
        anchors{
            left:parent.left
            top:label2.bottom
            margins:10
            topMargin:20
        }
    }
    Label{
        id:label3
        text:"AutoSteer(beta)"
        color:theme.fontcolor//"white"
        anchors{
            left:btn1.right
            verticalCenter:btn1.verticalCenter
            margins:10
        }
    }

    ToggleButton{
        id:btn2
        anchors{
            left:parent.left
            top:btn1.bottom
            margins:10
        }
    }
    Label{
        id:label4
        text:"Auto Lane Change"
        color:theme.fontcolor//"white"
        anchors{
            left:btn2.right
            verticalCenter:btn2.verticalCenter
            margins:10
        }
    }
}

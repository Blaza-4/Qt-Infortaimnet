import QtQuick
import QtQuick.Controls
Rectangle{
    height:parent.height
    width:parent.width
    color:theme.paneleft
    Label{
        id:label1
        text:"Steering Mode"
        font.bold:Font.Normal
        color:theme.fontcolor
        font.family: "Montserrat"
        font.pixelSize:15
        anchors{
            top:parent.top
            left:parent.left
            margins:10
        }
    }
    LabelSelector{
        id:selector1
        anchors{
            top:label1.bottom
            horizontalCenter:parent.horizontalCenter
            left:parent.left
            margins:10
        }
        labelList:["Comfort","Standard","Sport"]
    }
    Label{
        id:label2
        text:"Regenarative breaking"
        font.bold:Font.Normal
        color:theme.fontcolor
        font.family: "Montserrat"
        font.pixelSize:15
        anchors{
            top:selector1.bottom
            left:parent.left
            margins:10
        }
    }
    LabelSelector{
        id:selector2
        anchors{
            top:label2.bottom
            horizontalCenter:parent.horizontalCenter
            left:parent.left
            margins:10
        }
        labelList:["Standard","Low","Auto"]
    }
    Label{
        id:label3
        text:"Standard increases milage and improves battery life"
        opacity:.6
        anchors{
            left:parent.left
            top:selector2.bottom
            margins:10
        }
        color:theme.fontcolor
    }
    Label{
        id:label4
        text:"Traction Control"
        font.bold:Font.Normal

        font.family: "Montserrat"
        font.pixelSize:15
        anchors{
            top:label3.bottom
            left:parent.left
            margins:10
        }
        color:theme.fontcolor
    }
    LabelButton{
        id:btn1
        labeltext:"Slip Start"
        anchors{
            top:label4.bottom
            left:parent.left
            margins:10
        }
    }
    Label{
        id:label5
        text:"Used to help when the vehicle is stuck in sand,snow or mud "
        opacity:.6
        anchors{
            left:parent.left
            top:btn1.bottom
            margins:10
        }
        color:theme.fontcolor
    }
    LabelButton{
        id:btn2
        labeltext:"Creep"
        anchors{
            top:label5.bottom
            left:parent.left
            margins:10
        }
    }
    Label{
        id:label6
        text:"Slowly move forward when brake pedal is relased"
        opacity:.6
        anchors{
            left:parent.left
            top:btn2.bottom
            margins:10
        }
        color:theme.fontcolor
    }
}

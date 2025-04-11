import QtQuick
import QtQuick.Controls

Rectangle{
    height:parent.height
    width:parent.width
    color:theme.paneleft

    Label{
        id:space
        text:" "
        font.pixelSize:50
        anchors{
            left:parent.left
            top:parent.top
        }
        color:theme.fontcolor
    }
    ToggleButton{
        id:btn1
        anchors{
            left:parent.left
            top:space.bottom
            margins:10
        }
    }
    Label{
        text:"Walk Up Unlock"
        anchors{
            leftMargin:10
            left:btn1.right
            verticalCenter:btn1.verticalCenter
        }
        font.pixelSize:20
        font.bold:font.bold
        font.family:"Montserrat"
        color:theme.fontcolor
    }

    ToggleButton{
        id:btn2
        anchors{
            top:btn1.bottom
            left:parent.left
            margins:10
        }
    }
    Label{
        text:"Walk Away Unlock"
        anchors{
            leftMargin:10
            left:btn1.right
            verticalCenter:btn2.verticalCenter
        }
        font.pixelSize:20
        font.bold:font.bold
        font.family:"Montserrat"
        color:theme.fontcolor
    }
    ToggleButton{
        id:btn3
        anchors{
            top:btn2.bottom
            left:parent.left
            margins:10
        }
    }
    Label{
        text:"Child Protection Lock"
        anchors{
            leftMargin:10
            left:btn1.right
            verticalCenter:btn3.verticalCenter
        }
        font.pixelSize:20
        font.bold:font.bold
        font.family:"Montserrat"
        color:theme.fontcolor
    }
    ToggleButton{
        id:btn4
        anchors{
            top:btn3.bottom
            left:parent.left
            margins:10
        }
    }
    Label{
        text:"Unlock On Park"
        anchors{
            leftMargin:10
            left:btn1.right
            verticalCenter:btn4.verticalCenter
        }
        font.pixelSize:20
        font.bold:font.bold
        font.family:"Montserrat"
        color:theme.fontcolor
    }


}

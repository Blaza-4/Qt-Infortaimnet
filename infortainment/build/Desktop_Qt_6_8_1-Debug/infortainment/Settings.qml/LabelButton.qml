import QtQuick
import QtQuick.Controls

Button{
    property string labeltext: ""
    id:control
    height:parent.height * .09
    width:parent.width * .3
    background:Rectangle{
        height:control.height
        width:control.width
        radius:width/2
        color:theme.buttoncolor
        border.width:2
        border.color:"grey"
    }
    contentItem:Row {
        width: parent.width
        height:parent.height
        Label{
            text:control.labeltext
            font.family:"Montserrat"
            anchors{
                centerIn:parent
            }
            color:theme.fontcolor
        }
    }
}

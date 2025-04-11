import QtQuick 2.15
import QtQuick.Controls


Button {
    id: control
    property color backgroundColor: "transparent"
    property string setIcon: ""
    property string setLabel: ""
    property color textColor: "#FFFFFF"
    property real borderWidth: 0
    property color borderColor: "transparent"
    width:parent.width * .9
    height:parent.height *.05
    property string textlabel
    anchors{
        horizontalCenter:parent.horizontalCenter
    }
    background:Rectangle{
        width:parent.width
        height:parent.height
        color:"transparent"
    }



    contentItem: Row {
        width: parent.width
        height:parent.height
        spacing:20


        Image {
            id: iconImage
            source: control.setIcon
            anchors{
               left:parent.left
               verticalCenter:parent.verticalCenter
            }
            fillMode:Image.PreserveAspectFit
        }
        Label{
            text:control.setLabel
            color:control.textColor
            font.family: "Montserrat"
            anchors{
                left:iconImage.right
                verticalCenter:parent.verticalCenter
            }
        }
    }

}

import QtQuick
import QtQuick.Controls
Rectangle{
    height:parent.height
    width:parent.width
   color:theme.paneleft
    Label{
        id:label1
        text:"Parking brake"
        font.bold:Font.Normal
        color:theme.fontcolor
        font.family: "Montserrat"
        font.pixelSize:20
        anchors{
            left:parent.left
            top:parent.top
            margins:10
        }
    }
    Rectangle{
        id:brakeicon
        height:parent.height /4
        width:parent.width * .45
        color:Theme.Istheme ? "#1c1d21" : "#dfdfdf"
        border.width:2
        border.color:"grey"
        radius:30
        anchors{
            left:parent.left
            top:label1.bottom
            margins:10
        }
        Image{
            id:parking
            source:Theme.Istheme ? "../Assets/Settings/Parking_Brake_Icon_dark.svg" : "../Assets/Settings/light/Parking_Brake_Icon.svg"
            anchors{
                left:parent.left
                top:parent.top
                bottom:parent.bottom
                margins:20
            }
            fillMode:Image.PreserveAspectFit
        }
        Label{
            id:label2
            text:"Parking Brake"
            font.pixelSize:20
            anchors{
                margins:10
                verticalCenter:parking.verticalCenter
               left:parking.right
            }
            color:theme.fontcolor
        }
        Label{
            id:label3
            text:"BRAKE IS OFF"
            font.pixelSize:20
            anchors{
                margins:10
                horizontalCenter:parent.horizontalCenter
                bottom:parent.bottom
            }
            color:theme.fontcolor
        }
    }
    Label {
        text: "Selecting park on the \nsteering column will aslo \nset the parking brake"
        font.pixelSize: 20
        opacity:.6
        font.family: "Montserrat"
        color:theme.fontcolor
        anchors{
            left:brakeicon.right
            right:parent.right
            verticalCenter:brakeicon.verticalCenter
            margins:10
        }
    }
    Label{
        id:label4
        text:"Vehicle power"
        font.bold:Font.Normal
        color:theme.fontcolor
        font.family: "Montserrat"
        font.pixelSize:20
        anchors{
            left:parent.left
            top:brakeicon.bottom
            margins:10
        }
    }
    LabelButton{
        id:btn1
        anchors{
            left:parent.left
            top:label4.bottom
            margins:10
        }
        labeltext:"Power Off"
    }
    Label{
        id:label5
        text:"Pressing the brake pedal will turn on the car again"
        opacity:.6
       color:theme.fontcolor
        font.pixelSize:20
        anchors{
            left:parent.left
            top:btn1.bottom
            margins:10
        }
    }

}

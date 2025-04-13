import QtQuick

Item {
    property var ctl
    Rectangle{
        id:decrement
        anchors{
            left:parent.left
            top:parent.top
            bottom:parent.bottom
        }
        width:height/2
        color:"transparent"
        Text{
            id:decrementText
            anchors.centerIn:parent
            text :"-"
            color:"red"

            MouseArea{
                anchors{
                    fill:parent
                }
                onClicked:{
                    ctl.volumeAdjust(-1)
                }
            }
        }
    }
    Image{
        id:volIcon
        anchors{
            left:decrement.right
            leftMargin:15
            verticalCenter :parent.verticalCenter
        }
        source:{
            if(ctl.audiolevel <= 0){
                return "Assets/mute.png"
            } else if(ctl.audiolevel == 1){
                return "Assets/vollow.png"
            }else if(ctl.audiolevel == 3){
                return "Assets/volmid.png"
            }
        }

        fillMode:Image.PreserveAspectFit
    }
    Rectangle{
        id:increment
        anchors{
            left:volIcon.right
            top:parent.top
            bottom:parent.bottom
            leftMargin:15
        }
        width:height/2
        color:"transparent"
        Text{
            id:incrementText
            anchors.centerIn:parent
            text :"+"
            color:"green"

            MouseArea{
                anchors{
                    fill:parent
                }
                onClicked:{
                    ctl.volumeAdjust(1)

                }
            }
        }
    }
}

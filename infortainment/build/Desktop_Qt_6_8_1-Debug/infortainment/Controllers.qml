import QtQuick
Rectangle{
   property var temp
    Rectangle{

        id:decrement
        anchors{
            left:parent.left
            top:parent.top
            bottom:parent.bottom
        }
        width:height/2
        color:"black"
        Text{
            id:decrementText
            anchors.centerIn:parent
            text :"-"
            color:"white"
        }
        MouseArea{
            anchors{
                fill:parent
            }
            onClicked:{
                temp.tempAdjust(-1)
            }
        }
}
    Text{
        id:tempText
        anchors{
            left:decrement.right
            leftMargin:15
            verticalCenter :parent.verticalCenter
        }
        color:"white"
        font.pixelSize:24
        text:temp.carTemp
        //text:"100"
    }
    Rectangle{
        id:increment
        anchors{
            left:tempText.right
            top:parent.top
            bottom:parent.bottom
            leftMargin:15
        }
        width:height/2
        color:"black"
        Text{
            id:incrementText
            anchors.centerIn:parent
            text :"+"
            color:"white"
        }
        MouseArea{
            anchors{
                fill:parent
            }
            onClicked:{
                temp.tempAdjust(+1)
            }
        }
    }
}

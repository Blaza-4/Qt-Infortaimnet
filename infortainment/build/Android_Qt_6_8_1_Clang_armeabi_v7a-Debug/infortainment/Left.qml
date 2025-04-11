import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle{
    id:leftSide
    color:theme.bgcolor     //Theme.Istheme ? "#FFFFFF" : "#0E0E0E"
    anchors{
        bottom : botttomSide.top
        left : parent.left
        right : rightSide.left
        top : parent.top
    }

    Rectangle{
        id :top
        color:theme.bgcolor  //Theme.Istheme ? "#FFFFFF" : "#0E0E0E"
        anchors{
            top:parent.top
            left:parent.left
            right:parent.right
        }
        height:parent.height * .2

        RowLayout{
            id:gears
            anchors{
                left:parent.left
                bottom:parent.bottom
                bottomMargin:5
                leftMargin:10
            }
            width:parent.width * .2
            spacing:10
            Label{
                text:"P"
                opacity:.3
                color:theme.fontcolor    //Theme.Istheme ? "black" : "#FFFFFF"
            }

            Label{
                text:"N"
                opacity:.3
                color:theme.fontcolor//Theme.Istheme ? "black" : "#FFFFFF"
            }

            Label{
                text:"R"
                opacity:.3
                color:theme.fontcolor//Theme.Istheme ? "black" : "#FFFFFF"
            }

            Label{
                text:"D"
                opacity:1
                color:theme.fontcolor//Theme.Istheme ? "black" : "#FFFFFF"
            }
        }
        Label{
            id:speed
            text:"100"
            color:theme.fontcolor//Theme.Istheme ? "black" : "#FFFFFF"
            font.pixelSize:50
            font.family: "Montserrat"
            font.bold: Font.Normal
            anchors{
                horizontalCenter:parent.horizontalCenter
                verticalCenter:parent.verticalCenter
                verticalCenterOffset:-20
            }
        }
        Label{
            id:kmph
            text:"km/h"
            color:theme.fontcolor//Theme.Istheme ? "black" : "#FFFFFF"
            opacity: 0.4
            font.pixelSize: 20
            font.family: "Montserrat"
            font.bold: Font.Normal
            anchors{
                horizontalCenter:parent.horizontalCenter
                verticalCenter:parent.verticalCenter
                verticalCenterOffset:20

            }
        }
        Label{
            id:battlabel
            text:"90%"
            color:theme.fontcolor//Theme.Istheme ? "black" : "#FFFFFF"
            anchors{
                left:kmph.right
                bottom:parent.bottom
                bottomMargin:5
                leftMargin:30
            }
        }
        Image{
            id:batt
            source:"Assets/battery.svg"
            fillMode:Image.PreserveAspectFit
            anchors{
                left:battlabel.right
                right:parent.right
                bottom:parent.bottom
                bottomMargin:5
            }
        }
        Rectangle{
            id:alerts
            color:"transparent"
            width:parent.width
            height:parent.height *.3
            anchors{
                top:parent.top
                topMargin:10
            }
            Image{
                id:tire
                source:"Assets/tirepressure.svg"
                fillMode:Image.PreserveAspectFit
                anchors{
                    left:parent.left
                    top:parent.top
                    bottom:parent.bottom
                }
            }
            Image{
                id:headlight
                source:"Assets/headlights.svg"
                fillMode:Image.PreserveAspectFit
                anchors{
                    top:parent.top
                    bottom:parent.bottom
                    right:parent.right
                }
            }

        }



        Rectangle{
            id:border
            color:Theme.IsTheme ? "#4d4d4d":"#b0b0b0"
            anchors{
                left:parent.left
                right:parent.right
                bottom:parent.bottom
            }
            height:2
        }
    }
    Rectangle{
        id:list
        color:"transparent"
        anchors{
            left:parent.left
            right:parent.right
            top:top.bottom
        }
        height:parent.height * .1
        Image{
            id:steering
            anchors{
                left:parent.left
                top:parent.top
                bottom:parent.bottom
                margins:10
            }
            fillMode:Image.PreserveAspectFit
            source:"Assets/steeringwheel"
        }Image {
            id: speedlimit
            source: "Assets/SpeedLimit.svg"
            anchors{
                margins:10
                top:parent.top
                bottom:parent.bottom
                right:parent.right
            }
            fillMode:Image.PreserveAspectFit
        }
        Image{
            id:cruise
            source:"Assets/CruiseSetting.svg"
            anchors{
                horizontalCenter:parent.horizontalCenter
                top:parent.top
                bottom:parent.bottom
                margins:5
            }
            fillMode:Image.PreserveAspectFit
        }
        Image{
            id:plus
            source:Theme.Istheme ? "Assets/custom/dark/plus.svg" : "Assets/custom/light/plus.svg"
            anchors{
                top:parent.top
                bottom:parent.bottom
                left:cruise.right
            }
            fillMode:Image.PreserveAspectFit
        }
        Image{
            id:minus
            source:Theme.Istheme ? "Assets/custom/dark/minus.svg" : "Assets/custom/light/minus.svg"
            anchors{
                top:parent.top
                bottom:parent.bottom
                right:cruise.left
            }
            fillMode:Image.PreserveAspectFit
        }
    }
    SwipeView{
        anchors{
            right:parent.right
            left:parent.left
            top:list.bottom
            bottom:bottom.top
        }
        clip: true
        currentIndex: 0

        Page {
            id: firstPage
            padding: 0
            background: Rectangle{
                anchors.fill: parent
                color: "transparent"
            }
            Image {
                id: car
                source: "Assets/cars/Vector9.svg"
                anchors{
                    right:parent.right
                    left:parent.left
                    top:parent.top
                    bottom:parent.bottom
                }
                fillMode:Image.PreserveAspectFit
            }
            Image {
                id: caricon
                source:Theme.Istheme ? "Assets/Cars/Model3-1.svg" : "Assets/Cars/Model3-2.png"
                anchors{
                    right:parent.right
                    left:parent.left
                    top:parent.top
                    bottom:parent.bottom
                    centerIn:parent
                }
                fillMode:Image.PreserveAspectFit
            }
        }
        Page {
            id: firstPage1
            padding: 0
            background: Rectangle{
                anchors.fill: parent
                color: "transparent"
            }
            Image {
                id: car1
                source: "Assets/Cars/model3_new.svg"
                anchors{
                    right:parent.right
                    left:parent.left
                    top:parent.top
                    bottom:parent.bottom
                }
                fillMode:Image.PreserveAspectFit
            }
            IconButton{
                id:hatch
                height:40
                width:60
                setIcon:"Assets/trunk.png"
                anchors{
                    bottom:parent.bottom
                    right:parent.right
                    rightMargin:20
                }
            }
            IconButton{
                id:charger
                height:40
                width:60
                setIcon:"Assets/power_dark.png"
                anchors{
                    verticalCenter:parent.verticalCenter
                    left:parent.left
                }
            }
        }
    }


    Rectangle{
        id :bottom
        color:theme.bgcolor
            anchors{
            bottom:parent.bottom
            left:parent.left
            right:parent.right
        }
        height:parent.height * .06

        Image{
            id:charge
            source:Theme.Istheme ? "Assets/custom/dark/scale.svg" : "Assets/custom/light/scale.svg"
            anchors{
                bottom:parent.bottom
                top:parent.top
                horizontalCenter:parent.horizontalCenter
            }
            fillMode:Image.PreserveAspectFit
        }
        Image{
            id:camera
            source:"Assets/camera.svg"
            anchors{
                bottom:parent.bottom
                top:parent.top
                left:parent.left
                right:charge.left
            }
            fillMode:Image.PreserveAspectFit
        }
        Image{
            id:mic
            source:"Assets/microphone.svg"
            anchors{
                bottom:parent.bottom
                top:parent.top
                left:charge.left
                right:parent.right
            }
            fillMode:Image.PreserveAspectFit
        }

    }

}

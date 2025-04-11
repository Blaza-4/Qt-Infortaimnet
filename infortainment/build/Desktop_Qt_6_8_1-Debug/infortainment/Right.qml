import QtQuick
import QtLocation 6.8
import QtPositioning 6.8
import QtQuick.Controls

Rectangle{
    signal togglevVsibility()
    property bool mVisibility : true
    property bool wVisibility: true
    property bool cVisibility: true
    id : rightSide
    color:"green"
    anchors{
        bottom:botttomSide.top
        right:parent.right
        top:parent.top
    }
    width : parent.width * 0.70


    Plugin{
        id: mapPlugin
        name: "osm"
    }

    Map{
        id: map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(8.52,76.93) // tvm
        zoomLevel:system.zoom
        property geoCoordinate startCentroid
        activeMapType:Theme.Istheme ? map.supportedMapTypes[map.supportedMapTypes.length-3] : map.supportedMapTypes[map.supportedMapTypes.length-1]
        PinchHandler {
            id: pinch
            target: null
            onActiveChanged: if (active) {
                                 map.startCentroid = map.toCoordinate(pinch.centroid.position, false)
                             }
            onScaleChanged: (delta) => {
                                map.zoomLevel += Math.log2(delta)
                                map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
                            }
            onRotationChanged: (delta) => {
                                   map.bearing -= delta
                                   map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
                               }
            grabPermissions: PointerHandler.TakeOverForbidden
        }
        WheelHandler {
            id: wheel
            // workaround for QTBUG-87646 / QTBUG-112394 / QTBUG-112432:
            // Magic Mouse pretends to be a trackpad but doesn't work with PinchHandler
            // and we don't yet distinguish mice and trackpads on Wayland either
            acceptedDevices: Qt.platform.pluginName === "cocoa" || Qt.platform.pluginName === "wayland"
                             ? PointerDevice.Mouse | PointerDevice.TouchPad
                             : PointerDevice.Mouse
            rotationScale: 1/120
            property: "zoomLevel"
        }
        DragHandler {
            id: drag
            target: null
            onTranslationChanged: (delta) => map.pan(-delta.x, -delta.y)
        }
        Shortcut {
            enabled: map.zoomLevel < map.maximumZoomLevel
            sequence: StandardKey.ZoomIn
            onActivated: map.zoomLevel = Math.round(map.zoomLevel + 1)
        }
        Shortcut {
            enabled: map.zoomLevel > map.minimumZoomLevel
            sequence: StandardKey.ZoomOut
            onActivated: map.zoomLevel = Math.round(map.zoomLevel - 1)
        }
        MapQuickItem {
            id: marker
            coordinate: map.center
            anchorPoint.x: image.width/4
            anchorPoint.y: image.height

            sourceItem: Image {
                fillMode:Image.PreserveAspectFit
                id: image
                source: "Assets/nav/marker.svg"
                height: 40
                width: height
            }
        }
    }
    Image {
        id: lockImage
        source:handle.lock ? "Assets/lock.png" : "Assets/un.png"
        anchors{
            left:parent.left
            top:parent.top
            margins:5
        }
        fillMode: Image.PreserveAspectFit
        MouseArea{
            id : mouse
            anchors.fill : parent
            onClicked:{
                handle.setLock(!handle.lock)
            }
        }

    }
    Text{
        id:timeText
        text: handle.currentTime
        font.pixelSize:15
        color:theme.fontcolor
        anchors{
            left:lockImage.right
            top:parent.top
            margins:5
            topMargin:10
            leftMargin:10
        }
    }
    Image{
        id:profile
        source:"Assets/person.png"
        anchors{
            left : timeText.right
            top:parent.top
            leftMargin:30
            margins:5
        }
        fillMode:Image.PreserveAspectFit
    }
    Text{
        id:profileText
        text:handle.profile
        font.pixelSize:15
        color:theme.fontcolor
        anchors{
            left:profile.right
            top:parent.top
            margins:5
            leftMargin:10
            topMargin:10
        }
    }
    Image{
        fillMode:Image.PreserveAspectFit
        source:"Assets/nav/compass.svg"
        anchors{
            top:parent.top
            right:parent.right
        }

    }
    Image{
        fillMode:Image.PreserveAspectFit
        source:"Assets/nav/map-zoom.svg"
        anchors{
            verticalCenter:parent.verticalCenter
            right:parent.right
        }
        MouseArea{
            width:parent.width
            height:parent.height /2
            anchors{
                top:parent.top
            }
            onClicked:{
                system.zoomAdjust(+1)
                console.log(system.zoom)
            }
        }
        MouseArea{
            width:parent.width
            height:parent.height /2
            anchors{
                bottom:parent.bottom
            }
            onClicked:{
                system.zoomAdjust(-1)
                console.log("backbackback")
            }
        }
    }
    Image {
        id: searchicon
        source: "Assets/nav/navigate-button.svg"
        anchors{
            left:lockImage.left
            top:lockImage.bottom
            topMargin:5
        }
        height:parent.height * 1/12
        fillMode:Image.PreserveAspectFit
    }
    // Rectangle{
    //     id:serachBox
    //     radius:5
    //     anchors{
    //         left:lockImage.left
    //         top:lockImage.bottom
    //         topMargin:5
    //     }
    //     color:"transparent"
    //     width:parent.width * 1/3
    //     height:parent.height * 1/12
    //     Image{
    //         id:serachIconedf2ef
    //         source:"Assets/search.png"
    //         anchors{
    //             left:parent.left
    //             verticalCenter:parent.verticalCenter
    //             leftMargin:10
    //         }
    //         fillMode:Image.PreserveAspectFit
    //         height:parent.height *.5
    //     }
    //     Text{
    //         id:searchText
    //         visible:searchInput.text == ""
    //         text:"Navigate"
    //         color:"black"
    //         anchors{
    //             left:serachIcon.right
    //             verticalCenter:parent.verticalCenter
    //         }
    //         height:parent.height *.5
    //     }
    //     TextInput{
    //         id:searchInput
    //         clip:true
    //         anchors{
    //             left:serachIcon.left
    //             right:parent.right
    //             top:parent.top
    //             bottom:parent.bottom
    //             leftMargin:20
    //         }
    //         verticalAlignment:Text.AlignVCenter
    //     }
    // }
    Rectangle{
        id:showWheather
        color:"#90CAF9"
        width:parent.width / 2.5
        height:parent.height /4
        anchors{
            right:parent.right
            bottom:parent.bottom
            margins:10
        }
        radius:20
        visible:rightSide.wVisibility
        Image{
            source:"Assets/clouds.png"
            anchors{
                fill:parent
            }
        }

        Label{
            id:tempLabel
            font.bold: Font.Normal
            text:wheather.Condition
            font.pixelSize:15
            color:theme.fontcolor
            anchors{
                top:parent.top
                left:parent.left
                leftMargin:10
                topMargin:10
            }
        }
        Label{
            id:condition
            text:wheather.Temperature + "℃"
            font.family: "Montserrat"
            font.bold: Font.Normal
            font.pixelSize:30
            color:theme.fontcolor
            clip:true
            anchors{
                top:tempLabel.bottom
                left:parent.left
                // right:wheather_image.left
                leftMargin:10
            }
        }
        Label{
            id:feelslike
            font.family: "Montserrat"
            font.bold: Font.Normal
            text:"Feels like: "+wheather.Feelslike+ "℃"
            font.pixelSize:15
            color:theme.fontcolor
            anchors{
                top:condition.bottom
                left:parent.left
                bottom:place.top  //
                leftMargin:10
            }
        }

        Label{
            id:place
            font.family: "Montserrat"
            font.bold: Font.Normal
            text:wheather.Location
            font.pixelSize:15
            color:theme.fontcolor
            anchors{
                leftMargin:10
                bottomMargin:5
                left:parent.left
                bottom:parent.bottom

            }
        }

        Image{
            id:wheather_image
            anchors{
                left:condition.right
                right:parent.right
                top:parent.top
                bottom:place.top
            }
            source:"Assets/weather/" + wheather.Icon
            fillMode:Image.PreserveAspectFit
        }
        ParallelAnimation{
            id:parallelAnim
            NumberAnimation {
                id:yTransitionAnimation
                target: wheather_image
                properties: "y"
                from:50
                to:10
                duration: 1500
            }

            NumberAnimation {
                id:opacityAnimation
                target: wheather_image
                properties: "opacity"
                from:0.0
                to:1.0
                duration: 1500
            }
        }
        Timer {
            interval: 2000
            running: true
            repeat: true
            onTriggered: parallelAnim.restart()
        }

    }
    Rectangle{

        id:showMusic
        visible:rightSide.mVisibility
        color:theme.bgcolor
        width:rightSide.wVisibility ? parent.width / 1.8 : parent.width * .97
        height:parent.height /4
        anchors{
            left:parent.left
            bottom:parent.bottom
            margins:10
        }
        radius:2

        Image {
            id: track
            source: "Assets/music/heatwaves.jpg"
            anchors{
                left:parent.left
                top:parent.top
                bottom:parent.bottom
            }
            fillMode:Image.PreserveAspectFit
        }
        Image {
            id: like
            source: "Assets/music/heart.png"
            fillMode:Image.PreserveAspectFit
            anchors{
                left:track.right
                bottom:data.top
                top:parent.top
            }
        }
        Image {
            id: vol
            source: "Assets/music/volume.png"
            fillMode:Image.PreserveAspectFit
            anchors{
                left:like.right
                bottom:data.top
                top:parent.top
            }
        }

        Column{
            id:data
            spacing:2
            anchors{
                left:track.right
                verticalCenter:parent.verticalCenter
            }
            Label{
                text:"Heat Waves"
                font.family: "Montserrat"
                font.bold: Font.Normal
                font.pixelSize:20
                color:theme.fontcolor
            }
            Label{
                text:"Glass animals"
                font.family: "Montserrat"
                font.bold: Font.Normal
                color:theme.fontcolor
            }
            ProgressBar {
                id: control
                value: 0.5
                padding: 2
                width:parent.width

                background: Rectangle{
                    color: "#e6e6e6"
                    radius: 3
                }

                contentItem: Item {
                    implicitWidth: parent.width
                    implicitHeight: 4

                    // Progress indicator for determinate state.
                    Rectangle {
                        width: control.visualPosition * parent.width
                        height: parent.height
                        radius: 2
                        color: "#17a81a"
                        visible: !control.indeterminate
                    }

                    // Scrolling animation for indeterminate state.
                    Item {
                        anchors.fill: parent
                        visible: control.indeterminate
                        clip: true

                        Row {
                            spacing: 20
                            Repeater {
                                model: control.width / 40 + 1

                                Rectangle {
                                    color: "#17a81a"
                                    width: 20
                                    height: control.height
                                }
                            }
                            XAnimator on x {
                                from: 0
                                to: -40
                                loops: Animation.Infinite
                                running: control.indeterminate
                            }
                        }
                    }
                }
            }
        }
        Row{
            spacing:10
            anchors{
                right:parent.right
                left:data.right

                verticalCenter:parent.verticalCenter
            }
            Image {
                id: prev
                source: "Assets/music/track_backward.svg"
                fillMode:Image.PreserveAspectFit
            }
            Image {
                id: prev1
                source: "Assets/music/playpause.svg"
                fillMode:Image.PreserveAspectFit
            }
            Image {
                id: prev2
                source: "Assets/music/track.svg"
                fillMode:Image.PreserveAspectFit
            }
        }
    }

    Car{
        visible:rightSide.cVisibility
    }
}




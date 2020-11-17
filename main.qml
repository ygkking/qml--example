import QtQuick 2.12
import QtQuick.Window 2.12
import "./"
Window {
    visible: true
    width: 1280
    height: 720
    title: qsTr("Hello World")
    id:root
    property variant easings:["Linear","InQuad","OutQuad","InOutQuad","InCubic","InSine","InCirc","InElastic","InBack","InBounce"]

    ExpandingList{
        x:0
        y:0
    }

//    GradviewCom{
//        x:0
//        y:0
//    }
//    ListView11{
//        x:0
//        y:0
//    }
//    Repeater11{
//        x:0
//        y:0
//    }
//    Redandgreen{
//        width: 400
//        height: 400
//        x:0
//        y:0
//    }
//    Ballmove{

//    }
//    SequentialAnimation11{
//        x:0
//        y:0
//    }
//    ParallelAnimation11{

//    }
//    ColorSquare{
//        id:rootcolor
//        width: 600
//        height: 340
//        //property variant easings: ["Linear","InQuad","OutQuad","InOutQuad","InCubic","InSine","InCirc","InElastic","InBack","InBounce"]
//        Grid{
//            id:container
//            anchors.top: parent.top
//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.margins: 16
//            height: 200
//            columns: 5
//            spacing: 16
//            Repeater{
//                model:easings
//                ClickableImageV3{
//                    framed: true
//                    text:modelData
//                    source: "qrc:/curves/"+ modelData +".png"
//                    onClicked: {
//                         anim.easing.type = modelData
//                        anim.restart();
//                    }
//                }
//            }

//        }

//        GreenSquare{
//            id:square
//            x:40
//            y:260
//        }
//        NumberAnimation{
//            id:anim
//            target: square
//            from:40
//            to:rootcolor.width-40-square.width
//            properties: "x"
//            duration: 2000
//        }
//    }

//    ClickableImageV3{
//        id:rocket1
//        x:40
//        y:200
//        source: "qrc:/assets/rocket2.png"
//        text: "animotion on property"
//        NumberAnimation on y{
//            //from:200
//            to:40
//            duration: 4000
//            loops: Animation.Infinite
//            running:mouse1.pressed
//        }
//        MouseArea{
//            anchors.fill: parent
//            id:mouse1
//        }
//    }
//    ClickableImageV3{
//        id:rocket2
//        x:152
//        y:200
//        source: "qrc:/assets/rocket2.png"
//        text: "behavior on property"
//        Behavior on y{
//            NumberAnimation {
//                duration: 4000
//                loops: Animation.Infinite
//            }
//        }
////        onClicked: {y=40}
//        onClicked: {
//            y = Math.random()*(root.height-40)+40
//        }
//    }
//    ClickableImageV3{
//        id:rocket3
//        x:264
//        y:200
//        source: "qrc:/assets/rocket2.png"
//        NumberAnimation{
//            id:num1
//            target: rocket3
//            properties: "y"
//            from:root.height
//            to:40
//            duration: 4000
//        }
//        onClicked: num1.start()
//        text: "standalone animation"
//    }


//    Rectangle{
//        id:test
//        x:20
//        y:20
//        width: 100
//        height: 100
//        rotation: 90
//        gradient: Gradient{
//            GradientStop{position: 0.0;color: "red"}
//            GradientStop{position: 0.5;color: "white"}
//            GradientStop{position: 1.0;color: "black"}
//        }
//        border.color: "lightgreen"
//        border.width: 3
//        scale: 0.5
//        opacity: 1
//        visible: false
//    }


//    Text {
//        id: text1
//        text: qsTr("你好呀~~~~~~~~~My jingjing")
//        x:50
//        y:50
//        width: 50
//        height: 20
////        elide: Text.ElideRight
//        style: Text.Sunken
//        styleColor: '#FF4444'
//        verticalAlignment:Text.AlignTop
//        wrapMode: Text.WordWrap
//    }

////    Image {
////        id: image1
////        source: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1697026919,608556088&fm=26&gp=0.jpg"
////        x:100
////        y:100
////        clip: true
////        width: 200
////        height: 200
////    }
//    AnimatedImage {
//        id:ani1
//        source: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1697026919,608556088&fm=26&gp=0.jpg"
//        x:100
//        y:100
////        clip: true
//        width: 200
//        height: 200
//    }

//    Rectangle{
//        width: 50
//        height: 50
//        x:0
//        y:0
////        color: "#ea7025"
//        border.color: Qt.lighter("green")
//    }
//    Column{
//        id:no1col
//        width: 200
//        height: 200
//        x:0
//        y:0
//        spacing: 50
//        ColorSquare{
//            color: "green"
//        }
//        ColorSquare{
//            color: "red"
//        }
//        ColorSquare{
//            color: "yellow"
//        }

//    }
//    Row{
//        id:row1
//        width: 200
//        height: 200
//        x:0
//        y:0
//        spacing: 20
//        ColorSquare{
//            color: "green"
//        }
//        ColorSquare{
//            color: "red"
//        }
//        ColorSquare{
//            color: "yellow"
//        }
//        layoutDirection: Qt.RightToLeft
//    }

//    Grid{
//        id:grid
//        rows: 3
//        columns: 3
//        spacing: 5
//        ColorSquare{
//            color: "#FF0000"
//        }
//        ColorSquare{
//            color: "#DD00EE"
//        }
//        ColorSquare{
//            color: "#AA0000"
//        }
//        ColorSquare{
//            color: "#FF0000"
//        }
//        ColorSquare{
//            color: "#DD00EE"
//        }
//        ColorSquare{
//            color: "#AA0000"
//        }
//        ColorSquare{
//            color: "#FF0000"
//        }
//        ColorSquare{
//            color: "#DD00EE"
//        }
//        ColorSquare{
//            color: "#AA0000"
//        }
//        layoutDirection: Qt.RightToLeft
//    }

//    Flow{
//        id:flow1
//        width: 100
//        height: 200
//        x:0
//        y:0
//        ColorSquare{ }
//        ColorSquare{ }
//        ColorSquare{ }
//        ColorSquare{ }
//        ColorSquare{ }

//    }

//    Rectangle{
//        id:root
//        width:150
//        height:200
//        property variant colorArray:["#00bde3","#67c111","#ea7025"]
//        Grid{
//            rows: 3

//            anchors.fill:parent
//            anchors.margins:8
//            spacing:4
//            Repeater{
//                model:9
//                Rectangle{
//                    width:56;height:56
//                    property int colorIndex:Math.floor(Math.random()*3)
//                    color:root.colorArray[colorIndex]
//                    border.color:Qt.lighter(color)
//                    Text{
//                        anchors.centerIn:parent
//                        color:"#f0f0f0"
//                        text:"Cell"+index
//                    }
//                }
//            }
//        }
//    }
//    Rectangle{
//        x:0
//        y:0
//        width: 200
//        height: 200
//        color: "linen"


//        TextInput{
//            id:input1
//            x:8
//            y:8
//            width: 96
//            height: 20
//            focus: true
//            text:"input11111"
//            KeyNavigation.tab:input2
//        }

//        TextInput{
//            id:input2
//            x:8
//            y:36
//            width: 96
//            height: 20
//            focus: true
//            text:"input22222"
//            KeyNavigation.tab:input1
//        }
//    }
//    Image{
//        anchors.fill: parent

//        source:"assets/background.png"
//        Image{
//            id:imag11
////            x:40;y:80
//            x:0
//            y:root.height-200
////            anchors.left: parent.left
////            anchors.bottom: parent.bottom
////            anchors.leftMargin: 50
//            source:"assets/rocket.png"
//            rotation: 45
////            NumberAnimation on x{
////                from:0
////                to:root.width
////                duration: 1000*10
////                loops: Animation.Infinite
////            }
////            NumberAnimation on y{
////                from: root.height
////                to:0
////                duration: 1000*10
////                loops: Animation.Infinite
////            }
////            OpacityAnimator on opacity {
////                from: 1
////                to: 0
////                duration: 1000*10
////                loops: Animation.Infinite
////            }
////            ScaleAnimator on scale {
////                from: 1
////                to:0
////                duration: 1000*10
////                loops: Animation.Infinite
////            }

//            Behavior on x{
//                NumberAnimation{
//                    duration: 1000*10
//                }
//            }

////            NumberAnimation on x{
////                from:0
////                to:root.width
////                duration:4000*8
////                loops:Animation.Infinite
////            }
////            RotationAnimation on rotation {
////                loops: Animation.Infinite
////                from: 0
////                to: 360
////                duration:4000
////            }
////            RotationAnimation on rotation
////            {
////                to:360
////                //duration:4000
////                loops:Animation.Infinite
////            }
//        }
//        }


}

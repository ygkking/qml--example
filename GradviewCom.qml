import QtQuick 2.5

Rectangle{
    width: 480
    height: 300
    gradient: Gradient{
        GradientStop{position: 0.0;color: "#dbddde"}
        GradientStop{position: 1.0;color: "#5fc9f8"}
    }

    ListModel{
        id:modelxx

        ListElement { number: 0 }
        ListElement { number: 1 }
        ListElement { number: 2 }
        ListElement { number: 3 }
        ListElement { number: 4 }
        ListElement { number: 5 }
        ListElement { number: 6 }
        ListElement { number: 7 }
        ListElement { number: 8 }
        ListElement { number: 9 }
    }

    Rectangle{
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 20

        height: 40

        color: "#53d769"

        border.color: Qt.lighter(color,1.1)

        Text {
            anchors.centerIn: parent
            text: "Add item"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                modelxx.append({"number": ++parent.count})
            }
        }

        property int count: 9
    }

    GridView{
        anchors.fill: parent
        anchors.margins: 20
        anchors.bottomMargin: 80
        clip: true

        model: modelxx

        cellHeight: 45
        cellWidth: 45

        delegate: numberdelegate
    }

    Component{
        id:numberdelegate
        Rectangle{
            id:wraper
            width: 40
            height: 40
            gradient: Gradient{
                GradientStop{position: 0.0;color: "#f8306a"}
                GradientStop{position: 1.0;color: "#fb5b40"}
            }

            Text {
                anchors.fill: parent
                text: number
                font.pixelSize: 10
            }


            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("index==" + index)
                    if(index !== -1)
                      modelxx.remove(index)
                }
            }

            GridView.onRemove: SequentialAnimation{
                PropertyAction { target: wraper; property: "GridView.delayRemove"; value: true }
                NumberAnimation { target: wraper; property: "scale"; to: 0; duration: 250; easing.type: Easing.InOutQuad }
                PropertyAction { target: wraper; property: "GridView.delayRemove"; value: false }
                //                PropertyAnimation{target: wraper;property: "GridView.delayRemove";value:true}
//                NumberAnimation{target: wraper;property: "scale";to:0;duration: 250;easing.type: Easing.InOutQuad}
//                PropertyAnimation{target: wraper;property: "GridView.delayRemove";value:false}
            }


            GridView.onAdd: SequentialAnimation {
                NumberAnimation { target: wraper; property: "scale"; from: 0; to: 1; duration: 250; easing.type: Easing.InOutQuad }
            }
        }
    }

}

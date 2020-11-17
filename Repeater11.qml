import QtQuick 2.0


Rectangle{

    ListModel{
       id:xxxxx
       ListElement{name:"adffdfdgdg";colorxx:"gray"}
       ListElement{name:"fdjfjidhgkj";colorxx:"yellow"}
       ListElement{name:"dgjkghkfh";colorxx:"blue"}
    }
    Column{
        spacing: 5

        Repeater{
            model:xxxxx
            Rectangle{
                width: 100
                height: 100
                radius: 5
                color: "lightgreen"
                Text {
                    anchors.centerIn: parent
                    text: name
                }
                Rectangle{
                    anchors.left:parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
                    width: 16
                    height: 16
                    radius: 8
                    border.color: "black"
                    border.width: 3
                    color: colorxx
                }
            }
        }
    }
//    Rectangle{
//        x:110
//        y:0
//        color: "black"
//        width: 50
//        height: 50
//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                xxxxx.insert(0,{})
//            }
//        }
//    }
}

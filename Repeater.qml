import QtQuick 2.0

Column{
    spacing: 5

    Repeater{
        model:5
        Rectangle{
            width: 100
            height: 100
            radius: 5
            color: "lightgreen"
            Text {
                anchors.centerIn: parent
                text: index
            }
        }
    }
}

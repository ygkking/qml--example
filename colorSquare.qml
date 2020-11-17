import QtQuick 2.0

Rectangle{
    id:root
    width: 48
    height: 48
    property alias color: root.color
    color: "#3c3c3c"
//    border.color: Qt.lighter(color)
    border.color: Qt.darker(color)
}

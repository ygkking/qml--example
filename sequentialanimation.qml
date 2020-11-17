    import QtQuick 2.0

    BrightSquare{
        id:root
        width: 300
        height: 200
        property int duration: 3000

        ClickableImageV3{
            id:rocket
            x:20
            y:120
            source: "qrc:/assets/rocket2.png"
            onClicked: {}
        }

        SequentialAnimation{
            id:anim
            NumberAnimation{
                target: rocket
                properties: "y"
                to:20
                duration: root.duration*0.6
            }

            NumberAnimation{
                target: rocket
                properties: "x"
                to:160
                duration: root.duration*0.4
            }
        }
    }

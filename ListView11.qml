//import QtQuick 2.5

//Background11{
//    width: 240
//    height: 300

//    //color: "white"

//    ListView{
//        anchors.fill: parent
//        anchors.margins: 20
//        currentIndex: 0

//        clip: true
//        model:100

//       delegate:numdelete

//        spacing:5
////        boundsBehavior: Flickable.
//        //orientation: ListView.Horizontal
//        highlight: highcomp
//        highlightFollowsCurrentItem: false
//        focus: true
//    }

//    Component{
//        id:highcomp
//        Item {
//            width: ListView.view.width
//            height: ListView.view.currentItem.height

//            y: ListView.view.currentItem.y

//            Behavior on y{
//                SequentialAnimation{
//                    PropertyAnimation{target: highlightcom;property: "opacity";to:0;duration: 200}
//                    NumberAnimation{duration: 1}
//                    PropertyAnimation{target: highlightcom;property: "opacity";to:1;duration: 200}
//                }
//            }
//            Greenbox {
//                id:highlightcom
//                anchors.fill: parent
//                //            width: ListView.view.width
//            }

//        }

//        //        Rectangle{
////            width: ListView.view.width
////            color: "lightgreen"
////        }
//    }

//    Component{
//        id:numdelete
//        Item{
//            width: 40
//            height: 40
//           // color: "lightgreen"

//            Text {
//               // id: tex11
//                anchors.centerIn: parent
//                text: index
//                font.pixelSize: 10
//            }
//        }
//    }
//}
/*
 * Copyright (c) 2013, Juergen Bocklage-Ryannel, Johan Thelin
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the editors nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

import QtQuick 2.5
//import "../common"

Background11 {
    width: 720
    height: 80

    ListView {
        id: view
        anchors.fill: parent
        anchors.margins: 20
        currentIndex: 0

        clip: true

        model: 100

        delegate: numberDelegate
        spacing: 4

        highlight: highlightComponent
        highlightFollowsCurrentItem: false
        focus: true
        orientation: ListView.Horizontal
    }
// M1>>
    Component {
        id: highlightComponent

        Item {
//            width: ListView.view.width
//            height: ListView.view.currentItem.height
            width: 40
            height: 40
            x: ListView.view.currentItem.x

            Behavior on x {
                SequentialAnimation {
                    PropertyAnimation { target: highlightRectangle; property: "opacity"; to: 0; duration: 200 }
                    NumberAnimation { duration: 1 }
                    PropertyAnimation { target: highlightRectangle; property: "opacity"; to: 1; duration: 200 }
                }
            }

            Greenbox {
                id: highlightRectangle
                anchors.fill: parent
            }
        }
    }
// <<M1

    Component{
        id:highlightrec
        Rectangle{
            width: ListView.view.width
            height:ListView.view.currentItem.height
            color: "#f34b08"
            radius: 5
            border.width: 1
            border.color: "#60f50a"
        }
    }

    Component {
        id: numberDelegate

        Item {
            id:ccccc
            width: 40
            height: 40

            Text {
                anchors.centerIn: parent
                font.pixelSize: 14
                text: index
            }
            MouseArea{
                anchors.fill: parent
                onClicked: ccccc.ListView.view.currentIndex = index
            }
        }
    }
}

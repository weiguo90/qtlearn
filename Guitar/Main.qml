import QtQuick

Window {
    minimumWidth: 260
    minimumHeight:  380
    maximumWidth: minimumWidth
    maximumHeight: minimumHeight
    visible: true
    title: qsTr("Guitar Pedal")

    Image {
        id: pedelBackground
        source: "assets/Guitar-Pedal-Background.png"
        anchors.fill: parent
    }
    Item{
        anchors.fill: parent

        anchors.leftMargin: 15
        anchors.rightMargin: 15
        anchors.topMargin: 17
        anchors.bottomMargin: 15

        component ScrewImage:Image{
            source: "assets/Screw.png"
        }


        ScrewImage {

            anchors.top: parent.top
            anchors.left: parent.left
        }
        ScrewImage {
            source: "assets/Screw.png"
            anchors.top: parent.top
            anchors.right: parent.right
        }
        ScrewImage {
            source: "assets/Screw.png"
            anchors.bottom: parent.bottom
            anchors.left: parent.left
        }
        ScrewImage {
            source: "assets/Screw.png"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
        }
    }
    Column{
        spacing: 5
        anchors.top: parent.verticalCenter
        anchors.topMargin: 16
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle{
            width: 200
            height: 2
            color: "#191919"
        }

        Text{
            text: qsTr("TIME BLENDER")
            font.pixelSize: 18
            anchors.horizontalCenter: parent.horizontalCenter

        }
        Rectangle{
            width: 200
            height: 2
            color: "#191919"
        }
    }



}

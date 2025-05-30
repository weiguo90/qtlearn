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
        Image {
            source: "assets/Screw.png"
            anchors.top: parent.top
            anchors.left: parent.left
        }
        Image {
            source: "assets/Screw.png"
            anchors.top: parent.top
            anchors.right: parent.right
        }
        Image {
            source: "assets/Screw.png"
            anchors.bottom: parent.bottom
            anchors.left: parent.left
        }
        Image {
            source: "assets/Screw.png"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
        }
    }


}

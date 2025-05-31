import QtQuick

Window {
    minimumWidth: 260
    minimumHeight:  380
    maximumWidth: minimumWidth
    maximumHeight: minimumHeight
    visible: true
    title: qsTr("Guitar Pedal")

    FontLoader{
        id:russoFontLoader
        source:"fonts/RussoOne-Regular.ttf"
    }


    FontLoader{
        id:prismaFontLoader
        source:"fonts/Prisma.ttf"
    }

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


        component DeviceText: Text {
            color: "#191919"
            font.family: russoFontLoader.font.family
            font.weight: russoFontLoader.font.weight
            font.pixelSize: 9
        }

        component InfoText: Column{
            id: infoLabel
            spacing: 5

            property alias text:label.text
            property alias font: label.font
            property int lineWidth:200
            property int lineHeight:2
            property color linecolor:"#191919"


            Rectangle{
                width: infoLabel.lineWidth
                height: infoLabel.lineHeight
                color: infoLabel.linecolor
            }

            DeviceText{
                id: label
                anchors.horizontalCenter: parent.horizontalCenter

            }
            Rectangle{
                width: infoLabel.lineWidth
                height: infoLabel.lineHeight
                color: infoLabel.linecolor
            }
        }

        InfoText {
            text: qsTr("TIME BLENDER")
            anchors.top: parent.verticalCenter
            anchors.topMargin: 16
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10
            font.family: prismaFontLoader.font.family
            font.pixelSize: 18
        }

        InfoText {
            text: qsTr("IN")
            anchors.top: parent.top
            anchors.topMargin: 60
            anchors.right: parent.right
            lineWidth: 30
            lineHeight: 2
        }

        InfoText {
            anchors.top: parent.top
            anchors.topMargin: 60
            anchors.left: parent.left
            text: qsTr("OUT")
            lineWidth: 30
            lineHeight: 2
        }
    }
}

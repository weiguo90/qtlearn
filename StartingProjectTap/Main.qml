import QtQuick
import QtQuick.Controls 2.15

Window {

    // TODO: change the size to ensure it forms the standard business card ratio of approx 1:1.586
    // HINT: you may wish to use a binding

    width: 640
    height: 480

    visible: true
    title: qsTr("Business Card g")

    component ContactInfo: QtObject {

        // This is a ContactInfo object which provides the properties to fill in.
        // You can create as many instances of this as you like with different property values.

        // show these properties all the time:
        property string name
        property url photo

        // Basic Info properties:
        property string occupation
        property string company

        // Detailed Info properties:
        property string address
        property string country
        property string phone
        property string email
        property url webSite
    }

    ContactInfo {
        id: myContactInfo

        // this is one example instance of a ContactInfo inline Component
        // showing how the properties are populated.

        name: "Your Name"
        photo: Qt.resolvedUrl("IDPhoto.png")
        occupation: "QML Enthusiast"
        company: "Indie Soft"
        address: "Candy Cane Lane"
        country: "North Pole"
        phone: "+01 2345 567 890"
        email: "email@server.com"
        webSite: Qt.url("https://www.qt.io")
    }

    Image {
        id: photo
        x: 442
        y: 90
        width: 100
        height: 100
        source: "IDPhoto.png"
        fillMode: Image.PreserveAspectFit
    }

    Rectangle {
        id: recSim
        x: 53
        y: 163
        width: 349
        height: 187
        color: "#ffffff"
        visible:! detailbutton.checked

        Text {
            id: occu
            x: 13
            y: 34
            text:myContactInfo.occupation
            font.pixelSize: 25
        }

        Text {
            id: company
            x: 13
            y: 77
            text: myContactInfo.company
            font.pixelSize: 25
        }
    }

    Rectangle {
        id: recDetail
        x: 53
        y: 163
        width: 349
        height: 187
        color: "#ffffff"
        visible: detailbutton.checked

        Text {
            id: addr
            x: 13
            y: 30
            text:myContactInfo.address
            font.pixelSize: 25
        }

        Text {
            id: country
            x: 13
            y: 60
            text: myContactInfo.country
            font.pixelSize: 25
        }
        Text {
            id: phone
            x: 13
            y: 90
            text: myContactInfo.phone
            font.pixelSize: 25
        }
        Text {
            id: email
            x: 13
            y: 120
            text: myContactInfo.email
            font.pixelSize: 25
        }
        Text {
            id: webSite
            x: 13
            y: 150
            text: myContactInfo.webSite
            font.pixelSize: 25
        }
    }

    Text {
        id: name
        x: 60
        y: 90
        text: myContactInfo.name
        font.pixelSize: 30
        font.styleName: "Bold"
    }

    Rectangle {
        id: detailbutton

        // This button will be checkable so it
        // needs a checked boolean property
        property bool checked: false
        property bool checkable: true

        // it shall also have a signal clicked()
                      // which can be emitted
                      signal clicked

        x: 297
        y: 391
        width: 198
        height: 71
        anchors {
            left:parent.left
            bottom:parent.bottom
        }
        radius: height/5

        // The color and border color can be modified
        // when checked or while being pressed
        color: detailbutton.checked || tapHandler.pressed ? "white" : "black"
        border.color: detailbutton.checked || tapHandler.pressed ? "black" : "white"
        anchors.leftMargin: 74
        anchors.bottomMargin: 18

        Text {
            id: buttontext
            anchors.centerIn: parent
            text: qsTr("DetailTap")
            font.pixelSize: 30
            font.styleName: "Bold"
            // not that the checked property is
            // correctly qualified within this TextItem
            color: detailbutton.checked || tapHandler.pressed ? "black" : "white"
        }
        TapHandler{
            id:tapHandler
            onTapped: {
                // toggle the checked property of
                // the button
                if(detailbutton.checkable) {
                    detailbutton.checked = !detailbutton.checked
                }
                // emit the button's clicked signal
                // in case someone handles it
                detailbutton.clicked()
            }
        }
    }

    Button {
        id: button
        x: 139
        y: 368
        text: qsTr("Detail")
        checkable: true
        font.pointSize: 20
    }




    /* Your solution should contain these key features:

        - A Text element for each of the ContactInfo properties.
        - The name and photo image should be shown all the time.
        - These should be grouped into two categories "Basic Info" and "Details".
        - Create a button using a MouseArea or TapHandler that can be used to
          toggle between showing the two categories of information.
        - Use a larger font size for the name
    */
}

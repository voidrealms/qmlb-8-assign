import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3


Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property var firstname: "First"
    property var lastname: "Last"
    property var gender: 0
    property var age: 18

    Popup {
        id: popup
        anchors.centerIn: parent
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        Grid {
            anchors.fill: parent
            spacing: 10
            columns: 2

            Label {text: "First Name:"}
            Label {text: firstname}

            Label {text: "Last Name:"}
            Label {text: lastname}

            Label {text: "Gender:"}
            Label {text: gender}


            Label {text: "Age:"}
            Label {text: age}
        }
    }


    Column {
        id: column
        width: 278
        height: 265
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Grid {
            id: grid
            width: parent.width
            height: 225
            columns: 2
            spacing: 10

            Label {
                id: label
                text: qsTr("First Name")
            }

            TextField {
                id: txtFirstName
                text: firstname
            }

            Label {
                id: label1
                text: qsTr("Last Name")
            }

            TextField {
                id: txtLastName
                text: lastname
            }

            Label {
                id: label2
                text: qsTr("Gender")
            }

            ComboBox {
                id: cmbGender
                model: ["Male", "Female"]
                currentIndex: gender
            }

            Label {
                id: label3
                text: qsTr("Age")
            }

            SpinBox {
                id: sbAge
                value: age
            }

        }

        Button {
            id: button
            text: qsTr("Click Me")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                firstname = txtFirstName.text
                lastname = txtLastName.text
                gender = cmbGender.currentIndex
                age = sbAge.value
                popup.open()
            }
        }
    }



}


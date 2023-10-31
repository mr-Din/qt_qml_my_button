import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts 1.15

Window {
    visible: true
    width: 400
    height: 400

    Rectangle {
        anchors.fill: parent

        MyButton {
            id: customButton
            width: 100
            height: 40
            iconSource: "D:/TestsWork/Scientific-medical-company/Test3/noimage.png"

            isChecked: true
            isCheckable: true
            isUncheckable: true

            onClicked: {
                console.log("Button clicked")
            }
        }

        anchors.centerIn: parent
    }
}

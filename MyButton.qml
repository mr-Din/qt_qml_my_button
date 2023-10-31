import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    property bool isChecked: false
    property bool isCheckable: true
    property bool isUncheckable: false

    property string iconSource: ""

    background: Rectangle {
        radius: 4
        color: isUncheckable ? (isChecked ? "green" : (hovered ? "blue" : "red")) : (isChecked ? "green" : (hovered ? "blue" : "red"))
        border.color: "transparent"
    }

    contentItem: Image {
        source: iconSource
        anchors.centerIn: parent
    }

    onClicked: {
        if (isCheckable) {
            isChecked = !isChecked;
        }
    }
}

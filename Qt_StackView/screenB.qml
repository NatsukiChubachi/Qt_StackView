import QtQuick
import QtQuick.Controls

Rectangle {
    id: _root

    color: "#ffffff"

    Rectangle {
        id: _rect

        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 50

        width: 100
        height: 100

        color: "#0000ff"
    }

    Label {
        id: _label

        anchors.left: _rect.right
        anchors.leftMargin: 20
        anchors.verticalCenter: _rect.verticalCenter

        font.pixelSize: 24
        color: "#000000"

        text: "画面B"
    }
}

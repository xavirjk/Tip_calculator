import QtQuick 2.12
import QtQuick.Window 2.12
import components 1.0
import assets 1.0
Window {
    visible: true
    width: 900
    height: 650
    title: qsTr("Calculate Tip")

    Rectangle {
        id: mainDiv
        color: Style.colourBackground
        width: parent.width
        height:parent.height
        anchors.centerIn: parent
        ToggleMenu {
            id: leftPanel
            height:parent.height
        }
        HeaderDiv {
            id: header
            anchors {
                left:leftPanel.right
                right: parent.right
            }
        }
        Form {
            anchors {
                top:header.bottom
                left: leftPanel.right
                right: parent.right
            }
        }
    }
}

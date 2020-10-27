import QtQuick 2.1
import QtQuick.Layouts 1.12
import assets 1.0

Item {
    height: Style.heightHeaderDiv

    Rectangle {
        id: headerDiv
        height: Style.heightHeaderDiv
        anchors {
            left: parent.left
            right: parent.right
        }
        Text {
            id: tipText
            text: tipCalculator.ui_message
            font.pixelSize: Style.pixelSizeHeaderDiv
            anchors.centerIn: parent
        }
        Rectangle {
            id: borderBottom
            height: 2
            color: "brown"
            radius: 10
            width: tipText.width
            anchors {
                top: tipText.bottom
                left: tipText.left
            }
        }

    }
}

import QtQuick 2.0
import assets 1.0
    Rectangle {
        anchors.margins: 10
        //id: button
        border.width: 1
        color: Style.colourBackground
        radius: 2
        Text {
            id: textArea
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                margins: 10
            }
            text: "calculate"
            font.pixelSize: Style.pixelSizeHeaderDiv
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
        }

        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onEntered: button.state = "hover"
            onExited: button.state= ""
            onClicked: if(tipCalculator.ui_canExecute){
                           renderDiv.visible = true
                           results.text = (Math.round(tipCalculator.ui_total * 100)/100).toFixed(2)
                           tipArea.text = "TIP AMOUNT"
                           if(tipCalculator.ui_number > 1){
                               quantifier.text = "each"
                           }
                       }
        }
        states: [
            State {
                name: "hover"
                PropertyChanges {
                    target: button
                    color: Qt.darker("green")
                }
            }

        ]
    }


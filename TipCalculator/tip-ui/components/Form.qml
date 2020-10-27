import QtQuick 2.0
import QtQuick.Controls 2.12
import assets 1.0
Item {
    Column{
        anchors {
            fill: parent
        }

        spacing: 2
        Rectangle {
            height: Style.heightFormInput
            width: parent.width
            Column {
                anchors{
                    fill: parent
                    leftMargin: 10
                }

                spacing: 2
                Text {
                    height: 50
                    id: textArea
                    text: "How much was your Bill?"
                    font.pixelSize: Style.pixelSizeHeaderDiv
                }
                Rectangle {
                    id: background
                    width: 100
                    height: 40
                    radius: 5
                    border {
                        width: 1
                    }
                    TextInput {
                        id: textValue
                        focus: true
                        anchors {
                            fill: parent
                        }
                        font.pixelSize: Style.pixelSizeHeaderDiv
                        verticalAlignment: Qt.AlignVCenter
                    }
                }
            }
            Binding {
                target: tipCalculator
                property: "ui_cost"
                value: Number(textValue.text)
            }
        }
        Rectangle {
            height: Style.heightFormInput
            width: parent.width
            Column {
                anchors{
                    fill: parent
                    leftMargin: 10
                }
                spacing: 2
                Text {
                    height: 50
                    id: serviceArea
                    text: "How Was the Service?"
                    font.pixelSize: Style.pixelSizeHeaderDiv
                }
                Rectangle {
                    id: serviceAreaBackground
                    width: 100
                    height: 40
                    radius: 5
                    border {
                        width: 1
                    }
                    ComboBox {
                        textRole: "text"
                        valueRole: "value"
                        model: [
                            {text: "30% Outstanding", value: 30},
                            {text: "20% Good", value: 20},
                            {text: "15% It was Okay", value: 15},
                            {text: "10% Bad", value : 10},
                            {text: "5% Terrible", value: 5}
                        ]
                        onActivated: tipCalculator.ui_rating = currentValue;
                    }

                }
            }
        }
        Rectangle {
            height: Style.heightFormInput
            width: parent.width
            Column {
                anchors{
                    fill: parent
                    leftMargin: 10
                }
                spacing: 2
                Text {
                    height: 50
                    id: groupArea
                    text: "How many people are sharing the bill"
                    font.pixelSize: Style.pixelSizeHeaderDiv
                }
                Rectangle {
                    id: groupAreaBackground
                    width: 100
                    height: 40
                    radius: 5
                    border {
                        width: 1
                    }
                    TextInput {
                        id: groupValue
                        focus: true
                        anchors {
                            fill: parent
                        }
                        font.pixelSize: Style.pixelSizeHeaderDiv
                        verticalAlignment: Qt.AlignVCenter
                    }
                }
            }
            Binding {
                target: tipCalculator
                property: "ui_number"
                value: Number(groupValue.text)
            }
        }
        Rectangle {
            height: 120
            width: parent.width
            Row {
                spacing: 150
                anchors{
                    fill: parent
                    margins: 20
                }
                FormButton {
                    id: button
                    height: 50
                    width: 150
                }
                Rectangle {
                    id: renderDiv
                    visible: false
                    height: parent.height
                    width: 200
                    color: "red"
                    Text {
                        id: tipArea
                        text: ""
                        font.pixelSize: 18
                        anchors {
                            left: parent.left
                        }
                    }
                    Text {
                        id: results
                        text: tipCalculator.ui_total
                        font.pixelSize: 30
                        anchors {
                            left: parent.left
                            verticalCenter: parent.verticalCenter
                            leftMargin: 20
                        }
                    }
                    Text {
                        id: quantifier
                        text:""
                        font.pixelSize: 12
                        anchors {
                            top: results.bottom
                            left: results.left
                            //topMargin: 30
                        }
                    }
                }
            }
        }
    }
}

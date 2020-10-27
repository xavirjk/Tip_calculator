import QtQuick 2.0

Item {
    property bool isCollapsed: true

    signal toggleButtonClicked();
    onToggleButtonClicked: isCollapsed = !isCollapsed
    width: isCollapsed ? 80 : 50
    Rectangle {
        id: background
        height: parent.height
        anchors.fill: parent
        color: "green"
        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onEntered: background.state = "hover"
            onExited: background.state = ""
            onClicked: toggleButtonClicked();
        }
        states: [
            State {
                name: "hover"
                PropertyChanges{
                    target: background
                    color: Qt.darker("green");
                }
            }
        ]
    }
}

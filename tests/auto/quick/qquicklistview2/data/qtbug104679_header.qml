import QtQuick

Rectangle {
    width: 640
    height: 480

    ListView {
        anchors.fill: parent
        spacing: 5

        headerPositioning: ListView.PullBackHeader
        header: Rectangle { width: ListView.view.width; color: "red"; implicitHeight: 46 }

        model: 3 // crashed if less items than a full list page
        delegate: Rectangle {
            width: ListView.view.width
            height: 50
            color: index % 2 ? "black" : "gray"
        }
    }
}

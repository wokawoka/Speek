import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import im.ricochet 1.0

TextArea {
    id: searchBox
    font.pointSize: styleHelper.pointSize * 0.9
    frameVisible: true
    backgroundVisible: false
    textMargin: 5
    wrapMode: TextEdit.Wrap
    textFormat: TextEdit.PlainText
    flickableItem.interactive: false

    property string placeholderText: qsTr("Search")

    Text {
        x: 10
        //y: 6
        anchors.verticalCenter: searchBox.verticalCenter
        font.pointSize: styleHelper.pointSize * 0.9
        text: searchBox.placeholderText
        color: styleHelper.searchBoxText
        visible: !searchBox.text
    }

    font.family: "Noto"
    textColor: palette.text

    style: TextAreaStyle {
        padding.top: 3
        padding.left:5
            frame: Rectangle {
                radius: 8
                color: palette.window
        }
    }
}

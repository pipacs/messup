import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    tools: commonTools
    id: mainPage

    Column {
        id: col
        spacing: 15
        anchors.fill: parent
        anchors.margins: 15
        Label {
            text: "<i>Messup</i> archives your messages to a selected e-mail account<br><br><br>"
            wrapMode: Text.WordWrap
            width: col.width
            horizontalAlignment: Text.AlignHCenter
        }
        Label {
            id: what
            text: "Message types to archive: None"
        }
        Button {
            id: whatButton
            text: "Select message types"
            iconSource: "image://theme/icon-m-toolbar-new-chat"
        }
        Label {
            id: where
            text: "<br>Destination account: None"
        }
        Button {
            id: whereButton
            text: "Select e-mail account"
            iconSource: "image://theme/icon-m-toolbar-send-sms"
        }
    }
}

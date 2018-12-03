import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4

Page {
    id: page1
    ColumnLayout {
        id: columnLayout1
        height: 100
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top

        Label {
            text: qsTr("Label")
            font.pointSize: 16
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
        }

        Image {
            id: image1
            width: 200
            height: 200
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            fillMode: Image.PreserveAspectCrop
            anchors.horizontalCenter: parent
            source: "qrc:/qtquickplugin/images/template_image.png"

            Button {
                id: button1
                text: qsTr("Button")
                anchors.bottomMargin: 10
                anchors.rightMargin: 10
                anchors.bottom: parent.bottom
                anchors.right: parent.right
            }
        }

        Rectangle {
            id: field1
            width: 200
            height: 40
            color: "#ffffff"
            Layout.fillWidth: true



            Label {
                id: label1
                text: qsTr("Full Name")
                anchors.topMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 5
                anchors.top: parent.top
            }
            TextField {
                style: TextFieldStyle {
                    textColor: "black"
                    background: Rectangle {
                        radius: 2
                        implicitWidth: 100
                        implicitHeight: 24
                        border.color: "#333"
                        border.width: 1
                    }
                }
            }
        }
    }
}

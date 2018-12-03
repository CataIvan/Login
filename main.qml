import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.0

Window {
    visible: true
    width: 500
    height: 500
    color: "white"
    x: 360
    y: 100

    property int fontSize: 17

    Rectangle {
        id: container
        width: 400
        height: 300
        color: "darkgray"
        anchors.centerIn: parent

        Column {
            spacing: 10
            anchors.centerIn: parent
            Row {
                spacing: 10
                Text {
                    id: labeluser
                    text: "Username"
                    color: "black"
                    anchors.verticalCenter: areaTextInput.verticalCenter
                    font.pixelSize: fontSize

                }
                Rectangle {
                    id: areaTextInput
                    width: 200
                    height: fontSize + fontSize*0.2
                    color: "#ffffff"
                    anchors.margins: fontSize
                    focus: false



                    TextField {
                        id: textInputUser
                        text: WebService.getString();
                        anchors.fill: parent
                        font.pixelSize: fontSize
                        focus: false
                        validator: RegExpValidator{
                            regExp: /[0-9A-F]+/
                        }
                        onFocusChanged: {
                            if(focus && text === "Enter User"){
                                TextInputUser.text = ""
                            }else{
                                if(text === ""){
                                    text = "Enter User"
                                }
                            }
                        }
                    }
                }
            }
            Row {
                spacing: 10
                Text {
                    id: labelKey
                    text: "Password"
                    color: "black"
                    anchors.verticalCenter: areaTextInputKey.verticalCenter
                    font.pixelSize: fontSize
                }
                Rectangle {
                    id:areaTextInputKey
                    width: 200
                    height: fontSize + fontSize*0.2
                    color: "#ffffff"
                    anchors.margins: fontSize
                    TextField {
                        text: WebService.password("");
                        id: textInputKey
                        anchors.fill: parent
                        font.pixelSize: fontSize
                        echoMode: TextInput.Password
                    }
                }
            }
            Button {
                id: sendButton

                width: 100
                height: 30
                anchors.right: parent.right
                //color: "gray"
                Text {
                    id: textButton
                    text: "Login"
                    anchors.centerIn: parent
                    color: "black"
                    font.pixelSize: fontSize
                }
            }
        }
    }
}

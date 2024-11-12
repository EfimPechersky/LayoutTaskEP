import Felgo
import QtQuick
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    Window{
        id:colwin
        title: "ColumnLayout"
        width: 300
        height: 315
        visible: true
        property int myMargin:5 // Устанавливаем отступы
        minimumWidth:cl.implicitWidth+2*myMargin
        ColumnLayout{
            spacing:myMargin
            anchors.fill:parent
            ColorRectangle{
                Layout.fillWidth: true
                Layout.minimumWidth:300
            }
            ColorRectangle{
                Layout.fillWidth: true
                Layout.minimumWidth:300
            }
            ColorRectangle{
                Layout.fillWidth: true
                Layout.minimumWidth:300
            }
        }
    }
    Window{
        id:rowwin
        title: "RowLayout"
        width: 915
        height: 100
        visible: true
        property int myMargin:5 // Устанавливаем отступы
        minimumHeight:cl.implicitHeight+2*myMargin
        RowLayout{
            spacing:myMargin
            anchors.fill:parent
            ColorRectangle{
                Layout.fillHeight: true
                Layout.minimumHeight:100
            }
            ColorRectangle{
                Layout.fillHeight: true
                Layout.minimumHeight:100
            }
            ColorRectangle{
                Layout.fillHeight: true
                Layout.minimumHeight:100
            }
        }
    }
    Window{
        id:laywin
        title: "Task_for_layout"
        width: 300
        height: 700
        visible: true
        property int myMargin:5
        ColumnLayout{
            id:col1
            spacing:myMargin
            anchors.fill:parent
            RowLayout{
                id:header
                Layout.fillWidth: true
                Layout.preferredHeight:1
                Layout.minimumHeight:100
                Rectangle{
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color:"gainsboro"
                    Text{
                        text:"Header"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                    }
                }
            }
            GridLayout{
                id:content
                Layout.fillWidth: true
                Layout.preferredHeight:6
                Layout.minimumHeight:400
                Rectangle{
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    border.color:"gainsboro"
                    border.width:5
                    Text{
                        text:"Content"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                    }
                }
            }


            RowLayout{
                id:footer
                Layout.preferredHeight:1
                Layout.fillWidth: true
                spacing:myMargin
                Layout.minimumHeight:100
                Rectangle{
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color:"darkgray"
                    Text{
                        text:"1"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                    }
                }
                Rectangle{
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color:"darkgray"
                    Text{
                        text:"2"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                    }
                }
                Rectangle{
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color:"darkgray"
                    Text{
                        text:"3"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                    }
                }
            }
        }
    }
}

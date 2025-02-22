import QtQuick

Item {

    Rectangle{

        color: "green"
    }

    ListView{

        anchors.fill: parent
        model: ListModel { }

        delegate: Component{

            Rectangle{
                implicitWidth: parent.width === 0 ? 50 : parent.width
                implicitHeight: parent.height === 0 ? 50 : parent.height*1/20

                Text{
                    text: "sometg"
                }
            }
        }
    }
}

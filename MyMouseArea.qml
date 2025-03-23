import QtQuick

MouseArea {
    anchors.fill: parent
    hoverEnabled: true /*permite o tratamento de todos os eventos do mouse, mesmo quando nenhum botão do mouse é pressionado.*/
    cursorShape: Qt.PointingHandCursor /*formato do cursor ao entrar na MouseArea*/
}
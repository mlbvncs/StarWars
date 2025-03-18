import QtQuick
import QtQuick.Controls.Basic /*o .Basic é para o botão não ficar branco quando pairar sobre ele*/

ApplicationWindow {
    visible: true /*para que ela apareça na tela*/
    id: janela
    width: 1100
    height: 700
    color: "#000000"
    title: qsTr("STAR WARS") /*nome da janela*/

    Column {
        id: coluna1
        spacing: 0

        anchors {
            top: parent.top
            topMargin: 0
            left: parent.left
            leftMargin: 10
        }
        Image {
            width: 75
            height: 50
            fillMode: Image.PreserveAspectFit /*a imagem é dimensionada uniformemente para caber sem cortes na largura e altura indicada*/
            source: "./imagens/icon1.png"
        }
        Rectangle {
            id: frame1
            color: "#121212"
            width: 75
            height: 120
            radius: 5

            Column {
                id: coluna2
                spacing: 15 /*espaço entre os elementos*/
                anchors {
                    horizontalCenter: frame1.horizontalCenter /*posicionando os itens no centro*/
                    verticalCenter: frame1.verticalCenter /*posicionando os itens no centro*/
                }

                Image {
                    id: imagem1
                    width: 30
                    height: 35
                    fillMode: Image.PreserveAspectFit /*a imagem é dimensionada uniformemente para caber sem cortes*/
                    source: "./imagens/icon2.1.png"
                    
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true /*permite o tratamento de todos os eventos do mouse, mesmo quando nenhum botão do mouse é pressionado.*/
                        cursorShape: Qt.PointingHandCursor /*formato do cursor ao entrar na MouseArea*/

                        onEntered: {/*o que acontece ao passar o cursor sobre a MouseArea*/
                            imagem1.source = "./imagens/icon2.2.png"
                        }
                        onExited: {/*o que acontece ao tirar o cursor da MouseArea*/
                            imagem1.source = "./imagens/icon2.1.png"
                        }
                        onPressed: {/*tem que ficar na MouseArea*/
                            frame3.visible = true
                            rolagem.visible = false
                            texto5.visible = false

                            texto3.text = ''
                            texto4.text = ''

                            imagem1_2.visible = true
                            imagem2_2.visible = false
                            imagem3_2.visible = false
                        }
                    }
                    Image {
                        id: imagem1_2
                        visible: false
                        anchors.fill: parent /*a imagem1 é fixada no botão1 e preenche todo o espaço*/
                        fillMode: Image.PreserveAspectFit /*a imagem é dimensionada uniformemente para caber sem cortes*/
                        source: "./imagens/icon2.2.png"
                    }
                }
                Image {
                    id: imagem2
                    width: 30
                    height: 35
                    fillMode: Image.PreserveAspectFit /*a imagem é dimensionada uniformemente para caber sem cortes*/
                    source: "./imagens/icon3.1.png"
                    
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true /*permite o tratamento de todos os eventos do mouse, mesmo quando nenhum botão do mouse é pressionado.*/
                        cursorShape: Qt.PointingHandCursor /*formato do cursor ao entrar na MouseArea*/

                        onEntered: {/*o que acontece ao passar o cursor sobre a MouseArea*/
                            imagem2.source = "./imagens//icon3.2.png"
                        }
                        onExited: {/*o que acontece ao tirar o cursor da MouseArea*/
                            imagem2.source = "./imagens/icon3.1.png"
                        }
                        onPressed: {/*tem que ficar na MouseArea*/
                            frame3.visible = false
                            rolagem.visible = true
                            texto5.visible = false

                            texto1.text = ''
                            texto2.text = ''

                            imagem1_2.visible = false
                            imagem2_2.visible = true
                            imagem3_2.visible = false
                        }
                    }
                    Image {
                        id: imagem2_2
                        visible: false
                        anchors.fill: parent /*a imagem1 é fixada no botão1 e preenche todo o espaço*/
                        fillMode: Image.PreserveAspectFit /*a imagem é dimensionada uniformemente para caber sem cortes*/
                        source: "./imagens/icon3.2.png"
                    }
                }
            }
        }
    }
    Rectangle {
        id: frame2
        color: "#121212"
        width: 75
        height: 60
        radius: 5

        anchors {
            left: parent.left /*fixando na direita*/
            leftMargin: 10
            bottom: parent.bottom /*fixando no fundo*/
            bottomMargin: 10
        }
        Image {
            id: imagem3
            width: 30
            height: 35
            fillMode: Image.PreserveAspectFit /*a imagem é dimensionada uniformemente para caber sem cortes*/
            source: "./imagens/icon4.1.png"
            
            anchors {
                horizontalCenter: frame2.horizontalCenter /*posicionando os itens no centro*/
                verticalCenter: frame2.verticalCenter /*posicionando os itens no centro*/
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true /*permite o tratamento de todos os eventos do mouse, mesmo quando nenhum botão do mouse é pressionado.*/
                cursorShape: Qt.PointingHandCursor /*formato do cursor ao entrar na MouseArea*/

                onEntered: {/*o que acontece ao passar o cursor sobre a MouseArea*/
                    imagem3.source = "./imagens/icon4.2.png"
                }
                onExited: {/*o que acontece ao tirar o cursor da MouseArea*/
                    imagem3.source = "./imagens/icon4.1.png"
                }
                onPressed: {/*tem que ficar na MouseArea*/
                    frame3.visible = false
                    rolagem.visible = false
                    texto5.visible = true 

                    texto1.text = ''
                    texto2.text = ''

                    imagem1_2.visible = false
                    imagem2_2.visible = false
                    imagem3_2.visible = true
                }
            }
            Image {
                id: imagem3_2
                visible: false
                anchors.fill: parent /*a imagem1 é fixada no botão1 e preenche todo o espaço*/
                fillMode: Image.PreserveAspectFit /*a imagem é dimensionada uniformemente para caber sem cortes*/
                source: "./imagens/icon4.2.png"
            }
        }
    }

    Rectangle {
        id: rect
        color: "#000000"
        width: 995
        height: 640
        radius: 5
        clip: true /*corta tudo que estiver dentro para não ultrapassar o retângulo*/

        anchors {
            right: parent.right /*fixando na direita*/
            rightMargin: 10
            bottom: parent.bottom /*fixando no fundo*/
            bottomMargin: 10
        }
    }
    Image {
        id: imagem5
        anchors.fill: rect
        fillMode: Image.PreserveAspectCrop /*a imagem é dimensionada uniformemente para preencher, cortando se necessário*/
        source: "https://img.freepik.com/fotos-gratis/ceu-estrelado_1048-11828.jpg?size=626&ext=jpg&ga=GA1.1.1880011253.1699920000&semt=ais"
        /*BOTÃO 1*/
        Rectangle {
            visible: false
            id: frame3
            color: "#00FFFFFF"
            radius: 5
            anchors.fill: parent

            Row {
                id: linha1
                spacing: 40 /*espaço entre os elementos*/

                anchors {
                    horizontalCenter: parent.horizontalCenter /*posicionando os itens no centro*/
                    top: parent.top /*criando margem em relação ao topo da img*/
                    topMargin: 55 /*margem em relação ao topo da img*/
                }

                TextField {
                    id: person_id
                    width: 200
                    height: 70

                    color: "#ffc107" /*cor do texto*/

                    font { 
                        family: "Franklin Gothic Demi"
                        pointSize: 19 /*tamanho do texto*/
                        bold: true /*texto em negrito*/
                    }

                    placeholderText: 'Character ID!' /*nome de fundo*/
                    placeholderTextColor: "#ffc107" /*cor do nome de fundo*/

                    cursorDelegate: Rectangle { /*mudando a cor do cursor*/
                        visible: person_id.cursorVisible
                        color: "#ffc107"
                        width: person_id.cursorRectangle.width
                    }
                    background: Rectangle { 
                        color: "#40FFFFFF" /*cor transparente (o 40 representa o quanto é transparente)*/
                        border.color: "#ffc107" /*cor da borda*/
                        border.width: 3 /*tamanho da borda (1 é o padrão, feito manualmente para possíveis consultas)*/
                        radius: 5
                    }
                }
                Button {
                    id: button4
                    width: 200
                    height: 70

                    Text { /*para poder editar o texto*/
                        text: "Choose!"

                        anchors {
                            horizontalCenter: button4.horizontalCenter /*alinhando ao centro horizontalmente*/
                            verticalCenter: button4.verticalCenter /*alinhando ao centro verticalmente*/
                        }
                
                        color: "#ffc107" /*cor do texto*/

                        font { 
                            family: "Franklin Gothic Demi"
                            pointSize: 19 /*tamanho do texto*/
                            bold: true /*texto em negrito*/
                        }
                    }
                    background: Rectangle { 
                        color: "#40FFFFFF" /*cor transparente (o 40 representa o quanto é transparente)*/
                        border.color: "#ffc107" /*cor da borda*/
                        border.width: 3 /*tamanho da borda (1 é o padrão, feito manualmente para possíveis consultas)*/
                        radius: 5
                    }
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor /*formato do cursor ao entrar na MouseArea*/

                        onPressed: {/*tem que ficar na MouseArea*/
                            var person_return = st.personagens(person_id.text)
                            texto1.text = person_return[0]
                            texto2.text = person_return[1]
                            person_id.text = ''
                        }
                    }
                }   
            }
            Text {
                id: texto1
                color: "#ffc107" /*cor do texto*/

                anchors {
                    horizontalCenter: parent.horizontalCenter
                    top: linha1.top
                    topMargin: 95
                }  
                font { 
                    family: "Franklin Gothic Demi"
                    pointSize: 40 /*tamanho do texto*/
                    bold: true /*texto em negrito*/
                }
            }
            Text {
                id: texto2
                color: "#ffc107" /*cor do texto*/

                anchors {
                    horizontalCenter: texto1.horizontalCenter
                    top: texto1.top
                    topMargin: 75
                } 
                font { 
                    family: "Franklin Gothic Demi"
                    pointSize: 19 /*tamanho do texto*/
                    bold: true /*texto em negrito*/
                }
            }     
        }
        /*BOTÃO 2*/
        ScrollView {/*barra de rolagem*/
            id: rolagem
            visible: false
            anchors.fill: parent
            contentHeight: 640 + (texto4.contentHeight - 415) + 55 /*altura combinada dos itens contidos, para o ScrollView poder conter todos os itens*/
            
            Row {
                id: linha2
                spacing: 40 /*espaço entre os elementos*/

                anchors {
                    horizontalCenter: parent.horizontalCenter /*posicionando os itens no centro*/
                    top: parent.top /*criando margem em relação ao topo da img*/
                    topMargin: 55 /*margem em relação ao topo da img*/
                }

                TextField {
                    id: film_id
                    width: 200
                    height: 70

                    color: "#ffc107" /*cor do texto*/

                    font { 
                        family: "Franklin Gothic Demi"
                        pointSize: 19 /*tamanho do texto*/
                        bold: true /*texto em negrito*/
                    }

                    placeholderText: 'Film ID!' /*nome de fundo*/
                    placeholderTextColor: "#ffc107" /*cor do nome de fundo*/

                    cursorDelegate: Rectangle { /*mudando a cor do cursor*/
                        visible: film_id.cursorVisible
                        color: "#ffc107"
                        width: film_id.cursorRectangle.width
                    }
                    background: Rectangle { 
                        color: "#40FFFFFF" /*cor transparente (o 40 representa o quanto é transparente)*/
                        border.color: "#ffc107" /*cor da borda*/
                        border.width: 3 /*tamanho da borda (1 é o padrão, feito manualmente para possíveis consultas)*/
                        radius: 5
                    }
                }
                Button {
                    id: button5
                    width: 200
                    height: 70

                    Text { /*para poder editar o texto*/
                        text: "Choose!"

                        anchors {
                            horizontalCenter: button5.horizontalCenter /*alinhando ao centro horizontalmente*/
                            verticalCenter: button5.verticalCenter /*alinhando ao centro verticalmente*/
                        }
                
                        color: "#ffc107" /*cor do texto*/

                        font { 
                            family: "Franklin Gothic Demi"
                            pointSize: 19 /*tamanho do texto*/
                            bold: true /*texto em negrito*/
                        }
                    }
                    background: Rectangle { 
                        color: "#40FFFFFF" /*cor transparente (o 40 representa o quanto é transparente)*/
                        border.color: "#ffc107" /*cor da borda*/
                        border.width: 3 /*tamanho da borda (1 é o padrão, feito manualmente para possíveis consultas)*/
                        radius: 5
                    }
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor /*formato do cursor ao entrar na MouseArea*/

                        onPressed: {/*tem que ficar na MouseArea*/
                            var film_return = st.filmes(film_id.text)
                            texto3.text = film_return[0]
                            texto4.text = film_return[1]
                            film_id.text = ''
                        }   
                    }
                }      
            }
            Text {
                id: texto3
                color: "#ffc107" /*cor do texto*/

                anchors {
                    horizontalCenter: parent.horizontalCenter
                    top: linha2.top
                    topMargin: 95
                }  
                font { 
                    family: "Franklin Gothic Demi"
                    pointSize: 40 /*tamanho do texto*/
                    bold: true /*texto em negrito*/
                }
            }
            Text {
                id: texto4
                color: "#ffc107" /*cor do texto*/

                anchors {
                    horizontalCenter: texto3.horizontalCenter
                    top: texto3.top
                    topMargin: 75
                }     
                font { 
                    family: "Franklin Gothic Demi"
                    pointSize: 19 /*tamanho do texto*/
                    bold: true /*texto em negrito*/
                }
            }
        }
        /*BOTÃO 3*/
        Text {
            id: texto5
            visible: false
            text: "Created By:\nMalba Vinicius Lopes Santos"
            color: "#ffc107" /*cor do texto*/

            anchors {
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                topMargin: 150
            }  
            font { 
                family: "Franklin Gothic Demi"
                pointSize: 30 /*tamanho do texto*/
                bold: true /*texto em negrito*/
            }
        }
    }


    /*OpacityMask {
        anchors.fill: imagem4
        source: imagem4
        maskSource: rect
    } */
    
}
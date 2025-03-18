import sys
from pathlib import Path

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtCore import QObject, Slot
from httpx import get

class ST(QObject):
    @Slot(str, result=list)
    def personagens(self, person_id):
        if int(person_id) > 83:
            texto1 = "Not Available"
            texto2 = ''
            return(texto1,
                   texto2)
        else:
            response = get(
                f'https://swapi.dev/api/people/{person_id}/?format=json'
            ).json() #pega o link e transforma em um json (o response adquire todas as informações do json da pokeapi)
            #nome
            nome = response["name"]
            #altura
            altura = response["height"]
            #massa
            massa = response["mass"]
            #cor do cabelo
            cabelo = response["hair_color"]
            #cor da pele
            pele = response["skin_color"]
            #cor do olho
            olho = response["eye_color"]
            #datadenascimento
            data = response["birth_year"]
            #gênero
            genero = response["gender"]

            return (nome,
                    "\nHeight: " + altura +
                    "\nMass: " + massa +
                    "\nHair color: " + cabelo +
                    "\nSkin color: " + pele +
                    "\nEye color: " + olho +
                    "\nBirth year: " + data +
                    "\nGender: " + genero
                    )
    @Slot(str, result=list)
    def filmes(self, film_id):
        if int(film_id) > 6:
            texto1 = "Not Available"
            texto2 = ''
            return(texto1,
                   texto2)
        else:
            response = get(
                    f'https://swapi.dev/api/films/{film_id}/?format=json'
                ).json() #pega o link e transforma em um json (o response adquire todas as informações do json da pokeapi)
            #nome
            nome = response["title"]
            #sinopse
            sinopse = response["opening_crawl"]

            return(nome,
                   f'{sinopse}'
            )

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    qml_file = Path(__file__).resolve().parent / "st.qml"
    engine.load(qml_file)

    st = ST()
    context = engine.rootContext()
    context.setContextProperty("st", st)

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())

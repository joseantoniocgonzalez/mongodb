1.Con la utilidad mongoimport introduce los documentos correspondientes a esa colección.

mongoimport --db miBaseDeDatos --collection equipos --file equiposderugby.json

2.1 Inserta varios documentos utilizando los dos métodos de inserción de MongoDB

insertone:
#añadimos a la seleccion Francesa

db.equipos.insertOne({
    "nombre": "Francia",
    "estadio": "Stade de France",
    "entrenador": "Fabien Galthié",
    "camiseta": "Azul",
    "himno": "La Marseillaise",
    "capitan": {
        "nombre": "Charles Ollivon",
        "fecha_nacimiento": "12/09/1993"
    },
    "victorias_mas_abultadas": [
        {
            "rival": "Escocia",
            "resultado": "51-0"
        },
        {
            "rival": "Gales",
            "resultado": "38-3"
        },
        {
            "rival": "Inglaterra",
            "resultado": "33-10"
        }
    ]
})

#Y tambien añadimos a la seleccion de Italia

db.equipos.insertOne({
    "nombre": "Italia",
    "estadio": "Stadio Olimpico",
    "entrenador": "Franco Smith",
    "camiseta": "Azul",
    "himno": "Il Canto degli Italiani",
    "capitan": {
        "nombre": "Luca Bigi",
        "fecha_nacimiento": "22/09/1991"
    },
    "victorias_mas_abultadas": [
        {
            "rival": "Gales",
            "resultado": "30-22"
        },
        {
            "rival": "Inglaterra",
            "resultado": "18-14"
        },
        {
            "rival": "Escocia",
            "resultado": "22-17"
        }
    ]
})

insertmany: 
#añadimos a las selecciones de Australia, Nueva Zelanda y sudafrica:

db.equipos.insertMany([  {    "nombre": "Australia",    "estadio": "ANZ Stadium",    "entrenador": "Dave Rennie",    "camiseta": "Verde y dorado",    "himno": "Advance Australia Fair",    "capitan": {      "nombre": "Michael Hooper",      "fecha_nacimiento": "29/10/1991"    },    "victorias_mas_abultadas": [      {        "rival": "Inglaterra",        "resultado": "76-0"      },      {        "rival": "Escocia",        "resultado": "101-3"      },      {        "rival": "Gales",        "resultado": "32-8"      }    ]
  },
  {
    "nombre": "Sudáfrica",
    "estadio": "Ellis Park Stadium",
    "entrenador": "Jacques Nienaber",
    "camiseta": "Verde y dorado",
    "himno": "Nkosi Sikelel' iAfrika",
    "capitan": {
      "nombre": "Siya Kolisi",
      "fecha_nacimiento": "16/06/1991"
    },
    "victorias_mas_abultadas": [
      {
        "rival": "Inglaterra",
        "resultado": "53-3"
      },
      {
        "rival": "Escocia",
        "resultado": "68-10"
      },
      {
        "rival": "Gales",
        "resultado": "96-13"
      }
    ]
  },
  {
    "nombre": "Nueva Zelanda",
    "estadio": "Eden Park",
    "entrenador": "Ian Foster",
    "camiseta": "Negra",
    "himno": "God Defend New Zealand",
    "capitan": {
      "nombre": "Samuel Whitelock",
      "fecha_nacimiento": "12/10/1988"
    },
    "victorias_mas_abultadas": [
      {
        "rival": "Inglaterra",
        "resultado": "64-0"
      },
      {
        "rival": "Escocia",
        "resultado": "69-20"
      },
      {
        "rival": "Gales",
        "resultado": "54-10"
      }
    ]
  }

# añadimos tambien a Argentina y Japon

db.equipos.insertMany([  {    "nombre": "Argentina",    "estadio": "Estadio Mario Alberto Kempes",    "entrenador": "Mario Ledesma",    "camiseta": "Celeste y blanca",    "himno": "Himno Nacional Argentino",    "capitan": {        "nombre": "Pablo Matera",        "fecha_nacimiento": "18/07/1993"    },    "partidos": [        {            "rival": "Gales",            "resultado": "33-11"        },        {            "rival": "Inglaterra",            "resultado": "25-13"        },        {            "rival": "Escocia",            "resultado": "41-31"        }    ]
  },
  {
    "nombre": "Japón",
    "estadio": "Estadio Nacional de Japón",
    "entrenador": "Jamie Joseph",
    "camiseta": "Roja y blanca",
    "himno": "Kimigayo",
    "capitan": {
        "nombre": "Michael Leitch",
        "fecha_nacimiento": "07/10/1988"
    },
    "partidos": [
        {
            "rival": "Gales",
            "resultado": "Nunca le ganó a Gales"
        },
        {
            "rival": "Inglaterra",
            "resultado": "Nunca le ganó a Inglaterra"
        },
        {
            "rival": "Escocia",
            "resultado": "Nunca le ganó a Escocia"
        }
    ]
  }
])

#Elimina varios documentos utilizando los dos métodos de eliminación de MongoDB

db.equipos.deleteOne({ "nombre": "Japón" })

db.equipos.deleteMany({ "nombre": { "$in": ["Nueva Zelanda", "Australia"] }})




#Actualiza varios documentos utilizando los tres métodos de eliminación de MongoDB

#Consultas:

#Al menos incluye 5 consultas de datos simples

#Al menos 3 consultas con arrays

#Al menos 3 consultas con documentos embebidos

#Al menos 1 consulta de agrupación


NOTA: Debes utilizar en las consultas proyecciones, operadores, ordenación y los modificadores sort y limit. 
Se valorará la complejidad de las mismas




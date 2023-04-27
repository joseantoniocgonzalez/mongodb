1.Con la utilidad mongoimport introduce los documentos correspondientes a esa colección.

mongoimport --db miBaseDeDatos --collection equipos --file equiposderugby.json

2.1 Inserta varios documentos utilizando los dos métodos de inserción de MongoDB

insertone:
#añadimos a la seleccion Francesa

db.equipos.insertOne({
    "nombre": "Japon",
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
db.equipos.deleteOne({ "nombre": "Argentina" })


db.equipos.deleteMany({ "nombre": { "$in": ["Nueva Zelanda", "Australia"] }})




#Actualiza varios documentos utilizando los tres métodos de eliminación de MongoDB

Actualizamos que el nombre del seleccionador de gales ha cambiado
db.equipos.updateOne(
   { "equipos.nombre": "Gales" },
   { $set: { "equipos.$.entrenador": "Warren Gatland" } }
)

Actualizamos para que todos los equipos jueguen ahora en el estadio olimpico de Londres
db.equipos.updateMany({}, { $set: { "estadio": "Estadio Olímpico de Londres" } })



Hacemos una actualizacion para ello volvemos a crear a Japon y hacemos que se actualice con los datos de nueva zelanda 

db.equipos.updateOne(
  { nombre: "Japon" },
  {
    $set: {
      nombre: "All Blacks",
      estadio: "Estadio Eden Park",
      entrenador: "Ian Foster",
      camiseta: "Negra",
      himno: "God Defend New Zealand",
      capitan: {
        nombre: "Samuel Whitelock",
        fecha_nacimiento: "12/10/1988"
      },
      partidos: [
        {
          rival: "Australia",
          resultado: "Ganó 47-26"
        },
        {
          rival: "Argentina",
          resultado: "Ganó 36-13"
        },
        {
          rival: "Sudáfrica",
          resultado: "Ganó 23-13"
        }
      ]
    }
  }
)

db.equipos.updateOne(
  { nombre: "All Blacks" },
  {
    $set: {
      partidos: [
        {
          rival: "Gales",
          resultado: "Ganó 46-6"
        },
        {
          rival: "Inglaterra",
          resultado: "Ganó 60-13"
        },
        {
          rival: "Escocia",
          resultado: "Ganó 69-20"
        }
      ]
    }
  }
)

Consultas:

    Al menos incluye 5 consultas de datos simples

1.Mostrar los nombres de los capitanes de cada equipo:

db.equipos.find({}, { "capitan.nombre": 1, _id: 0 })

2.Mostrar el nombre del estadio de Francia

db.equipos.find({ nombre: "Francia" }, { estadio: 1, _id: 0 })

3. Mostrar los equipos que han anotado mas de 50 puntos en victorias_mas_abultadas

db.equipos.find({ "victorias_mas_abultadas.resultado": { $gte: "50" } }, { nombre: 1, _id: 0 })

4. Equipos que tienen la camiseta azuk 

db.equipos.find({"camiseta": "Azul"}, {"nombre": 1})

5. Nombre del himno de Italia 

db.equipos.find({"nombre": "Italia"}, {"himno": 1})

6 Nombre del capitan de Inglaterra 

db.equipos.find({"nombre": "Inglaterra"}, {"capitan.nombre": 1})











#Al menos 3 consultas con arrays

Encontrar los equipos que han obtenido una victoria con margen de 50 puntos o superior:

db.equipos.find({ "victorias_mas_abultadas.resultado": { $regex: /^[5-9][0-9]-[0-9]+$/ } }).forEach(function(equipo) {
    equipo.victorias_mas_abultadas.forEach(function(victoria) {
        var resultado = victoria.resultado.split("-");
        var dif = Math.abs(resultado[0] - resultado[1]);
        if (dif >= 50) {
            print(equipo.nombre, victoria.rival, victoria.resultado);
        }
    });
});


 Mostrar los equipos, con el nombre de su estadio y de su himno ordenado alfabeticamente de forma descendente

db.equipos.find({}, {nombre: 1, estadio: 1, himno: 1, _id: 0}).sort({nombre: -1})



Mostrar el equipo, el nombre de su capitan y su fecha de nacimiento
db.equipos.find({}, {nombre: 1, "capitan.nombre": 1, "capitan.fecha_nacimiento": 1, _id: 0})












#Al menos 3 consultas con documentos embebidos

1 Devolver solo el nombre y el estadio del equipo con nombre "Gales":

db.equipos.find(
{nombre: "Gales"},
{nombre: 1, estadio: 1, _id: 0}
)

2 Devolver todos los equipos con sus nombres y el nombre y fecha de nacimiento de su capitán, 
ordenados por el nombre del capitán en orden ascendente:

db.equipos.find(
   {},
   {nombre: 1, "capitan.nombre": 1, "capitan.fecha_nacimiento": 1, _id: 0}
).sort({"capitan.nombre": 1})

3 Devolver  el nombre y la camiseta del equipo con el estadio "Stadio Olimpico":

db.equipos.find(
   {estadio: "Stadio Olimpico"},
   {nombre: 1, camiseta: 1, _id: 0}
)

4 Encuentra los equipos que han ganado al menos una vez por más de 30 puntos. Devuelve el nombre del 
equipo, el nombre del estadio donde juega y la victoria más abultada obtenida por el equipo.

.db.equipos.find(
   { "victorias_mas_abultadas.resultado": { $gt: "30-0" } },
   { _id: 0, nombre: 1, estadio: 1, "victorias_mas_abultadas": { $elemMatch: { resultado: { $gt: "30-0" } } } }
)





#Al menos 1 consulta de agrupación

información detallada sobre cada uno de los equipos y sus victorias más abultadas.

db.equipos.aggregate([
  {
    $project: {
      _id: 0,
      nombre: 1,
      estadio: 1,
      entrenador: 1,
      camiseta: 1,
      himno: 1,
      capitan: 1,
      victorias_mas_abultadas: {
        $filter: {
          input: "$victorias_mas_abultadas",
          as: "victoria",
          cond: { $regexMatch: { input: "$$victoria.resultado", regex: /^(\d{2}|\d)-(\d{2}|\d)$/ } }
        }
      }
    }
  }
])






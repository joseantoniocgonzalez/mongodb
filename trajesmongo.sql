
    Inserta varios documentos utilizando los dos métodos de inserción de MongoDB
db.mistrajes.insertOne({
  numerodesede: "0001",
  direccion: "Paseo de Mestalla",
  nombrecordinador: "Juanma",
  localidad: "Valencia"
});

db.mistrajes.insertOne({
  numerodesede: "0002",
  direccion: "Avenida de Cadiz",
  nombrecordinador: "Maritoñi",
  localidad: "Malaga"
});

db.mistrajes.insertOne({
  numerodesede: "0003",
  direccion: "Paseo de Gracia",
  nombrecordinador: "Luisa",
  localidad: "Barcelona"
});

db.mistrajes.insertOne({
  numerodesede: "0004",
  direccion: "Calle Japon",
  nombrecordinador: "Toni",
  localidad: "Valencia"
});

................................

db.mistrajes.insertOne({
    codigotraje: '100012',
    material: 'lino',
    color: 'blanco',
    disenador: 'Napoli',
    numerodesede: '0001',
    cifproveedor: 'A46210334',
    temporada: 'primavera'
})

db.mistrajes.insertOne({
    codigotraje: '100011',
    material: 'lino',
    color: 'azul',
    disenador: 'Napoli',
    numerodesede: '0001',
    cifproveedor: 'A46210334',
    temporada: 'primavera'
})

db.mistrajes.insertOne({
    codigotraje: '100013',
    material: 'lino',
    color: 'negro',
    disenador: 'Napoli',
    numerodesede: '0001',
    cifproveedor: 'A46210334',
    temporada: 'primavera'
})

db.mistrajes.insertOne({
    codigotraje: '200011',
    material: 'raso',
    color: 'gris',
    disenador: 'Eutimio',
    numerodesede: '0002',
    cifproveedor: 'A46210355',
    temporada: 'verano'
})

db.mistrajes.insertOne({
    codigotraje: '200012',
    material: 'raso',
    color: 'blanco',
    disenador: 'Eutimio',
    numerodesede: '0002',
    cifproveedor: 'A46210355',
    temporada: 'verano'
})

db.mistrajes.insertOne({
    codigotraje: '200013',
    material: 'raso',
    color: 'azul',
    disenador: 'Lalola',
    numerodesede: '0003',
    cifproveedor: 'A46210355',
    temporada: 'verano'
})

db.mistrajes.insertOne({
    codigotraje: '220013',
    material: 'terciopelo',
    color: 'negro',
    disenador: 'Tucci',
    numerodesede: '0004',
    cifproveedor: 'A46210355',
    temporada: 'otoño'
})

db.mistrajes.insertOne({
    codigotraje: '260013',
    material: 'terciopelo',
    color: 'gris',
    disenador: 'Lalola',
    numerodesede: '0005',
    cifproveedor: 'A46210734',
    temporada: 'invierno'
})

db.mistrajes.insertOne({
    codigotraje: '280013',
    material: 'algodon',
    color: 'blanco',
    disenador: 'Tucci',
    numerodesede: '0004',
    cifproveedor: 'A46210355',
    temporada: 'invierno'
})

db.mistrajes.insertOne({
    codigotraje: '267013',
    material: 'sarga',
    color: 'negro',
    disenador: 'Lalola',
    numerodesede: '0005',
    cifproveedor: 'A46210734',
    temporada: 'invierno'
})

..................

db.mistrajes.insertMany([  {    "cifproveedor": "A46210334",    "nombreproveedor": "Eutimio",    "direccion": "Calle Pelota 3 cadiz",    "contrato": "exclusivo"  },  {    "cifproveedor": "A46210567",    "nombreproveedor": "Trajeson",    "direccion": "Gavia 3 Granada",    "contrato": "exclusivo"  },  {    "cifproveedor": "A46210355",    "nombreproveedor": "Napoli",    "direccion": "calle iris 3 Madrid",    "contrato": "exclusivo"  },  {    "cifproveedor": "A46214334",    "nombreproveedor": "Tucci",    "direccion": "Calle Ceuta Vigo",    "contrato": "normal"  },  {    "cifproveedor": "A46210734",    "nombreproveedor": "lalola",    "direccion": "Calle Real 3 Jerez",    "contrato": "normal"  }]);
db.mistrajes.insertMany([  {    "codigocomplemento": 1,    "imagen": "1",    "descripcion": "pañuelo",    "cifproveedor": "A46210567"  },  {    "codigocomplemento": 2,    "imagen": "2",    "descripcion": "pañuelo",    "cifproveedor": "A46210334"  },  {    "codigocomplemento": 3,    "imagen": "3",    "descripcion": "corbata",    "cifproveedor": "A46210334"  },  {    "codigocomplemento": 4,    "imagen": "4",    "descripcion": "gemelos",    "cifproveedor": "A46210567"  },  {    "codigocomplemento": 5,    "imagen": "5",    "descripcion": "corbata",    "cifproveedor": "A46210567"  }])

db.mistrajes.insertMany([  {    "codigocomplemento": "000005",    "numerodesede": "0005"  },  {    "codigocomplemento": "000001",    "numerodesede": "0002"  },  {    "codigocomplemento": "000004",    "numerodesede": "0005"  },  {    "codigocomplemento": "000005",    "numerodesede": "0004"  },  {    "codigocomplemento": "000002",    "numerodesede": "0004"  },  {    "codigocomplemento": "000003",    "numerodesede": "0001"  }])



    Elimina varios documentos utilizando los dos métodos de eliminación de MongoDB


    eliminar el traje con el código "100012"

db.mistrajes.deleteOne({ codigotraje: "100012" })

elimina todos los documentos cuyo campo temporada sea igual a "primavera".
db.mistrajes.deleteMany({ temporada: "primavera" })




    Actualiza varios documentos utilizando los tres métodos de eliminación de MongoDB


Actualizar el campo "color" de todos los trajes de la temporada "primavera" a "verde".

db.mistrajes.updateMany(
   { temporada: "primavera" },
   { $set: { color: "verde" } }
)

catualizar la dirección de la sede con el número "0002" a "Avenida de Valencia".


db.mistrajes.updateOne({ numerodesede: "0002" }, { $set: { direccion: "Avenida de Valencia" } });


Todos los trajes de verano son diseñador por Pepe

db.mistrajes.updateMany({ temporada: "verano" }, { $set: { disenador: "Pepe" } });

Modificamos la sede numero 0005

db.mistrajes.replaceOne({ numerodesede: "0005" }, { numerodesede: "0005", direccion: "Calle de la Paz", nombrecordinador: "Ana", localidad: "Madrid" });






    Consultas:

        Al menos incluye 5 consultas de datos simples

1.muestra  todos los trajes de la temporada "verano":

db.mistrajes.find({temporada: "verano"})


2.nos muestra todos  los detalles de la sede con número "0002":



db.mistrajes.find({numerodesede: "0002"})

3.Obtener los trajes diseñados por "Lalola":



db.mistrajes.find({disenador: "Lalola"})

  4.muestra  los "blanco":


db.mistrajes.find({color: "blanco"})

  5.Obtener los trajes que son de  "terciopelo":



db.mistrajes.find({material: "terciopelo"})



        Al menos 3 consultas con arrays

    1.arrays  que devuelve los trajes de la temporada "primavera" y "verano", 
    y que  nos ordena los resultados por código de traje de forma ascendente.


db.mistrajes.find({temporada: {$in: ["primavera", "verano"]}}).sort({codigotraje: 1})

    2.devuelve los trajes de color "blanco" y de material "lino", y que nos muestra solo  "codigotraje" y "disenador".



db.mistrajes.find({color: "blanco", material: "lino"}, {codigotraje: 1, disenador: 1})

  

nos muestra los trajes, los complementos y la informacion de la sede de "Valencia" y de "Malaga", los ordena por "codigotraje" de abajo arriba


db.mistrajes.find({numerodesede: {$in: ["0001", "0002"]}}).sort({codigotraje: -1})

    5.Consulta que nos  devuelve los trajes 3 primeros trajes  diseñados por "Lalola", nos dice su  "color" y "numerodesede", .



db.mistrajes.find({disenador: "Lalola"}, {color: 1, numerodesede: 1}).limit(3)



        Al menos 3 consultas con documentos embebidos


muestra los códigos de los trajes y los materiales de los trajes fabricados 
por el diseñador "Eutimio" ordenados por orden alfabético de los códigos de trajes:

      db.mistrajes.find(
    { disenador: "Eutimio" },
    { _id: 0, codigotraje: 1, material: 1 }
).sort({ codigotraje: 1 })

todos los trajes de terciopelo de color gris o negro:


 db.mistrajes.find({ "material": "terciopelo", "color": { $in: ["gris", "negro"] } })


Nos muestra los trajes diseñado por Eutimio de la temporada de verano 

db.mistrajes.find({disenador: "Eutimio", temporada: "verano"})




        Al menos 1 consulta de agrupación

Obtener la cantidad de trajes por temporada y sede de venta, mostrando primero la cantidad de trajes y luego la temporada y sede de venta. Los resultados deben ser
 ordenados de forma descendente por la cantidad de trajes y limitados a los 10 primeros resultados.

        db.mistrajes.aggregate([
  {
    $group: {
      _id: {
        temporada: "$temporada",
        numerodesede: "$numerodesede"
      },
      cantidad: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      cantidad: 1,
      temporada: "$_id.temporada",
      numerodesede: "$_id.numerodesede"
    }
  },
  {
    $sort: {
      cantidad: -1
    }
  },
  {
    $limit: 10
  }
])


NOTA: Debes utilizar en las consultas proyecciones, operadores, ordenación y los modificadores sort y limit. Se valorará la complejidad de las mismas
Debes incluir capturas que demuestren el buen funcionamiento de cada una de las operaciones realizadas en cada una de las dos partes.














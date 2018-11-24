# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(mail_address: "claire.ziemendorf@gmail.com", password: "1234", name: "Claire")
User.create(mail_address: "eric.ziemendorf@gmail.com", password: "1234", name: "Eric")
User.create(mail_address: "helene.ziemendorf@gmail.com", password: "1234", name: "Helene")
User.create(mail_address: "selma.ziemendorf@gmail.com", password: "1234", name: "Selma")
User.create(mail_address: "joachim.ziemendorf@gmail.com", password: "1234", name: "Joachim")

Colocation.create(address: "16 Villa Gaudelet", name: "Coloc 1")
Colocation.create(address: "165 boulevard de la Villette", name: "Coloc 2")


UserColocation.create(user_id: 1, colocation_id: 1)
UserColocation.create(user_id: 2, colocation_id: 1)
UserColocation.create(user_id: 3, colocation_id: 1)
UserColocation.create(user_id: 1, colocation_id: 2)
UserColocation.create(user_id: 2, colocation_id: 2)


TacheMenagere.create(name: "Arroser les plantes", frequence: 4, colocation_id: 1)
TacheMenagere.create(name: "Passer l'aspirateur", frequence: 4, colocation_id: 1)
TacheMenagere.create(name: "Passer la serpillère", frequence: 4, colocation_id: 1)
TacheMenagere.create(name: "Faire la vaisselle", frequence: 12, colocation_id: 1)
TacheMenagere.create(name: "Faire la lessive", frequence: 4, colocation_id: 1)
TacheMenagere.create(name: "Descendre les poubelles", frequence: 8, colocation_id: 1)
TacheMenagere.create(name: "Changer les draps", frequence: 2, colocation_id: 1)

TacheMenagere.create(name: "Arroser les plantes", frequence: 4, colocation_id: 2)
TacheMenagere.create(name: "Passer l'aspirateur", frequence: 4, colocation_id: 2)
TacheMenagere.create(name: "Passer la serpillère", frequence: 4, colocation_id: 2)
TacheMenagere.create(name: "Faire la vaisselle", frequence: 12, colocation_id: 2)


UserTan.create(user_id: 1, tache_menagere_id: 1, score: 0)
UserTan.create(user_id: 1, tache_menagere_id: 2, score: 100)
UserTan.create(user_id: 1, tache_menagere_id: 3, score: 100)
UserTan.create(user_id: 1, tache_menagere_id: 4, score: 100)
UserTan.create(user_id: 1, tache_menagere_id: 5, score: 0)
UserTan.create(user_id: 1, tache_menagere_id: 6, score: 500)
UserTan.create(user_id: 1, tache_menagere_id: 7, score: 200)

UserTan.create(user_id: 2, tache_menagere_id: 1, score: 10)
UserTan.create(user_id: 2, tache_menagere_id: 2, score: 10)
UserTan.create(user_id: 2, tache_menagere_id: 3, score: 400)
UserTan.create(user_id: 2, tache_menagere_id: 4, score: 50)
UserTan.create(user_id: 2, tache_menagere_id: 5, score: 30)
UserTan.create(user_id: 2, tache_menagere_id: 6, score: 400)
UserTan.create(user_id: 2, tache_menagere_id: 7, score: 100)

UserTan.create(user_id: 3, tache_menagere_id: 1, score: 30)
UserTan.create(user_id: 3, tache_menagere_id: 2, score: 30)
UserTan.create(user_id: 3, tache_menagere_id: 3, score: 40)
UserTan.create(user_id: 3, tache_menagere_id: 4, score: 400)
UserTan.create(user_id: 3, tache_menagere_id: 5, score: 100)
UserTan.create(user_id: 3, tache_menagere_id: 6, score: 100)
UserTan.create(user_id: 3, tache_menagere_id: 7, score: 300)

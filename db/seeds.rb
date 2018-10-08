# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

test = Test.create(title:'Fst test', desc: 'Description')
quest = Question.create(title:'Fst test', txt: 'Description', answer_true_id:1, test_id: test.id)
quest2 = Question.create(title:'Sec test', txt: 'Description', answer_true_id:3, test_id: test.id)
quest3 = Question.create(title:'Fird test', txt: 'Description', answer_true_id:5, test_id: test.id)
Answer.create(txt:'Fst answ', question_id: quest.id)
Answer.create(txt:'Sec answ', question_id: quest.id)
Answer.create(txt:'Fst answ2', question_id: quest2.id)
Answer.create(txt:'Sec answ2', question_id: quest2.id)
Answer.create(txt:'Fst answ3', question_id: quest3.id)
Answer.create(txt:'Sec answ4', question_id: quest3.id)

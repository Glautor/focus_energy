# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..4
	User.create(name:"Pessoa #{i}", password:"teste123", email:"g@#{i}", user_type:"População", phone_number:"(8#{i} 9998#{i}414#{i+1}", cpf:"576.543.675-58")
end

for i in 5..9
	User.create(name:"Pessoa #{i}", password:"teste123", email:"g@#{i}", user_type:"Corte", phone_number:"(8#{i} 9998#{i}414#{i+1}", cpf:"576.543.675-58")
end

for i in 10..14
	User.create(name:"Pessoa #{i}", password:"teste123", email:"g@#{i}", user_type:"Leiturista", phone_number:"(8#{i} 9998#{i}414#{i+1}", cpf:"576.543.675-58")
end

for i in 15..20
	User.create(name:"Pessoa #{i}", password:"teste123", email:"g@#{i}", user_type:"Manutenção", phone_number:"(8#{i} 9998#{i}414#{i+1}", cpf:"576.543.675-58")
end

for i in 21..25
	User.create(name:"Pessoa #{i}", password:"teste123", email:"g@#{i}", user_type:"Segurança", phone_number:"(8#{i} 9998#{i}414#{i+1}", cpf:"576.543.675-58")
end

for i in 25..30
	User.create(name:"Pessoa #{i}", password:"teste123", email:"g@#{i}", user_type:"Fiscalização", phone_number:"(8#{i} 9998#{i}414#{i+1}", cpf:"576.543.675-58")
end
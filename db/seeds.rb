# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Dog.delete_all
Walker.delete_all
Walk.delete_all

walker1 = Walker.create(email: 'Doug@gmail.com', password: 'hjlgsagg', encrypted_password: 'hkfdajkfsd', sign_in_count: 0)
walker2 = Walker.create(email: 'Cortney@gmail.com', password: 'hjlgsagg', encrypted_password: 'hkfdajkfsd', sign_in_count: 0)

dog1 = Dog.create(name: 'Watson', breed: 'Poochon', age: 2, walker_id: walker1.id)
dog2 = Dog.create(name: 'Widget', breed: 'Toy poodle', age: 1, walker_id: walker2.id)
dog3 = Dog.create(name: 'Milo', breed: 'Toy poodle', age: 3, walker_id: walker1.id)

walk1 = Walk.create(flag_1: true, flag_2: true, walker_id: walker1.id, dog_id: dog1.id)
walk2 = Walk.create(flag_1: true, flag_2: true, walker_id: walker1.id, dog_id: dog2.id)
walk3 = Walk.create(flag_1: true, flag_2: false, walker_id: walker1.id, dog_id: dog1.id)
walk4 = Walk.create(flag_1: true, flag_2: false, walker_id: walker2.id, dog_id: dog3.id)
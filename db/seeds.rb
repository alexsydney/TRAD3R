#### SEED DATA #####

User.destroy_all

u1 = User.create  name:'Alex', email:'alex@gmail.com', password: 'chicken', coins: 100, is_admin: true

u2 = User.create name:'Amir', email: 'amir@gmail.com',
password:'chicken', coins: 100, is_admin: true

u3 = User.create  name:'James', email:'james@gmail.com', password:'chicken', coins: 100, is_admin: true

u4 = User.create  name:'Test', email:'test@gmail.com', password:'chicken', coins: 100, is_admin: false

puts "create #{User.all.length} users "

##### phrases ######

Phrase.destroy_all

p1 = Phrase.create body:'body text', value: 20

p2 = Phrase.create body:'body text', value: 20

p3 = Phrase.create body:'body text', value: 20

puts "create #{Phrase.all.length} phrases "


###### avatars #####
Avatar.destroy_all

a1 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 1', description: 'description here', value: 20, is_sale: true, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'

a2 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 2', description: 'description here', value: 20, is_sale: true, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'

a3 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 3', description: 'description here', value: 20, is_sale: false, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'

a4 = Avatar.create src: 'http://www.fillmurray.com/g/300/200', name: 'avatar 4', description: 'description here', value: 20, is_sale: true, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'

a5 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 5', description: 'description here', value: 20, is_sale: true, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'

a6 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 6', description: 'description here', value: 20, is_sale: true, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'

a7 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 7', description: 'description here', value: 20, is_sale: false, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'

a8 = Avatar.create src: 'http://www.fillmurray.com/g/300/200', name: 'avatar 8', description: 'description here', value: 20, is_sale: true, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'

a9 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 9', description: 'description here', value: 20, is_sale: true, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'

a10 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 10', description: 'description here', value: 20, is_sale: true, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'

a11 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 11', description: 'description here', value: 20, is_sale: false, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'

a12 = Avatar.create src: 'http://www.fillmurray.com/g/300/200', name: 'avatar 12', description: 'description here', value: 20, is_sale: true, mat_src: 'r2-d2.mtl', obj_src: 'r2-d2.obj'


puts "create #{Avatar.all.length} avatars "

u1.avatars << a1 << a4 << a7 << a9
u2.avatars << a2 << a5 << a6 << a10
u3.avatars << a3
u4.avatars << a11 << a12

a1.phrases << p1 << p2
a2.phrases << p3 << p2
a3.phrases << p1 << p3

#### SEED DATA #####

User.destroy_all

u1 = User.create  name:'Alex', email:'alex@gmail.com', password: 'chicken', coins: 100, is_admin: true

u2 = User.create  name:'James', email:'james@gmail.com', password:'chicken', coins: 100, is_admin: true

u3 = User.create name:'Amir', email: 'amir@gmail.com',
password:'chicken', coins: 100, is_admin: true

puts "create #{User.all.length} users "

##### phrases ######

Phrase.destroy_all

p1 = Phrase.create body:'I’m blowing up like you thought I would/Call the crib, same number, same hood, it’s all good.', value: 20

p2 = Phrase.create body:'Never lose, never choose to.', value: 20

p3 = Phrase.create body: 'if i told you that a flower bloomed in a dark room would you trust it', value: 20

puts "create #{Phrase.all.length} phrases "


###### avatars #####
Avatar.destroy_all

a1 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 1', description: 'description here', value: 20

a2 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 2', description: 'description here', value: 20

a3 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 3', description: 'description here', value: 20

a4 = Avatar.create src: 'https://www.fillmurray.com/300/200', name: 'avatar 4', description: 'description here', value: 20


puts "create #{Avatar.all.length} avatars "

u1.avatars << a1 << a4
u2.avatars << a2
u3.avatars << a3

a1.phrases << p1 << p2
a2.phrases << p3 << p2
a3.phrases << p1 << p3

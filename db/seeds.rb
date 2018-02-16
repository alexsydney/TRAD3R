#### SEED DATA #####

ActiveRecord::Base.logger.level = 1  # hide SQL statements

User.destroy_all

u1 = User.create  name:'Alex', email:'alex@gmail.com', password: 'chicken', coins: 100, is_admin: true

u2 = User.create name:'Amir', email: 'amir@gmail.com',
password:'chicken', coins: 100, is_admin: true

u3 = User.create  name:'James', email:'james@gmail.com', password:'chicken', coins: 100, is_admin: false

u4 = User.create  name:'Test', email:'test@gmail.com', password:'chicken', coins: 100, is_admin: false

puts "create #{User.all.length} users "

##### phrases ######

Phrase.destroy_all

p1 = Phrase.create body:'Hello World!', value: 20

p2 = Phrase.create body:'Welcome to GA', value: 20

p3 = Phrase.create body:'Welcome to WDI25', value: 20

puts "create #{Phrase.all.length} phrases "


###### avatars #####
Avatar.destroy_all

a1 = Avatar.create src: 'PikachuPokemon.png', name: 'Pikachu Go', description: 'A 3D model of Pokemon Pikachu from 3D Model Library', value: 20, is_sale: true, mat_src: 'pikachu-pokemon-go-obj/pikachu-pokemon-go.mtl', obj_src: 'pikachu-pokemon-go-obj/pikachu-pokemon-go.obj'

a2 = Avatar.create src: 'StarWarsDogfightWebGL.png', name: 'Star wars dog fight', description: 'A 3D Model star wars dog fight webgl from Fan Art Artist', value: 25, is_sale: true, mat_src: 'star-wars-dogfight-webgl-obj/star-wars-dogfight-webgl.mtl', obj_src: 'star-wars-dogfight-webgl-obj/star-wars-dogfight-webgl.obj'

a3 = Avatar.create src: 'Goku.png', name: 'Goku', description: 'A 3D model of Goku from dragon ball Z', value: 35, is_sale: true, mat_src: 'goku-obj/goku.mtl', obj_src: 'goku-obj/goku.obj'

a4 = Avatar.create src: 'Fluttershy.png', name: 'Fluttershy', description: '3D Model og Fluttershy from Jason Shoumar', value: 25, is_sale: true, mat_src: 'fluttershy-obj/fluttershy.mtl', obj_src: 'fluttershy-obj/fluttershy.obj'

a5 = Avatar.create src: 'Gunbotwithwalkanimation.png', name: 'Gunbot', description: '3D of Gunbot with walk animation from Krusher99', value: 25, is_sale: true, mat_src: 'gunbot-with-walk-animation-obj/gunbot-with-walk-animation.mtl', obj_src: 'gunbot-with-walk-animation-obj/gunbot-with-walk-animation.obj'

a6 = Avatar.create src: 'SonicSeriesAmyRose.png', name: 'Amy Rose', description: '3D model of Sonic Series Amy Rose from Jason Shoumar', value: 20, is_sale: true, mat_src: 'sonic-series-amy-rose-obj/sonic-series-amy-rose.mtl', obj_src: 'sonic-series-amy-rose-obj/sonic-series-amy-rose.obj'

a7 = Avatar.create src: 'MarioSculpture.png', name: 'Mario', description: '3D model of Mario sculpture from Ben Houston', value: 20, is_sale: true, mat_src: 'mario-sculpture-obj/mario-sculpture.mtl', obj_src: 'mario-sculpture-obj/mario-sculpture.obj'

a8 = Avatar.create src: 'SonictheHedgehog.png', name: 'Sonic the hedgehog', description: 'a 3D model of Sonic the hedgehog from Jason Shoumar', value: 20, is_sale: true, mat_src: 'sonic-the-hedgehog-obj/sonic-the-hedgehog.mtl', obj_src: 'sonic-the-hedgehog-obj/sonic-the-hedgehog.obj'

a9 = Avatar.create src: 'StarWarsVaderTIEFighter.png', name: 'Vader Tie Fighter', description: '3D model of star wars vader tie fighter from ilir bajri', value: 25, is_sale: true, mat_src: 'star-wars-vader-tie-fighter-obj/star-wars-vader-tie-fighter.mtl', obj_src: 'star-wars-vader-tie-fighter-obj/star-wars-vader-tie-fighter.obj'

a10 = Avatar.create src: 'StarWarsArc170PBR.png', name: 'Star Wars Arc 170 PBR', description: '3D Model of Star Wars Arc 170 PBR from Traquemort28', value: 20, is_sale: true, mat_src: 'star-wars-arc-170-pbr-obj/star-wars-arc-170-pbr.mtl', obj_src: 'star-wars-arc-170-pbr-obj/star-wars-arc-170-pbr.obj'

a11 = Avatar.create src: 'FerrariLaferrari.png', name: 'Ferrari Laferrari', description: '3D model of Ferrari Laferrari from Jason Shoumar', value: 20, is_sale: true, mat_src: 'ferrari-laferrari-obj/ferrari-laferrari.mtl', obj_src: 'ferrari-laferrari-obj/ferrari-laferrari.obj'

a12 = Avatar.create src: 'SpaceShuttleOrbiter.png', name: 'Space Shuttle Orbiter', description: '3D model of Space Shuttle Orbiter from Jason Shoumar', value: 20, is_sale: true, mat_src: 'space-shuttle-orbiter-obj/space-shuttle-orbiter.mtl', obj_src: 'space-shuttle-orbiter-obj/space-shuttle-orbiter.obj'


puts "create #{Avatar.all.length} avatars "

u1.avatars << a1 << a4 << a7 << a9
u2.avatars << a2 << a5 << a6 << a10
u3.avatars << a3 << a8
u4.avatars << a11 << a12

a1.phrases << p1
a2.phrases << p2
a3.phrases << p3

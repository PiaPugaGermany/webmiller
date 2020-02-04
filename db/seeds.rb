# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(email: 'pia@holi.cl', password: '123456', role: 0)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Post.delete_all
Post.create([
  {title: 'Nueva imagen',
    description: 'Conoce nuestra nueva imagen corporativa',
    remote_photo_url: 'https://scontent.fscl13-2.fna.fbcdn.net/v/t1.0-9/51352808_2129780287336097_3892806375381663744_n.jpg?_nc_cat=106&_nc_ohc=nmPHxGoJAowAX_C-ZSc&_nc_ht=scontent.fscl13-2.fna&oh=cfbc9f7c75396fa4ee88fa2757076150&oe=5EC202AF',
    user: User.find_by(id: 5)},
  {title: 'Open Showroom 2!',
    description: 'Ven y prúebate nuestros diseños en la segunda versión del showroom de primavera!',
    remote_photo_url: 'https://scontent.fscl13-1.fna.fbcdn.net/v/t1.0-9/47682843_2096022787378514_3085912686253309952_n.jpg?_nc_cat=103&_nc_ohc=lqrqD3aAt_oAX8NJ67G&_nc_ht=scontent.fscl13-1.fna&oh=6c997faf09e4dbad643afeec9787bcff&oe=5EC7904D',
    user: User.find_by(id: 5)},
  {title: '¡Síguenos en Instagram!',
    description: 'Apuesto que ya no usas Facebook como antes...

Raro, ¿no? Pensar que hasta hace algunos años, era casi impensado no usar Facebook en nuestro día a día, y es que la tecnología hoy en día cambia a pasos acelerados.

Personalmente, me gusta mucho más Instagram porque es más fácil encontrar lo que me gusta sin tanta publicidad molesta. Te dejo mi perfil para que veas las últimas novedades y diseños que constantemente estamos confeccionando para ti :)',
    remote_photo_url: 'https://scontent.fscl13-2.fna.fbcdn.net/v/t1.0-9/p960x960/42634056_2053171794996947_1664931591119437824_o.jpg?_nc_cat=101&_nc_ohc=Xwh0POWfqNIAX8c1HvP&_nc_ht=scontent.fscl13-2.fna&_nc_tp=6&oh=fe912f2da760cdd9cf872b10021a5013&oe=5ED04F17',
    user: User.find_by(id: 5)},
  {title: '¡Conoce nuestra nueva colección!',
    description: 'Acabamos de lanzar nuestra colección Verano 2020.

Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.

Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.

Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.

The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
    remote_photo_url: 'https://scontent.fscl13-1.fna.fbcdn.net/v/t1.0-9/27752312_1900220513625410_7371469279501750073_n.jpg?_nc_cat=104&_nc_ohc=olvtOFdSDF0AX8tLQ34&_nc_ht=scontent.fscl13-1.fna&oh=12c3983a2d4c0d98b222a6bdb4db0978&oe=5E904037',
    user: User.find_by(id: 5)},
  ])

 a = Category.create(name: 'Abrigos y chaquetas',
   remote_photo_url:'https://scontent.fscl13-2.fna.fbcdn.net/v/t31.0-8/s960x960/29983436_1927942574186537_7093117109359909625_o.jpg?_nc_cat=100&_nc_ohc=tPAfIxMQ-98AX_6pwo6&_nc_ht=scontent.fscl13-2.fna&oh=0b9454d8d3dd483c59fb5306e1e3d08b&oe=5EC4D73E')

 b = Category.create(name: 'Pantalones y faldas',
   remote_photo_url:'https://scontent.fscl13-1.fna.fbcdn.net/v/t31.0-8/p960x960/22713342_1850746585239470_2643281413168131173_o.jpg?_nc_cat=107&_nc_ohc=joTrr9w78a8AX8N9ps-&_nc_ht=scontent.fscl13-1.fna&_nc_tp=6&oh=f4390b8609e0bbb4a54b3c651fbd4138&oe=5ED24278')

 c = Category.create(name: 'Blusas y poleras',
   remote_photo_url:'https://scontent.fscl13-1.fna.fbcdn.net/v/t31.0-8/p960x960/22770482_1850616771919118_2286493436892180379_o.jpg?_nc_cat=111&_nc_ohc=jx_P6ZxkfaAAX-VZfER&_nc_ht=scontent.fscl13-1.fna&_nc_tp=6&oh=3206a9562a79aac721936e65fb2f8e5a&oe=5ED38F20')

 d = Category.create(name: 'Otros',
   remote_photo_url:'https://scontent.fscl13-1.fna.fbcdn.net/v/t31.0-8/p960x960/23550847_1859409681039827_446515654240418972_o.jpg?_nc_cat=103&_nc_ohc=R1P69WCW_ykAX9J84K7&_nc_ht=scontent.fscl13-1.fna&_nc_tp=6&oh=06159e75de091aa05d981d1e9c7ad443&oe=5EC7C125')

  # Product.delete_all
  Product.create([
    {name: 'Blusa azul',
      description: 'Blusa de algodón bordada color azul marino. Disponible en talla S, M y L.',
      remote_photo_url: 'https://scontent.fscl13-1.fna.fbcdn.net/v/t1.0-9/p960x960/29244287_1918414171806044_9019610039484153856_o.jpg?_nc_cat=107&_nc_ohc=7Nh3Wp_D7M4AX8srfXm&_nc_ht=scontent.fscl13-1.fna&_nc_tp=6&oh=b321f7d353f08dbd876f0fae5a62bd60&oe=5ED366AE',
      price: 24990,
    category: c},
    {name: 'Enterito bordado!',
      description: 'Enterito de lino bordado a mano, disponible en tallas S, M y L.',
      remote_photo_url: 'https://scontent.fscl13-1.fna.fbcdn.net/v/t1.0-9/26167115_1879936872320441_8589254039513214499_n.jpg?_nc_cat=110&_nc_ohc=IgYBnz28o6UAX8KkhcZ&_nc_ht=scontent.fscl13-1.fna&oh=55450c45230fde16e626bd9ff243045a&oe=5ED97981',
      price: 38990,
    category: d},
    {name: 'Pantalón 3/4 beige',
      description: 'Pantalón de tela color beige. Disponible en tallas S, M y L.',
      remote_photo_url: 'https://scontent.fscl13-2.fna.fbcdn.net/v/t31.0-8/p960x960/28516249_1913875205593274_4123476162630334351_o.jpg?_nc_cat=109&_nc_ohc=lUkGn6X1PmMAX8djQXJ&_nc_ht=scontent.fscl13-2.fna&_nc_tp=6&oh=99313cdce035dfbd6a49ead935446b9e&oe=5EBE0ED6',
      price: 46500,
    category: b},
    {name: 'Abrigo azul rey',
      description: 'Abrigo color azul rey confeccionado con paño 100% Lana, ideal para el invierno. Disponible en tallas S, M y L.',
      remote_photo_url: 'https://scontent.fscl13-2.fna.fbcdn.net/v/t1.0-9/s960x960/39928653_2033299720317488_4788369793184956416_o.jpg?_nc_cat=105&_nc_ohc=cCTBVTqW80EAX8uBjpU&_nc_ht=scontent.fscl13-2.fna&oh=8aca2ffb82466e90d6586c2b68f49d93&oe=5EBB3E2C',
      price: 120000,
    category: a},
    {name: 'Chaqueta B y N',
      description: 'Chaqueta estampada con mosaico en blanco y negro. Disponible en tallas S, M y L',
      remote_photo_url: 'https://scontent.fscl13-2.fna.fbcdn.net/v/t1.0-9/s960x960/67719842_2250333998614058_560512765639262208_o.jpg?_nc_cat=102&_nc_ohc=fBV-jss7KQkAX-30dVe&_nc_ht=scontent.fscl13-2.fna&oh=2e288ab0d87d96ed4ed39217703930e1&oe=5EBE9666',
      price: 55990,
    category: a},
    {name: 'Pantalón salmón',
      description: 'Pantalón de tela color salmón, corte 3/4. Disponible en tallas S, M y L.',
      remote_photo_url: 'https://scontent.fscl13-2.fna.fbcdn.net/v/t1.0-9/s960x960/68579603_2258510841129707_6045846826299424768_o.jpg?_nc_cat=101&_nc_ohc=7AMRoac4xhUAX9e8n_m&_nc_ht=scontent.fscl13-2.fna&oh=9f4ff948eec285b6f00f506550bb4405&oe=5ED82D87',
      price: 64990,
    category: b},
    ])

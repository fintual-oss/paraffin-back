ale = User.create(name: 'Alejandro Leiva', email: 'ale@paraffin.com', password: 'password')
cris = User.create(name: 'Cristopher "Tofu" Gómez', email: 'cris@paraffin.com', password: 'password')
carlos = User.create(name: 'Carlos "Carlangas" Riquelme', email: 'carlos@paraffin.com', password: 'password')
pablo = User.create(name: 'Pablo "Pabs" Abara', email: 'pablo@paraffin.com', password: 'password')
ceci = User.create(name: 'Cecilia Ramallo', email: 'cecy@paraffin.com', password: 'password')
vane = User.create(name: 'Vanesa Pulgar', email: 'vane@paraffin.com', password: 'password')
isa = User.create(name: 'Isabel Vega', email: 'isa@paraffin.com', password: 'password')
juan = User.create(name: 'Juan Santos', email: 'juan@paraffin.com', password: 'password')
nacho = User.create(name: 'Ignacio Heck', email: 'nacho@paraffin.com', password: 'password')
ronny = User.create(name: 'Ronald Tichauer', email: 'ronny@paraffin.com', password: 'password')
valentin = User.create(name: 'Valentin Jadot', email: 'valentin@paraffin.com', password: 'password')
manu = User.create(name: 'Manuel Pérez', email: 'manu@paraffin.com', password: 'password')

fin = Curriculum.create(name: 'FIN: Fullstack Developer')

learning_unit_names = ['Docker','Git - control de versiones','Ruby','Rails','JavaScript','React','NextJS']
learning_units = []

learning_unit_names.each do |unit_name|
  learning_units.push(LearningUnit.create(name: unit_name, description: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", image_url: '/src/public/LearningUnit.jpg'))
end

docker,git,ruby,rails,js,react,nextjs = learning_units

cycle1 = Cycle.create(curriculum: fin, name: 'Backend basics', order_number: 1, learning_goals_description: 'Learn development fundamentals. Learn backend basics', challenge_description: 'Develop a monolithic basic web app that enables users to send messages to each other', boilerplate_url: 'https://github.com/fintual-oss/paraffin-back')
cycle2 = Cycle.create(curriculum: fin, name: 'Frontend basics', order_number: 2, learning_goals_description: 'Create an API. Learn frontend basics', challenge_description: 'Develop an API based on the boilerplate to consume it in a front-only web app that enables users to send messages to each other', boilerplate_url: 'https://github.com/fintual-oss/paraffin-front')
cycle3 = Cycle.create(curriculum: fin, name: 'Product vision', order_number: 3, learning_goals_description: 'Create a proffesional level web app service', challenge_description: 'Putting previous cycles learnings together by finishing up your web app with a product vision in mind', boilerplate_url: 'https://github.com/fintual-oss/paraffin-back')

[docker, git, ruby, rails].each do |unit|
  CycleLearningUnit.create(cycle: cycle1, learning_unit: unit)
end

[js, react, nextjs].each do |unit|
  CycleLearningUnit.create(cycle: cycle2, learning_unit: unit)
end

[nextjs].each do |unit|
  CycleLearningUnit.create(cycle: cycle3, learning_unit: unit)
end

CurriculumAffiliation.create(curriculum: fin, learning_unit: docker)
CurriculumAffiliation.create(curriculum: fin, learning_unit: git)
CurriculumAffiliation.create(curriculum: fin, learning_unit: ruby)
CurriculumAffiliation.create(curriculum: fin, learning_unit: rails)
CurriculumAffiliation.create(curriculum: fin, learning_unit: js)
CurriculumAffiliation.create(curriculum: fin, learning_unit: react)
CurriculumAffiliation.create(curriculum: fin, learning_unit: nextjs)

docker_rails = Resource.create(user: manu, learning_unit: docker, name: 'Quickstart: Compose and Rails', url: 'https://docs.docker.com/samples/rails/')
github = Resource.create(user: valentin, learning_unit: git, name: 'Introduction to Git and GitHub', url: 'https://www.coursera.org/learn/introduction-git-github')
git_branching = Resource.create(user: cris, learning_unit: git, name: 'Learn Git Branching', url: 'https://learngitbranching.js.org/?locale=es_AR')
ruby_udemy = Resource.create(user: manu, learning_unit: ruby, name: 'Learn to Code with Ruby', url: 'https://www.udemy.com/course/learn-to-code-with-ruby-lang')
rails_ar = Resource.create(user: ale, learning_unit: rails, name: 'Active Record Basics', url: 'https://guides.rubyonrails.org/active_record_basics.html')
rails_ten = Resource.create(user: manu, learning_unit: rails, name: 'Learn Rails (10 hrs)', url: 'https://www.codecademy.com/learn/learn-rails')
rails_rspec = Resource.create(user: ronny, learning_unit: rails, name: 'Introduction to RSpec', url: 'https://dev.to/kevinluo201/introduce-rspec-request-spec-4pbl')
js_codepen = Resource.create(user: isa, learning_unit: js, name: 'CodePen - interactivo para aprender HTML/CSS', url: 'https://codepen.io/')
js_prettier = Resource.create(user: isa, learning_unit: js, name: 'Prettier: auto-formatting', url: 'https://prettier.io/')
react_redux = Resource.create(user: carlos, learning_unit: react, name: 'React - the complete guide (incluye redux)', url: 'https://www.udemy.com/course/react-the-complete-guide-incl-redux/')
react_ten = Resource.create(user: juan, learning_unit: react, name: 'React Tutorial - 11 horas', url: 'https://scrimba.com/learn/learnreact')
next_eleven = Resource.create(user: isa, learning_unit: nextjs, name: 'Data Fetching', url: 'https://nextjs.org/docs/basic-features/data-fetching/overview')
next_fireship = Resource.create(user: valentin, learning_unit: nextjs, name: 'Fireship.io', url: 'https://fireship.io/courses/react-next-firebase/')
next_front = Resource.create(user: isa, learning_unit: nextjs, name: 'How to separate front & back', url: 'https://medium.com/@fishpercolator/how-to-separate-frontend-backend-with-rails-api-nuxt-js-and-devise-jwt-cf7dd9da9d16')
react_scrimba = Resource.create(user: nacho, learning_unit: react, name: 'Learn React in Scrimba', url: 'https://scrimba.com/learn/learnreact')

ResourceEvaluation.create(user: cris, resource: docker_rails, evaluation: 2, comment: "Gran curso")
ResourceEvaluation.create(user: juan, resource: docker_rails, evaluation: 3, comment: "No lo comprendi")
ResourceEvaluation.create(user: vane, resource: docker_rails, evaluation: 5, comment: "MEJOR TUTORIAL")
ResourceEvaluation.create(user: ronny, resource: github, evaluation: 4, comment: "Recomiendo usar github actions")
ResourceEvaluation.create(user: ceci, resource: github, evaluation: 5, comment: "muy bien explicado")
ResourceEvaluation.create(user: cris, resource: git_branching, evaluation: 5, comment: "explicación muy interactiva de cómo funcionan las ramas")
ResourceEvaluation.create(user: manu, resource: ruby_udemy, evaluation: 5, comment: "si necesitan la clave está en Slack")
ResourceEvaluation.create(user: ale, resource: ruby_udemy, evaluation: 4, comment: "es muy detallado, igual se pueden saltar algunas partes")
ResourceEvaluation.create(user: nacho, resource: ruby_udemy, evaluation: 2, comment: "demasiado largo para mi gusto")
ResourceEvaluation.create(user: ale, resource: rails_ar, evaluation: 5, comment: "directamente de la documentación de rails")
ResourceEvaluation.create(user: carlos, resource: rails_ten, evaluation: 4, comment: "está preciso y conciso")
ResourceEvaluation.create(user: vane, resource: rails_ten, evaluation: 5, comment: "definitivamente MEJOR CURSO de rails")
ResourceEvaluation.create(user: juan, resource: rails_rspec, evaluation: 4, comment: "buen punto de partida para lanzarse con tests")
ResourceEvaluation.create(user: nacho, resource: js_codepen, evaluation: 5, comment: "muy interactiva la plataforma, a mi me sirvió bastante")
ResourceEvaluation.create(user: ale, resource: js_codepen, evaluation: 5, comment: "muy bueno y práctico, está un poco desactualizado siiiii")
ResourceEvaluation.create(user: pablo, resource: js_prettier, evaluation: 2, comment: "destesto los linter")
ResourceEvaluation.create(user: ronny, resource: js_prettier, evaluation: 5, comment: "siempre se pueden eliminar reglas")
ResourceEvaluation.create(user: manu, resource: react_ten, evaluation: 2, comment: "maoma no más")
ResourceEvaluation.create(user: valentin, resource: next_fireship, evaluation: 5, comment: "este profe es la zolaaaa")
ResourceEvaluation.create(user: isa, resource: next_front, evaluation: 1, comment: "no lo hagan :(")

LearningUnitSuccession.create(cycle: cycle1, predecessor: git, successor: ruby)
LearningUnitSuccession.create(cycle: cycle1, predecessor: ruby, successor: rails)

CompletedLearningUnit.create(user: ale, learning_unit: git)
CompletedLearningUnit.create(user: ale, learning_unit: docker)
CompletedLearningUnit.create(user: ale, learning_unit: ruby)
CompletedLearningUnit.create(user: ale, learning_unit: js)

paid = Label.create(name: "Paid", description: "This resource is paid")
media = Label.create(name: "Media", description: "Includes a video")
article = Label.create(name: "Article", description: "Is an article")


[github, ruby_udemy, react_redux].each do |resource|
  ResourceLabel.create(resource: resource, label_id: paid)
end

[github, ruby_udemy, rails_ten, react_redux].each do |resource|
  ResourceLabel.create(resource: resource, label: media)
end

[docker_rails, rails_ar, rails_rspec, next_eleven, next_front].each do |resource|
  ResourceLabel.create(resource: resource, label: article)
end

if Rails.env.development?
  AdminUser.create!(email: 'ale@paraffin.com', password: 'password',
                    password_confirmation: 'password')
end

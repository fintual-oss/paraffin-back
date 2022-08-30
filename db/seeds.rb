# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created
# alongside the database with db:setup).

f_user = User.create(name: 'Ale', email: 'ale@paraffin.com', password: 'password')
s_user = User.create(name: 'Cris', email: 'cris@paraffin.com', password: 'password')
t_user = User.create(name: 'Rony', email: 'rony@paraffin.com', password: 'password')
User.create(name: 'Ceci', email: 'ceci@paraffin.com', password: 'password')
first_curr = Curriculum.create(name: 'Fullstack Developer')
f_learning_unit = LearningUnit.create(name: 'Ruby')
s_learning_unit = LearningUnit.create(name: 'Rails')
CurriculumAffiliation.create(curriculum: first_curr,
                             learning_unit: f_learning_unit)
CurriculumAffiliation.create(curriculum: first_curr,
                             learning_unit: s_learning_unit)
f_resource = Resource.create(user: f_user, learning_unit: f_learning_unit,
                             name: 'Ruby for dummies', url: 'fakeurl.io')
ResourceComment.create(user: s_user, resource: f_resource,
                       content: 'Vale pico tu wea')
ResourceEvaluation.create(user: t_user, resource: f_resource, evaluation: 5)
ResourceEvaluation.create(user: s_user, resource: f_resource, evaluation: 3)
CompletedLearningUnit.create(user: f_user, learning_unit: f_learning_unit)
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password',
                    password_confirmation: 'password')
end

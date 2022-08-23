# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


user_1 = User.create(name: "Ale")
user_2 = User.create(name: "Cris")
user_3 = User.create(name: "Rony")
user_4 = User.create(name: "Ceci")
curriculum_1 = Curriculum.create(name: "Fullstack Developer")
learning_unit_1 = LearningUnit.create(name: "Ruby")
learning_unit_2 = LearningUnit.create(name: "Rails")
c_a_1 = CurriculumAffiliation.create(curriculum: curriculum_1, learning_unit: learning_unit_1)
c_a_2 = CurriculumAffiliation.create(curriculum: curriculum_1, learning_unit: learning_unit_2)
resource_1 = Resource.create(user: user_1, learning_unit: learning_unit_1, name: 'Ruby for dummies', url: 'fakeurl.io')
resource_comment_1 = ResourceComment.create(user: user_2, resource: resource_1, content: 'Vale pico tu wea')
resource_evaluation_1 = ResourceEvaluation.create(user: user_3, resource: resource_1, evaluation: 5)
resource_evaluation_2 = ResourceEvaluation.create(user: user_4, resource: resource_1, evaluation: 3)

#completed_learning_unit_1 = CompletedLearningUnit.create(user: user_4, learning_unit: learning_unit_1)

#p user_1, curriculum_1, learning_unit_1, learning_unit_2, c_a_1, c_a_2, resource_1, resource_comment_1, resource_evaluation_1
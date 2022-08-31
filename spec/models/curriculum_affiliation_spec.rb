require 'rails_helper'

RSpec.describe CurriculumAffiliation, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:curriculum_affiliation)).to be_valid
    end
  end

  context 'when has valid attributes' do
    let(:curriculum_affiliation) do
      build :curriculum_affiliation,
            curriculum: build(:curriculum),
            learning_unit: build(:learning_unit)
    end

    it do
      expect(curriculum_affiliation).to be_valid
    end
  end

  context 'when has has no curriculum_id' do
    let(:curriculum_affiliation) do
      build :curriculum_affiliation,
            curriculum: nil
    end

    it do
      expect(curriculum_affiliation).not_to be_valid
    end
  end

  context 'when has has no learning_unit_id' do
    let(:curriculum_affiliation) do
      build :curriculum_affiliation,
            learning_unit: nil
    end

    it do
      expect(curriculum_affiliation).not_to be_valid
    end
  end
end

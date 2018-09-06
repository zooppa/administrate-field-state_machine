require 'spec_helper'

describe Administrate::Field::StateMachine do
  subject { described_class.new(:field, data, :show) }

  describe '#to_partial_path' do
    let(:data) { '' }

    it 'returns a partial based on the page being rendered' do
      path = subject.to_partial_path
      expect(path).to eq('/fields/state_machine/show')
    end
  end
end

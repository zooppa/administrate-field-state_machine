require 'spec_helper'

describe Administrate::Field::StateMachine do
  subject { described_class.new(:field, data, :show) }

  let(:data) { '' }
  let(:options) { {} }

  before { allow(subject).to receive(:options).and_return(options) }

  describe '#to_partial_path' do
    it 'returns a partial based on the page being rendered' do
      path = subject.to_partial_path
      expect(path).to eq('/fields/state_machine/show')
    end
  end

  describe '#named_event' do
    let(:output) { subject.named_event }

    before { allow(subject).to receive(:attribute).and_return('state') }

    it 'returns the correct method name' do
    	expect(output).to eq 'state_event'
    end
  end

  describe '#named_paths' do
    let(:output) { subject.named_paths }
    
    before { allow(subject).to receive(:attribute).and_return('state') }

    it 'returns the default method name' do
      expect(output).to eq 'state_paths'
    end
  end
end

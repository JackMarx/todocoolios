require_relative 'todo'
require 'rspec'

describe 'todo' do
  describe 'task' do
    let(:task){ Task.new(title: "Buff shoes", description: "With tongue") }

    it 'has a title' do
      expect(task.title).to eq("Buff shoes")
    end

    it 'has a description' do
      expect(task.description).to eq("With tongue")
    end

    it 'has a status, and the status is "incomplete" if it is not defined' do
      expect(task.status).to eq("incomplete")
    end

    it 'has a created_at timestamp' do
      expect(task.created_at).to_not be nil
    end
  end
end

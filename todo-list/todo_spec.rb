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
      expect(task.created_at).to be_instance_of(DateTime)
    end

    describe '#mark_as_complete!' do
      it 'should set status to "complete"' do
        task.mark_as_complete!
        expect(task.status).to eq("complete")
      end
    end

    describe '#mark_as_incomplete!' do
      it 'should set status to "incomplete"' do
        task.mark_as_incomplete!
        expect(task.status).to eq("incomplete")
      end
    end

    describe '#completed?' do
      it 'should return true if the task is completed' do
        task.mark_as_complete!
        expect(task.completed?).to be true
      end

      it 'should return false if the task is not completed' do
        task.mark_as_incomplete!
        expect(task.completed?).to be false
      end
    end
  end

  describe 'list' do
    let(:list){ List.new(title: "Stuff to ignore today") }

    it 'has a title' do
      expect(list.title).to eq("Stuff to ignore today")
    end
  end
end

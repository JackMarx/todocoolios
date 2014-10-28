describe 'todo' do
  describe 'task' do
    let(:task){ Task.new }

    it 'has a title' do
      expect(task.method_defined?(:title)).to be true
    end

    it 'has a description' do
      expect(task.method_defined?(:description)).to be true
    end

    it 'has a status' do
      expect(task.method_defined?(:status)).to be true
    end

    it 'has a created_at timestamp' do
      expect(task.method_defined?(:created_at)).to be true
    end
  end
end

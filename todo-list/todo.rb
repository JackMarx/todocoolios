class Task
  attr_reader :title, :description, :status, :created_at
  def initialize(args)
    @title = args[:title]
    @description = args[:description]
    @status ||= "incomplete"
    @created_at = "apples"
  end
end

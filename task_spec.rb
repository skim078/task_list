require 'rspec'
require_relative 'task'

# As a developer, I can create a Task.
describe Task do



  it "is a task" do
    expect{Task.new("title", "test description")}.to_not raise_error
  end

# As a developer, I can give a Task a title and retrieve it.
  it "has a title" do
    a_task = Task.new("title", "test description")
    expect(a_task.title).to eq "title"
  end

# As a developer, I can give a Task a description and retrieve it.
  it "has a description" do
    a_task = Task.new("title", "test description")
    expect(a_task.description).to eq "test description"
  end

  # As a developer, I can mark a Task done.
  it "can be marked done" do
    a_task = Task.new("title", "test description")
    expect(a_task.status).to eq true
  end

  # As a developer, when I print a Task that is done, its status is shown.
  it "can print out status when done" do
    a_task = Task.new("title", "test description")
    a_task.status
    expect(a_task.to_s).to eq("Title: title, Description: test description")
  end

end

require 'rspec'
require_relative 'task_list'
require_relative 'task'

describe TaskList do

  # As a developer, I can add all of my Tasks to a TaskList.
  it "is a list" do
    expect{TaskList.new}.to_not raise_error
  end

  # As a developer, I can add all of my Tasks to a TaskList.
  it "can get task items to tasklist" do
    adams_task1 = Task.new("Get coffee" , "go to Vons")
    adams_task2 = Task.new("Pick Wife Up" , "go to airport")
    adams_task3 = Task.new("Get Gas" , "go to gas station")
    adams_task_list = TaskList.new
    adams_task_list.add_task(adams_task1)
    adams_task_list.add_task(adams_task2)
    adams_task_list.add_task(adams_task3)
    expect(adams_task_list.print_list.length).to eq 3
  end

# dont forget to write the test for the sort by completion method.



end

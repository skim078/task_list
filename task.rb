class Task < TaskList

  def initialize(title, description)
    @title = title
    @description = description
    @done = false
  end

  def title
    @title
  end

  def description
    @description
  end

  def status
    if @done == false
        @done = true
    end
  end

  def done
    @done
  end

  def done?
    if @done == false
        puts false
      else
        puts true
    end
  end

  def to_s
   "Title: #{@title}, Description: #{@description}"
  end



end

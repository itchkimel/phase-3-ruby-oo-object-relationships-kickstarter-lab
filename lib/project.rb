
class Project
  attr_reader :title
  
  def initialize (title)
    @title = title 
  end

  def add_backer (backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    project = ProjectBacker.all.select do |project_instance|
        project_instance.project == self
      end
      project.map do |project_instance| 
        project_instance.backer
      end
  end

end
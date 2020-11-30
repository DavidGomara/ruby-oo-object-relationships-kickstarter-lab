class Backer
    
    attr_reader :name
    
    def initialize(name)
        @name = name
    end 
    
    def back_project(project)
        back_project = ProjectBacker.new(project, self)
        back_project
    end 
    
    def backed_projects
        ProjectBacker.all.select { |projects| projects.backer == self}.collect { |project| project.project } 
    end 
    
end 
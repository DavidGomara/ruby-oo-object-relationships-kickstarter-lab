class Project
    
    attr_reader :title
    
    def initialize(title)
        @title = title
    end 
    
    def add_backer(backer)
        new_projectbacker = ProjectBacker.new(self, backer)
        new_projectbacker
    end 
    
    def backers
        ProjectBacker.all.select { |projects| projects.project == self}.collect { |project| project.backer } 
    end 
    
end 
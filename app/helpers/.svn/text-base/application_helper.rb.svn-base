# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def string_path(string)
    string
  end
  
  def markaby(&proc)
    assigns = {}
    instance_variables.each do |name|
      assigns[ name[1..-1] ] =  instance_variable_get(name)
    end
    Markaby::Rails::Builder.new(assigns, self).capture(&proc)
  end
  
  # This will let you define helper methods which generate markaby (by calling the markaby method with a block
  #   eg:
  #   def header(title)
  #       markaby do
  #           div.header do
  #               h1 title
  #           end
  #       end
  #    end
    
  
end

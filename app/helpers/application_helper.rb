module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Beatsdb"      
    end
  end
end

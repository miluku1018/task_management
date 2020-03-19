module ApplicationHelper
  
  def sortable(column, title = nil)
  
    case column 
    when sort_column
      css_class = "#{sort_direction}"
    else
      css_class = nil 
    end   

    case sort_direction
    when "asc"
      direction = "desc"
    else
      direction = "asc"  
    end

    link_to title, {sort: column, direction: direction}, {class: css_class}
  end
end

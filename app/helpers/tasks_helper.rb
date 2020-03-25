module TasksHelper
  def sortable(column, title)
    if params[:sort] == "#{column}_asc"
      symbol = '▼'
    else
      symbol = '▲'
    end
    
    if params[:sort] == "#{column}_asc"
      direction = "#{column}_desc"
    else
      direction = "#{column}_asc"
    end

    link_to title+symbol, {:sort => direction}
  end
end


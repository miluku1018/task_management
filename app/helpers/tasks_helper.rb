module TasksHelper
  def sortable(column, title)
    case params[:sort]
    when "#{column}_asc"
      symbol = '▲'
    when "#{column}_desc"
      symbol = '▼'
    else
      symbol = ''
    end

    if params[:sort] == "#{column}_asc"
      direction = "#{column}_desc"
    else
      direction = "#{column}_asc"
    end

    link_to title+symbol, {:sort => direction}
  end
end


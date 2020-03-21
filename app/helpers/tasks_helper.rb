module TasksHelper
  def sortable(column)
    if params[:sort] == 'end_at_asc'
      tasks_path(:sort => "#{column}_desc")
    else
      tasks_path(:sort => "#{column}_asc")
    end
  end
end
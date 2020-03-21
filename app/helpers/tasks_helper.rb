module TasksHelper
  def sortable
    if params[:sort] == 'end_at_asc'
      tasks_path(:sort => "end_at_desc")
    else
      tasks_path(:sort => "end_at_asc")
    end
  end
end
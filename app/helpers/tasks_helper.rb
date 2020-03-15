module TasksHelper
  def end_at_order
    if params[:order] == 'end_at_asc'
      tasks_path(:order => 'end_at_desc')
    else 
      tasks_path(:order => 'end_at_asc')
    end
  end
end
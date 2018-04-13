module ApplicationHelper
  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end

  def current_class2?(test_path)
    return 'active2' if request.path == test_path
    ''
  end
end

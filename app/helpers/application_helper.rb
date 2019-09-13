module ApplicationHelper
  def self.do_not_show_navbar?(controller_name, action_name)
    (controller_name == 'sessions' && action_name == 'new') ||
    (controller_name == 'registrations' && action_name == 'create') ||
    (controller_name == 'registrations' && action_name == 'new')
  end
end

module RedmineInheritMembers
  module Hooks
    class ViewProjectsFormHook < Redmine::Hook::ViewListener
      render_on(:view_projects_form, :partial => 'settings/projects_form', :layout => false)
    end
  end
end

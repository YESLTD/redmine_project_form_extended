module RedmineProjectFormExtended
  module Hooks
    class ViewProjectsFormHook < Redmine::Hook::ViewListener
      render_on(:view_layouts_base_html_head, :partial => 'settings/projects_form', :layout => false)
    end
  end
end

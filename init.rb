require 'redmine'

Redmine::Plugin.register :redmine_project_form_extended do
  name 'Redmine project form extended plugin'
  author 'Jacek Grzybowski'
  description "Allows to inherit members from parent project by default and display confirmation dialog when attempting to make new project public"
  version '0.1'
  url 'http://github.com/efigence/redmine_project_form_extended'
  author_url 'http://efigence.com'

  settings :default => {
    public_cofirmation: 'default'
  }, :partial => 'settings/project_form_extended_settings'
end

ActionDispatch::Callbacks.to_prepare do
  require_dependency 'project'
  Project.send(:include, RedmineProjectFormExtended::Patches::ProjectPatch)
  ProjectsController.send(:include, RedmineProjectFormExtended::Patches::ProjectsControllerPatch)
end

require 'redmine_project_form_extended/hooks/view_projects_form_hook'

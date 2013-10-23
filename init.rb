require 'redmine'

Redmine::Plugin.register :redmine_project_form_extended do
  name 'Redmine project form extended plugin'
  author 'Jacek Grzybowski'
  description "Extends project form functionalities"
  version '0.0.1'
  url 'http://github.com/efigence/redmine_project_form_extended'
  author_url 'http://efigence.com'

  settings :default => {}, :partial => 'settings/settings'
end

ActionDispatch::Callbacks.to_prepare do
  require_dependency 'project'
  Project.send(:include, RedmineProjectFormExtended::Patches::ProjectPatch)
end

require 'redmine_project_form_extended/hooks/view_projects_form_hook'

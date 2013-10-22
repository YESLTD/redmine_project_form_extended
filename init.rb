require 'redmine'

Redmine::Plugin.register :redmine_inherit_members do
  name 'Redmine Inherit Members plugin'
  author 'Jacek Grzybowski'
  description "'inherit members' options is checked by default when creating new project"
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  settings :default => { inherit: 'enabled' }, :partial => 'settings/inherit_members'
end

ActionDispatch::Callbacks.to_prepare do
  require_dependency 'project'
  Project.send(:include, RedmineInheritMembers::Patches::ProjectPatch)
end

require 'redmine_inherit_members/hooks/view_projects_form_hook'

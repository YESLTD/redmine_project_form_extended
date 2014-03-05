module RedmineProjectFormExtended
  module Patches
    module ProjectsControllerPatch
      def self.included(base)
        base.class_eval do
          unloadable

          skip_before_filter :find_project, :authorize, :only => :unpublish_all

          before_filter :require_admin, :only => :unpublish_all

          def unpublish_all
            Project.where(is_public: true).each do |project|
              project.update_attribute(:is_public, false)
            end
            redirect_to "#{home_url}settings/plugin/redmine_project_form_extended", notice: t(:unpublish_success)
          end
        end
      end
    end
  end
end

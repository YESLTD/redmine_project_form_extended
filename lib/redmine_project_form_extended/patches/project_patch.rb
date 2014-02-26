module RedmineProjectFormExtended
  module Patches
    module ProjectPatch
      def self.included(base)
        base.class_eval do
          unloadable
          before_save :make_not_public, :if => :shouldnt_be_public

          def make_not_public
            self.is_public = false
          end

          def shouldnt_be_public
            Setting.plugin_redmine_project_form_extended.try(:[], 'public_cofirmation') == 'disable' && is_public
          end

          def inherit_members
            default = super
            self.new_record? || default.nil? ? Setting.plugin_redmine_project_form_extended.try(:[], 'inherit_members') == '1' : default
          end
        end
      end
    end
  end
end

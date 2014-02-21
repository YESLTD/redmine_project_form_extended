# Redmine project form extended

Extends new project form functionality by allowing to inherit members from parent project by default and display confirmation dialog when attempting to make new project public.

# Requirements

Developed & tested on Redmine 2.3.3.

# Installation

1. Go to your Redmine installation's plugins/ directory.
2. `git clone http://github.com/efigence/redmine_project_form_extended`
3. Restart Redmine.

# Usage

To configure plugin visit Administration -> Plugin. Afterwards, click on `Configure` link next to the plugin name.

There you can decide, whether:

* projects should inherit members from parent project by default
* confirmation dialog should show up when submitting form for new project with `Public` option checked
* or creating public projects show be disabled

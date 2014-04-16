OpenProject Documents Plugin
===========================

This plugin adds features to connect and categorize documents with your project.

Under `Modules >> Administration >> Enumerations` you can find the section `Document categories`
where you can define several document categories that projects can use to categorize their documents.

When you go to any of your projects you can see the entry `Documents` in the main menu. There you can
attach new documents to the project by following the `New document` link located in the top right corner of the page.

The form allows you to select one of the categories you defined earlier, choose a title and define a description.
You can attach files from your local hard disk to the document entry which will make them available to anybody
who has access to the document.

Requirements
------------

The OpenProject Documents plug-in requires the [OpenProject Core](https://github.com/opf/openproject/) in version greater or equal to *3.0.0*.


Installation
------------

OpenProject Documents depends on OpenProject Plugins. Thus, if you haven't done it already, add the following line to the `Gemfile.plugins` in your OpenProject installation:

`gem "openproject-plugins", git: "https://github.com/opf/openproject-plugins.git", :branch => "stable"`

For OpenProject Documents itself you need to add the following line to the `Gemfile.plugins` of OpenProject:

`gem "openproject-documents", git: "https://github.com/opf/openproject-documents.git", :branch => "stable"`

Afterwards, run:

`bundle install`

This plugin contains migrations. To migrate the database, run:

`rake db:migrate`


Deinstallation
--------------

Remove the line

`gem "openproject-documents", git: "https://github.com/opf/openproject-documents.git", :branch => "stable"`

from the file `Gemfile.plugins` and run:

`bundle install`

Please not that this leaves plugin data in the database. Currently, we do not support full uninstall of the plugin.


Bug Reporting
-------------

If you find any bugs, you can create a bug ticket at

https://www.openproject.org/projects/documents


Development
-----------

To contribute, you can create pull request on the official repository at
`https://github.com/opf/openproject-documents`

### Setup

To be able to run specs you need to run them from the openproject root directory.  Assuming this structure:

    code
      -> openproject
      -> openproject-documents

This is how you run your specs

    cd code/openproject
    rspec ../openproject-documents

Before you can run these tests you will need to have the link the plugin in your openproject Gemfile.plugins

    gem "openproject-plugins", git: "https://github.com/opf/openproject-plugins.git", :branch => "stable"
    gem "openproject-documents", path: "../openproject-documents" 

Then you need to migrate and prepare the test database

    bundle
    rake db:migrate
    rake db:test:load

Licence
-------

Copyright (C) 2009-2014 the OpenProject Foundation (OPF)
Copyright (C) 2006-2013 Jean-Philippe Lang
Copyright (C) 2010-2013 the ChiliProject Team

This plugin is licensed under the GNU GPL v3. See doc/COPYRIGHT.md and doc/GPL.txt for details.

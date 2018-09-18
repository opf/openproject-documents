#-- copyright
# OpenProject Documents Plugin
#
# Former OpenProject Core functionality extracted into a plugin.
#
# Copyright (C) 2009-2014 the OpenProject Foundation (OPF)
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License version 3.
#
# OpenProject is a fork of ChiliProject, which is a fork of Redmine. The copyright follows:
# Copyright (C) 2006-2013 Jean-Philippe Lang
# Copyright (C) 2010-2013 the ChiliProject Team
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
# See doc/COPYRIGHT.rdoc for more details.
#++

require 'spec_helper'

describe DocumentsController do
  describe "routing" do
    it { 
      expect(get('/projects/567/documents')).to route_to(controller: 'documents',
                                                         action: 'index',
                                                         project_id: '567' ) 
    }

    it { 
      expect(get('/projects/567/documents/new')).to route_to(controller: 'documents',
                                                             action: 'new',
                                                             project_id: '567' ) 
    }

    it { 
      expect(get('/documents/22')).to route_to(controller: 'documents',
                                               action: 'show',
                                               id: '22') 
    }

    it { 
      expect(get('/documents/22/edit')).to route_to(controller: 'documents',
                                                    action: 'edit',
                                                    id: '22') 
    }

    it { 
      expect(post('/projects/567/documents')).to route_to(controller: 'documents',
                                                          action: 'create',
                                                          project_id: '567') 
    }

    it { 
      expect(put('/documents/567')).to route_to(controller: 'documents',
                                                action: 'update',
                                                id: '567') 
    }

    it { 
      expect(delete('/documents/567')).to route_to(controller: 'documents',
                                                   action: 'destroy',
                                                   id: '567') 
    }
  end
end

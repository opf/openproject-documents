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

describe "Journalized Objects" do
  before(:each) do
    @type ||= FactoryBot.create(:type_feature)
    @project ||= FactoryBot.create(:project_with_types)
    @current = FactoryBot.create(:user, login: "user1", mail: "user1@users.com")
    allow(User).to receive(:current).and_return @current
  end

  it 'should work with documents' do
    @document ||= FactoryBot.create(:document)

    initial_journal = @document.journals.first
    recreated_journal = @document.recreate_initial_journal!

    expect(initial_journal).to be_identical(recreated_journal)
  end
end

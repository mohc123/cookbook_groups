#
# Cookbook Name:: groups
# Recipe:: default
#
# Copyright 2014, D.A.Consortium Inc.
#
# All rights reserved - Do Not Redistribute
#

groups = data_bag 'groups'

groups.each do |group|
  g = data_bag_item('groups', group)
  group g['groupname'] do
    gid g['gid']
    members g['members'] || []
    action [:create, :manage]
  end
end

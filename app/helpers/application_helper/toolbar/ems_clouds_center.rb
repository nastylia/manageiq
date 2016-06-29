class ApplicationHelper::Toolbar::EmsCloudsCenter < ApplicationHelper::Toolbar::Basic
  button_group('ems_cloud_vmdb', [
    select(
      :ems_cloud_vmdb_choice,
      'fa fa-cog fa-lg',
      t = N_('Configuration'),
      t,
      :items => [
        button(
          :ems_cloud_refresh,
          'fa fa-refresh fa-lg',
          N_('Refresh relationships and power states for all items related to the selected Cloud Providers'),
          N_('Refresh Relationships and Power States'),
          :url_parms => "main_div",
          :confirm   => N_("Refresh relationships and power states for all items related to the selected Cloud Providers?"),
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :ems_cloud_discover,
          'fa fa-search fa-lg',
          t = N_('Discover Cloud Providers'),
          t,
          :url       => "/discover",
          :url_parms => "?discover_type=ems"),
        separator,
        button(
          :ems_cloud_new,
          'pficon pficon-add-circle-o fa-lg',
          t = N_('Add a New Cloud Provider'),
          t,
          :url => "/new"),
        button(
          :ems_cloud_edit,
          'pficon pficon-edit fa-lg',
          N_('Select a single Cloud Provider to edit'),
          N_('Edit Selected Cloud Provider'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1"),
        button(
          :ems_cloud_delete,
          'pficon pficon-delete fa-lg',
          N_('Remove selected Cloud Providers from the VMDB'),
          N_('Remove Cloud Providers from the VMDB'),
          :url_parms => "main_div",
          :confirm   => N_("Warning: The selected Cloud Providers and ALL of their components will be permanently removed from the Virtual Management Database.  Are you sure you want to remove the selected Cloud Providers?"),
          :enabled   => false,
          :onwhen    => "1+"),
      ]
    ),
  ])
  button_group('ems_cloud_policy', [
    select(
      :ems_cloud_policy_choice,
      'fa fa-shield fa-lg',
      t = N_('Policy'),
      t,
      :enabled => false,
      :onwhen  => "1+",
      :items   => [
        button(
          :ems_cloud_protect,
          'pficon pficon-edit fa-lg',
          N_('Manage Policies for the selected Cloud Providers'),
          N_('Manage Policies'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :ems_cloud_tag,
          'pficon pficon-edit fa-lg',
          N_('Edit Tags for the selected Cloud Providers'),
          N_('Edit Tags'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1+"),
      ]
    ),
  ])
end

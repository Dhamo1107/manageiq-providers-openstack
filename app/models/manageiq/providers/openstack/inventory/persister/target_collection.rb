class ManageIQ::Providers::Openstack::Inventory::Persister::TargetCollection < ManageIQ::Providers::Openstack::Inventory::Persister
  include ManageIQ::Providers::Openstack::Inventory::Persister::Definitions::CloudCollections
  include ManageIQ::Providers::Openstack::Inventory::Persister::Definitions::NetworkCollections
  include ManageIQ::Providers::Openstack::Inventory::Persister::Definitions::StorageCollections

  def targeted?
    true
  end

  def strategy
    :local_db_find_missing_references
  end

  def initialize_inventory_collections
    initialize_cloud_inventory_collections

    initialize_network_inventory_collections

    initialize_storage_inventory_collections
  end
end

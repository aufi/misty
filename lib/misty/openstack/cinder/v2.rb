require 'misty/openstack/cinder/cinder_v2'
require 'misty/client_pack'

module Misty
  module Openstack
    module Cinder
      class V2
        include Misty::Openstack::CinderV2
        include Misty::ClientPack

        # TODO: path for '/v2/{admin_project_id}'
        def prefix_path_to_ignore
          '/v2/{project_id}'
        end

        def service_names
          %w{block-storage, block-store, volume}
        end
      end
    end
  end
end

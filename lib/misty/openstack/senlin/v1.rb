require 'misty/openstack/senlin/senlin_v1'
require 'misty/client_pack'

module Misty
  module Openstack
    module Senlin
      class V1
        include Misty::Openstack::SenlinV1
        include Misty::ClientPack

        def service_names
          %w{clustering}
        end
      end
    end
  end
end

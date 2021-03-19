module Erp
  module Products
    class Engine < ::Rails::Engine
      isolate_namespace Erp::Products
    end
  end
end

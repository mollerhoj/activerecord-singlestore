module ActiveRecord
  module ConnectionAdapters
    module Singlestore
      class SchemaCreation < SchemaCreation
        def table_modifier_in_create(o)
          " ROWSTORE" if o.rowstore
        end
      end
    end
  end
end

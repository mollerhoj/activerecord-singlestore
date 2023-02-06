module ActiveRecord
  module ConnectionAdapters
    module Singlestore
      class TableDefinition < ActiveRecord::ConnectionAdapters::TableDefinition
        attr_reader :rowstore

        def initialize(
          conn,
          name,
          temporary: false,
          if_not_exists: false,
          options: nil,
          rowstore: nil,
          as: nil,
          comment: nil,
          **
        )
          @conn = conn
          @columns_hash = {}
          @indexes = []
          @foreign_keys = []
          @primary_keys = nil
          @check_constraints = []
          @temporary = temporary
          @if_not_exists = if_not_exists
          @options = options
          @rowstore = rowstore
          @as = as
          @name = name
          @comment = comment
        end
      end
    end
  end
end

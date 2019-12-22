# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field,
          String,
          null: false, description: 'An example field added by the generator'
    def test_field
      'Hello World!!'
    end

    field :test_field2,
          String,
          null: false, description: 'An example field added by the generator' do
      argument :name, String, required: false, camelize: false
    end
    def test_field2(name: 'デフォルト')
      'abc' + name
    end

    field :user, UserType, null: false
    def user
      { id: 'id-1', name: '名前', email: 'a@a.com' }
    end
  end
end

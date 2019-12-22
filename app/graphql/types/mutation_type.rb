module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field,
          String,
          null: false, description: 'An example field added by the generator'
    def test_field
      'Hello World'
    end

    field :create_user, String, null: false do
      argument :name, String, required: true, camelize: false
      argument :email, String, required: true, camelize: false
    end
    def create_user(name:,email:)
      User.new(name:name,email:email).save
    end
  end
end

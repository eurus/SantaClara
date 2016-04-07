Sequel.migration do
  change do
    create_table(:tests) do
      primary_key :id
      String :title, :null=>false
      text :content
      DateTime :created_at
      DateTime :updated_at
    end
  end
end
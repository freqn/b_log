ActiveRecord::Schema.define(version: 20140412193205) do
b  enable_extension "plpgsql"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

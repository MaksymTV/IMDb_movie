# schema.rb

# Таблиця фільмів
create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.string "genre"
    t.string "director"
    t.string "actors"
    t.text "plot"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
  
  # Таблиця користувачів
  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
  
class CreateStringTranslations < ActiveRecord::Migration[<%= ActiveRecord::Migration.current_version %>]

  def change
    create_table :mobility_string_translations do |t|
      t.string  :locale
      t.string  :key
      t.string  :value
      t.integer :translatable_id
      t.string  :translatable_type
      t.timestamps
    end
    add_index :mobility_string_translations, [:translatable_id, :translatable_type, :locale, :key], unique: true, name: :index_mobility_string_translations_on_keys
    add_index :mobility_string_translations, [:translatable_id, :translatable_type], name: :index_mobility_string_translations_on_translatable
  end
end

# frozen_string_literal: true

RSpec.describe RuboCop::Cop::Rails::Migrations::MissingNullOption do
  subject(:cop) { described_class.new(config) }

  let(:config) { RuboCop::Config.new }

  context 'add_column' do
    it 'registers an offense when null option is missing' do
      expect_offense(<<~RUBY)
        add_column :name
      RUBY
    end

    it 'does not register an offense when using `null: true`' do
      expect_no_offenses(<<~RUBY)
        add_column :name, null: true
      RUBY
    end

    it 'does not register an offense when using `null: false`' do
      expect_no_offenses(<<~RUBY)
        add_column :name, null: false
      RUBY
    end
  end

  context 'create_table' do
    it 'registers an offense when null option is missing' do
      expect_offense(<<~RUBY)
        create_table do |t|
          t.string :name
        end
      RUBY
    end

    it 'does not register an offense when using `null: true`' do
      expect_no_offenses(<<~RUBY)
        create_table do |t|
          t.string :name, null: true
        end
      RUBY
    end

    it 'does not register an offense when using `null: false`' do
      expect_no_offenses(<<~RUBY)
        create_table do |t|
          t.string :name, null: false
        end
      RUBY
    end
  end
end


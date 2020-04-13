require 'test_helper'

class ThingTest < ActiveSupport::TestCase
  test "doesn't change updated at on update" do # passes
    thing = Thing.create!(
      name: "Something",
      created_at: 2.hours.ago,
      updated_at: 2.hours.ago,
    )

    assert_no_changes -> { thing.reload.updated_at } do
      thing.update!(name: "Else")
    end
  end

  test "doesn't change updated at on file attach" do # fails
    thing = Thing.create!(
      name: "Something",
      created_at: 2.hours.ago,
      updated_at: 2.hours.ago,
    )

    assert_no_changes -> { thing.reload.updated_at } do
      Tempfile.create('foo.txt') do |f|
        thing.file.attach(io: f, filename: 'file.txt')
      end
    end
  end
end

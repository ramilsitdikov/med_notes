require 'test_helper'

class NoteTest < ActiveSupport::TestCase

  test 'should show notes' do
    note = Note.new
    assert_not note.save

    note = Note.new(symptoms: "symptoms", diagnosis: "diagnosis", conclusion: "conclusion", assigning: "assigning")
    assert note.save
  end
end

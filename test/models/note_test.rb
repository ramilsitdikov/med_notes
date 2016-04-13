require 'test_helper'

class NoteTest < ActiveSupport::TestCase

  test 'should create notes' do
    note = Note.new
    assert_not note.save

    note = Note.new(symptoms: "symptoms", diagnosis: "diagnosis", conclusion: "conclusion", assigning: "assigning")
    assert note.save
  end
end

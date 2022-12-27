ActiveAdmin.register Subject do
   permit_params :name, note_id: []

show title: "Subject" do
    h3 'You have ' + pluralize(subject.note.count, 'note') + ' for this subject'
    subject.note.map do |note|
      h2 note.title
      h3 link_to "Goto Notes", admin_note_path(note.id)
      br
    end
  end
 
end

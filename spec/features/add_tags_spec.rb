require 'rails_helper'

RSpec.feature "create tags" do
  
  scenario "allow a user to add a tag" do
    
    tag = create(:tag)

    visit tag_path(tag)

    expect(page).to have_content("Tag name")
  end

end
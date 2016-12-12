require 'rails_helper'

RSpec.feature "create post" do

  scenario "allow a user to add a post" do
    
    post = create(:post)

    visit post_path(post)

    expect(page).to have_content("New Post Title")
    expect(page).to have_content("New Post Text")
  end
end
feature "viewing posts" do
  scenario "can view all posts on homepage" do
    post_one = create(:post, caption: "Comment one")
    post_two = create(:post, caption: "Comment two")
    visit "/"
    expect(page).to have_content "Comment one"
    expect(page).to have_content "Comment two"
    expect(page).to have_css("img[src*='hipster.jpg']")
  end
end
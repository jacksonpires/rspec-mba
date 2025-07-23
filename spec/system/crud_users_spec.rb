require 'rails_helper'

RSpec.describe "CrudUsers", type: :system do
  context "when creating a user" do
    # it "list users" do
    #   User.create!(first_name: "Jhon", last_name: "Doe", email: "jhon@doe.com")

    #   visit users_path

    #   expect(page).to have_content("Users")
    #   expect(page).to have_content(/First name: Jhon/i)
    # end


    # it "edit user" do
    #   user = User.create!(first_name: "Jhon", last_name: "Doe", email: "jhon@doe.com")

    #   visit edit_user_path(user)

    #   fill_in "First name", with: "Jack"

    #   click_button "Update User"

    #   expect(page).to have_content("User was successfully updated.")
    #   expect(page).to have_content(/First name: Jack/i)

    #   expect(user.reload.first_name).to eq("Jack")
    # end

    # it "creates a new user" do
    #   visit new_user_path

    #   fill_in "First name", with: "Jhon"
    #   fill_in "Last name", with: "Doe"
    #   fill_in "Email", with: "jhon@doe.com"

    #   click_button "Create User"

    #   expect(page).to have_content("User was successfully created.")
    #   expect(page).to have_content(/First name: Jhon/i)
    #   expect(page).to have_content(/Last name: Doe/i)
    #   expect(page).to have_content(/Email: jhon@doe.com/i)

    #   expect(page).to have_content(/Edit this user/i)
    #   expect(page).to have_content(/Back to users/i)

    #   expect(page).to have_selector('button', text: 'Destroy this user')

    #   click_link "Back to users"

    #   expect(page).to have_content("Users")
    # end
  end
end

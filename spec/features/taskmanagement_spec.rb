require 'rails_helper'

RSpec.feature "Taskmanagements", type: :feature do
  scenario "creates a new task" do 

    visit root_path
    click_link "新增任務"
    
    expect {
      fill_in "任務名稱", with: "訂飯店"
      fill_in "任務描述", with: "訂靠近火車站的青旅"
      click_button "送出"

      expect(page).to have_content "訂飯店"
    }
  end
end

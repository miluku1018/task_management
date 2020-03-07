require 'rails_helper'

RSpec.feature "Taskmanagements", type: :feature do
  scenario "creates a new task" do 

    visit root_path
    click_link "新增任務"
    
    expect {
      fill_in "任務名稱", with: "訂飯店"
      fill_in "任務描述", with: "訂靠近火車站的青旅"
      fill_in "優先度", with: "高"
      fill_in "起始日", Date.parse("2020-02-28")
      fill_in "截止日", Date.parse("2020-03-01")
      click_button "送出"

      expect(page).to have_content "訂飯店"
    }
  end

  context "read the task" do 
    scenario "檢視任務" do 
      task = create(:task)
      visit "/tasks/#{task.id}"
      
      expect(page).to have_text "任務名稱"
      expect(page).to have_text "任務描述"
      expect(page).to have_text "優先度"
      expect(page).to have_text "起始日"
      expect(page).to have_text "截止日"
      expect(page).to have_text(task.title)
      expect(page).to have_text(task.description)
      expect(page).to have_text(task.priority)
    end
  end
 
  context "update the task" do 
    scenario "修改任務" do 
      task = create(:task)
      visit "/tasks/#{task.id}/edit"
      
      fill_in "任務名稱", with: "訂機票"
      fill_in "任務描述", with: "訂東京奧運機票"
      click_button "送出"

      expect(page).to have_text "已更新任務"
      expect(page).to have_text "任務列表"
      expect(page).to have_text "新增任務"
      expect(page).to have_text "訂機票"
    end
  end

  context "delete the task" do 
    scenario "刪除任務" do 
      task = Task.create(title: '訂機票', description:'訂東京奧運來回機票')
      visit root_path
      
      expect{ click_link "刪除" }.to change(Task, :count).by(-1)

      expect(page).to have_text "已刪除任務"
    end
  end

  context "task ordered by created at" do 
    scenario "按建立時間排序任務" do 
      task1 = Task.create(title: '訂機票', description:'訂東京奧運來回機票')
      task2 = Task.create(title: '訂東京奧運門票', description:'買兩張東京奧運門票')
      
      visit root_path
    
      expect(find('table tr:nth-child(1)')).to have_text "訂東京奧運門票"
      expect(find('table tr:nth-child(2)')).to have_text "訂機票"
    end
  end
end

require 'rails_helper'

# 新增任務，任務名稱與任務描述為必填選項
RSpec.describe Task, type: :model do
  it "任務名稱與任務描述為必填" do
    task = Task.new(
      title: "訂東京飯店",
      description: "距離東京地鐵附近的飯店",
    )

    expect(task).to be_valid
  end
end
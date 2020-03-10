require 'rails_helper'

# 新增任務，任務名稱與任務描述為必填選項
RSpec.describe Task, type: :model do
  it "任務名稱與任務描述為必填" do
    task = Task.new(
      title: " ",
      description: " ",
    )

    expect(task).to be_invalid
  end
end
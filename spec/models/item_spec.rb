require 'rails_helper'

describe Item do
  describe '#create' do

    it "image, user_id, category_id, color_id, season_idがあれば登録できること" do
      item = build(:item)
      expect(item).to be_valid
    end

    it "imageがない場合は登録できないこと" do
      item = build(:item, image: nil)
      item.valid?
      expect(item.errors[:image]).to include("can't be blank")
    end

    it "category_idがない場合は登録できないこと" do
      item = build(:item, category_id: nil)
      item.valid?
      expect(item.errors[:category_id]).to include("can't be blank")
    end

    it "color_idがない場合は登録できないこと" do
      item = build(:item, color_id: nil)
      item.valid?
      expect(item.errors[:color_id]).to include("can't be blank")
    end

    it "season_idがない場合は登録できないこと" do
      item = build(:item, season_id: nil)
      item.valid?
      expect(item.errors[:season_id]).to include("can't be blank")
    end
  end
end
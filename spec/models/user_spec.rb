require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do

    # パラメータをまとめて定義
    let(:params) {{name:"ゆうき"}}
    # let(:params) {{name:"ゆうき", age:1}}
    # let(:params2) {{name:"ゆうき", age:15}}
    # let(:params3) {{name:"ゆうき", age:20}}
    # let(:params4) {{name:"ゆうき", age:-1}}  name,ageをまとめて定義する場合

    it "年齢1：ユーザーの名前が「〜ちゃん」と取得できること" do
      params.merge!(age:1)
      user = User.new(params)
      # user = User.new(name:"ゆうき", age: 1)まとめてパラメータ定義していない場合各項目にこのように記載する必要あり
      expect(user.disp_name).to eq "ゆうきちゃん"
    end

    it "年齢15：ユーザーの名前が「〜くん」と取得できること" do
      params.merge!(age:15)
      user = User.new(params)
      expect(user.disp_name).to eq "ゆうきくん"
    end

    it "年齢20：ユーザーの名前が「〜さん」と取得できること" do
      params.merge!(age:20)
      user = User.new(params)
      expect(user.disp_name).to eq "ゆうきさん"
    end

    it "年齢-1：「不正確です」と取得できること" do
      params.merge!(age:-1)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な値です"
    end
  end

end

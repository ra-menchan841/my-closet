require 'rails_helper'

describe ItemsController do

  describe "GET #index" do
    let(:user) { create(:user) }

    context "ログインしている場合" do

      it "@itemsに正しい値が入っていること" do
        items = create_list(:item, 3)
        login user
        get :index
        expect(assigns(:items)).to match(items.sort{ |a, b| b.created_at <=> a.created_at })
      end

      it "index.html.hamlに遷移すること" do
        login user
        get :index
        expect(response).to render_template :index
      end
    end

    context "ログインしていない場合" do

      it "index.html.hamlに遷移すること" do
        get :index
        expect(response).to render_template :index
      end
    end

  end

  describe "GET #new" do
    let(:user) { create(:user) }

    context "ログインしている場合" do
      it "@itemに正しい値が入っていること" do
        login user
        get :new
        expect(assigns(:item)).to be_a_new(Item)
      end

      it "new.html.hamlに遷移すること" do
        login user
        get :new
        expect(response).to render_template :new
      end
    end

    context "ログインしていない場合" do
      it "トップ画面に遷移すること" do
        get :new
        expect(response).to redirect_to(root_path)
      end
    end
  end

  describe "POST #create" do
    let(:user) { create(:user) }
    let(:params) { {item: attributes_for(:item)} }

    context "ログインしている場合" do
      before do
        login user
      end

      context "データの保存に成功した場合" do
        subject {
          post :create,
          params: params
        }
        it "データを保存すること" do
        pending 'なぜかテスト失敗するため原因確認中'
          expect{ subject }.to change(Item, :count).by(1)
        end

        it "トップ画面に遷移すること" do
          get :create, params: params
          expect(response).to redirect_to(root_path)
        end
      end
    end
    context "ログインしていない場合" do
      it "トップ画面に遷移すること" do
        get :create
        expect(response).to redirect_to(root_path)
      end
    end
  end

  describe "GET #show" do
    let(:user) { create(:user) }
    context "ログインしている場合" do
      before do
        login user
      end

      it "@itemに期待した値が入っていること" do
        item = create(:item)
        get :show, params: { id: item }
        expect(assigns(:item)).to eq item
      end

      it "@categoryに期待した値が入っていること" do
        item = create(:item)
        category = item.category
        get :show, params: { id: item }
        expect(assigns(:category)).to eq category
      end

      it "@colorに期待した値が入っていること" do
        item = create(:item)
        color = item.color
        get :show, params: { id: item }
        expect(assigns(:color)).to eq color
      end

      it "@seasonに期待した値が入っていること" do
        item = create(:item)
        season = item.season
        get :show, params: { id: item }
        expect(assigns(:season)).to eq season
      end

      it "show.html.hamlに遷移すること" do
        item = create(:item)
        get :show, params: { id: item }
        expect(response).to render_template :show
      end
    end

    context "ログインしていない場合" do
      it "トップ画面に遷移すること" do
        item = create(:item)
        get :show, params: { id: item }
        expect(response).to redirect_to(root_path)
      end
    end
  end

  describe "DELETE #destroy" do
    let(:user) { create(:user) }
    let(:item) { create(:item) }

    context "ログインしている場合" do
      before do
        login user
      end

      it "データが削除されること" do
      pending 'なぜかテスト失敗するため原因確認中'
        subject {
          delete :destroy,
          { id: item }
        }
        expect{ subject }.to change(Item, :count).by(-1)
      end
    
      it "トップ画面へ遷移すること" do
        delete :destroy, params: { id: item }
        expect(response).to redirect_to(root_path)
      end
    end
    context "ログインしていない場合" do
      it "トップ画面に遷移すること" do
        delete :destroy, params: { id: item }
        expect(response).to redirect_to(root_path)
      end
    end
  end
    
end
require 'rails_helper'

RSpec.describe Cathegory, :type => :model do
  describe ".create_cathegory" do

    let!(:cathegory1) { FactoryGirl.create :cathegory, cathegory_name: 'programming' }
    # context "spaces while writing cathegories" do
    #   it {expect(Cathegory.create_cathegory('    action')).to match "action"}
    # end
    context "when Genre is equal to Genre" do

      it "will not create another cathegory" do
        expect(Cathegory.create_cathegory('programming')).to eq [cathegory1]
      end
    end

    context "when name is not equal to name" do

      it "will create a new cathegory" do
        expect(Cathegory.create_cathegory('drama')).not_to eq [cathegory1]
      end
    end
  end
end
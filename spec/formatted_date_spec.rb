require File.dirname(__FILE__) + '/../lib/formatted_date.rb'
require File.dirname(__FILE__) + '/../../../../config/environment.rb'

class TestModel
  include FormattedDate
  format_dates :test_date
  format_dates :test_date_with_format, :format => "%m/%d/%Y"
  format_dates :timestamps
  
  def created_at
    Date.parse('1 April 2003')
  end
  
  def updated_at
    Date.parse('2 April 2003')
  end
  
  def test_date
    Date.parse("9 April 2003")
  end
  
  def test_date_with_format
    Date.parse("9 April 2003")
  end
end

describe FormattedDate do
  before(:each) do
    @test_model = TestModel.new
  end
  
  it "should be a Date (my test mocky thing)" do
    @test_model.test_date.should be_a_kind_of(Date)
  end
  
  it "should format the test date correctly" do
    @test_model.test_date_formatted.should == '9 April, 2003'
  end
  
  it "should format the test date with a format option" do
    @test_model.test_date_with_format_formatted.should == '04/09/2003'
  end
  
  it "should format the timestamps" do
    @test_model.created_at
  end
  
end
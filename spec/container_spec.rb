require "container"

describe Container do
 
  it "has a capacity of 250" do
    capacity = Container::CAPACITY
    expect(capacity).to eq 250
  end
  
  it "should have errors if capacity exceeds" do
    @@capacity = 0
    expect{Container.new.assign_container_location}.to raise_error(RuntimeError)
  end
  
  it "should increase the column count by 1" do
    Container.columns = 3
    Container.new.increment_columns
    expect(Container.columns).to eq 4
  end
  
  it "should increase the row count by 1" do
    Container.rows = 4
    Container.new.increment_rows
    expect(Container.rows).to eq 5
  end
  
  it "should increase the level count by 1" do
    Container.levels = 6
    Container.new.increment_level
    expect(Container.levels).to eq 7
  end
  
end
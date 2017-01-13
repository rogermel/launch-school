require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class EasyTestingTest < MiniTest::Test
  def test_downcase
    val = 'XYZ'
    assert_equal 'xyz', val.downcase
  end
  
  def test_nil
    val = nil
    assert_nil val
  end
  
  def test_array_empty
    arr = []
    assert_empty arr
  end
  
  def test_include
    arr = %w( hello xyz val)
    assert_includes arr, 'xyz'
  end
  
  def test_block_raises
    skip
    assert_raises NoExperiencedError do
      employee.hire
    end
  end
  
  def test_numeric_class
    assert_instance_of Fixnum, 2
  end
end
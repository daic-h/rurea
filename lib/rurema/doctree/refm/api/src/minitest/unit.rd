sublibrary minitest/autorun

��˥åȥƥ��Ȥ�Ԥ�����Υ饤�֥��Ǥ���

=== �Ȥ���

[[lib:minitest/unit]] �ϰʲ��Τ褦�˻Ȥ��ޤ���

�ƥ����оݤΥ����� (foo.rb) ���Ѱդ��ޤ���

  class Foo
    def foo
      "foo"
    end
    def bar
      "foo"
    end
  end

���˥�˥åȥƥ��� (test_foo.rb) ��񤭤ޤ���
�ƥ��Ȥ�¹Ԥ���᥽�å� (�ƥ��ȥ᥽�å�) ��̾���Ϥ��٤� "test" �ǻϤޤ�ɬ�פ�����ޤ���
�ƥ��ȥ᥽�åɤ��¹Ԥ�������ˤ� setup �᥽�åɤ�ɬ���¹Ԥ���ޤ���
�ƥ��ȥ᥽�åɤ��¹Ԥ��줿��ˤ� teardown �᥽�åɤ�ɬ���¹Ԥ���ޤ���

[[lib:minitest/unit]] �� [[m:Kernel.#require]] ���������Ǥϥƥ��Ȥ���ư�¹Ԥ���ޤ���

  require 'minitest/unit'
  require 'foo'
  
  MiniTest::Unit.autorun
  
  class TestFoo < MiniTest::Unit::TestCase
    def setup
      @foo = Foo.new
    end
    # teardown �Ϥ��ޤ�Ȥ�ʤ�
    def teardown
      @foo = nil
    end
  
    def test_foo
      assert_equal "foo", @foo.foo
    end
  
    def test_bar
      assert_equal "bar", @foo.bar
    end
  end

�ޤ��� MiniTest::Unit.autorun ���ά���ưʲ��Τ褦�˽񤯤��Ȥ�Ǥ��ޤ���

  require 'minitest/unit'
  require 'minitest/autorun'
  require 'foo'
  # �ʲ�ά

�ƥ��Ȥ�¹Ԥ���ˤϾ���Ѱդ��� test_foo.rb ��¹Ԥ��ޤ���
�ǥե���ȤǤϤ��٤ƤΥƥ��Ȥ��¹Ԥ���ޤ���

  $ ruby test_foo.rb
  Loaded suite test_foo
  Started
  F.
  Finished in 0.000940 seconds.
  
    1) Failure:
  test_bar(TestFoo) [test_foo.rb:20]:
  Expected "bar", not "foo".
  
  2 tests, 2 assertions, 1 failures, 0 errors, 0 skips

test_bar �����ƥ��Ȥ��������ϰʲ��Τ褦�ʥ��ץ�����Ϳ���ޤ���

  $ ruby test_foo.rb -n test_bar
  Loaded suite test_foo
  Started
  F
  Finished in 0.000820 seconds.
  
    1) Failure:
  test_bar(TestFoo) [test_foo.rb:20]:
  Expected "bar", not "foo".
  
  1 tests, 1 assertions, 1 failures, 0 errors, 0 skips

���󥽡����Ȥä� testrunner �Τ��󶡤���Ƥ��ޤ���
�ޤ��إ�פ�ɽ�����뤳�Ȥ�Ǥ��ޤ���

=== ���Ѳ�ǽ�ʥ��ץ����

: -v
  �ܺ٤�ɽ�����ޤ���
: -n, --name
  ���ꤵ�줿�ƥ��ȥ᥽�åɤ�¹Ԥ��ޤ����ƥ��ȥ᥽�åɤλ��������ɽ����Ȥ��ޤ���

=== ���ĥƥ��Ȥϼ¹Ԥ���뤫

��ҤΤȤ��ꡢMiniTest::Unit.autorun �� require 'minitest/autorun' ��ƥ��ȥ����ɤ�
����Ū�˽񤫤ʤ��ä����ϡ�ñ�ˤ��Υƥ��ȥե������¹Ԥ��Ƥⲿ�ⵯ����ޤ���

=== Error �� Failure �� Skip �ΰ㤤

: Error
  �ƥ��ȥ᥽�åɼ¹�����㳰��ȯ��������
: Failure
  �����������˼��Ԥ�����
: Skip
  �ƥ��ȥ᥽�å���� [[m:MiniTest::Assertions#skip]] ��ƤӽФ�����

=== test/unit ����ΰܹ�

�٤����㤤�Ϥ����Ĥ�����ޤ������ܹԤΤ���ˤ��ʤ���Фʤ�ʤ����Ȥ��äˤ���ޤ���
require 'test/unit' ���Ƥ�����ϸߴ��쥤�䡼���ɤ߹��ޤ������ [[lib:test/unit]]
�Ȥθߴ��������ݤ���ޤ���

�����ǤϤʤ��� require 'minitest/unit' ������ϡ��ƥ��ȥ��饹��������˿ƥ��饹��
[[c:MiniTest::Unit::TestCase]] �ˤ��ʤ���Фʤ�ޤ���

= module MiniTest

[[lib:minitest/unit]] �ǻ��Ѥ��륯�饹��⥸�塼���������Ƥ���⥸�塼��Ǥ���

== Singleton Methods

--- filter_backtrace(backtrace) -> Array

�Хå��ȥ졼�����餳�Υ饤�֥��˴ؤ�����ʬ�����������̤��֤��ޤ���

@param backtrace �Хå��ȥ졼������ꤷ�ޤ���

== Constants

--- MINI_DIR -> String

���Υ饤�֥�꤬���󥹥ȡ��뤵��Ƥ���ǥ��쥯�ȥ�οƥǥ��쥯�ȥ��̾�����֤��ޤ���

= class MiniTest::Assertion < Exception

�����������˼��Ԥ�������ȯ�������㳰�Ǥ���

= class MiniTest::Skip < MiniTest::Assertion

[[m:MiniTest::Assertions#skip]] ��ƤӽФ�������ȯ�������㳰�Ǥ���


#@include(MiniTest__Unit)
#@include(MiniTest__Unit__TestCase)
#@include(MiniTest__Assertions)

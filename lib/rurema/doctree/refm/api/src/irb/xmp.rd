#@# Author: Keiju ISHITSUKA

�����ɤȤ��μ¹Է�̤򡢹Ԥ��Ȥ˸�ߤ�ɽ�����뤿��Υ饤�֥��Ǥ���
irb ��¹Ԥ��ʤ��Ƥ⡢�Ȥ����Ȥ�����ޤ���
���Ȥ��� xmp ([[ruby-list:8489]])�ξ�̸ߴ��С������Ǥ�. 
����, ���˽Ť��ΤǤ��Ȥ��� xmp �Ǥ��б��Ǥ��ʤ����˻��Ѥ�����ɤ��Ǥ��礦.

=== �ؿ��Ȥ��ƻȤ�

  $ cat t.rb
  require "irb/xmp"
  xmp <<END
  foo = 1
  foo
  END
  $ ruby t.rb
  foo = 1
      ==>1
  foo
      ==>1

=== XMP���󥹥��󥹤��Ѥ���.

���ξ��� XMP ������ƥ����Ⱦ������ĤΤ�,
�ѿ����ͤʤɤ��ݻ����Ƥ��ޤ�.

  $ cat t.rb
  require "irb/xmp"
  xmp = XMP.new
  xmp.puts <<END
  foo = 1
  foo
  END
  xmp.puts <<END
  foo
  END
  $ ruby t.rb
  foo = 1
      ==>1
  foo
      ==>1
  foo
      ==>1

=== ����ƥ����Ȥ˴ؤ���

XMP�᥽�åɷ��Υ���ƥ����Ȥ�, �ƤӽФ����Υ���ƥ����Ȥ�ɾ������ޤ�.
����Ū�˥���ƥ����Ȥ���ꤹ��Ȥ��Υ���ƥ����Ȥ�ɾ�����ޤ�.

��:

  xmp "foo", an_binding

[��] �ޥ������åɤˤ��б����Ƥ��ޤ���.

= reopen Kernel
== Private Instance Methods
--- xmp
#@todo

= class XMP
== Class Methods
--- new
#@todo

== Instance Methods
--- puts
#@todo


= �Ķ��ѿ�

Ruby���󥿥ץ꥿�ϰʲ��δĶ��ѿ��򻲾Ȥ��ޤ���


: RUBYOPT
 Ruby���󥿥ץ꥿�˥ǥե���Ȥ��Ϥ����ץ�������ꤷ�ޤ���

 sh��

//emlist{
      RUBYOPT='-Ke -rkconv'
      export RUBYOPT
//}

 csh��

//emlist{
      setenv RUBYOPT '-Ke -rkconv'
//}

 MS-DOS��

//emlist{
      set RUBYOPT=-Ke -rkconv
//}

: RUBYPATH

  -S ���ץ���������ˡ��Ķ��ѿ� PATH �ˤ��
  Ruby ������ץȤ�õ���˲ä��ơ����δĶ��ѿ��ǻ��ꤷ���ǥ��쥯�ȥ��
  õ���оݤˤʤ�ޤ���(PATH ���ͤ���ͥ�褷�ޤ�)��
  ��ư���ץ����ξܺ٤˴ؤ��Ƥ�[[d:spec/rubycmd]] �򻲾Ȥ��Ƥ���������

  sh��

//emlist{
      RUBYPATH=$HOME/ruby:/opt/ruby
      export RUBYPATH
//}

  csh��

//emlist{
      setenv RUBYPATH $HOME/ruby:/opt/ruby
//}

  MS-DOS��

//emlist{
      set RUBYPATH=%HOME%\ruby:\opt\ruby
//}

: RUBYLIB

  Ruby�饤�֥���õ���ѥ�[[m:$:]]�Υǥե���
  ���ͤ����ˤ��δĶ��ѿ����ͤ��դ�­���ޤ���

  sh��

//emlist{
      RUBYLIB=$HOME/ruby/lib:/opt/ruby/lib
      export RUBYLIB
//}

  csh��

//emlist{
      setenv RUBYLIB $HOME/ruby/lib:/opt/ruby/lib
//}

  MS-DOS��

//emlist{
      set RUBYLIB=%HOME%\ruby\lib:\opt\ruby\lib
//}

: RUBYLIB_PREFIX

#@since 1.9.1
  ���δĶ��ѿ��� [[d:platform/Cygwin]]�ǡ�[[d:platform/mswin32]]�ǡ�
  [[d:platform/mingw32]]�Ǥ�ruby�ǤΤ�ͭ���Ǥ���
#@else
  ���δĶ��ѿ��� [[d:platform/DJGPP]]�ǡ�[[d:platform/Cygwin]]�ǡ�[[d:platform/mswin32]]�ǡ�
  [[d:platform/mingw32]]�Ǥ�ruby�ǤΤ�ͭ���Ǥ���
#@end

  ���δĶ��ѿ����ͤϡ�path1;path2 ���뤤�� path1 path2 �Ȥ��������ǡ�
  Ruby�饤�֥���õ���ѥ�[[m:$:]]����Ƭ��ʬ
  ��path1�˥ޥå��������ˡ������path2���֤������ޤ���
  ((-���ߤμ����Ǥϥ饤�֥��Υѥ��� prefix �� ruby.exe �� ruby.dll �Τ�����֤���
  ����Ū�˵���ΤǤ��δĶ��ѿ���ɬ�����Ϥʤ��ʤäƤ��ޤ�-))

  MS-DOS��

//emlist{
      set RUBYLIB_PREFIX=/usr/local/lib/ruby;d:/ruby
//}

: RUBYSHELL

#@since 1.9.1
  ���δĶ��ѿ��� [[d:platform/mswin32]]�ǡ�[[d:platform/mingw32]]�Ǥ�ruby��
  �Τ�ͭ���Ǥ���
#@else
  ���δĶ��ѿ��� [[d:platform/OS2]]�ǡ�[[d:platform/mswin32]]�ǡ�[[d:platform/mingw32]]�Ǥ�ruby��
  �Τ�ͭ���Ǥ���
#@end

  [[m:Kernel.#system]] �ǥ��ޥ�ɤ�¹Ԥ���Ȥ��˻��Ѥ��륷����
  ����ꤷ�ޤ������δĶ��ѿ�����ά����Ƥ����COMSPEC���ͤ�
  ���Ѥ��ޤ���

: PATH

  [[m:Kernel.#system]]�ʤɤǥ��ޥ�ɤ�¹Ԥ���Ȥ��˸�������ѥ��Ǥ���
  ���ꤵ��Ƥ��ʤ��Ȥ�(nil�ΤȤ�)��
  "/usr/local/bin:/usr/ucb:/usr/bin:/bin:."
  �Ǹ�������ޤ���
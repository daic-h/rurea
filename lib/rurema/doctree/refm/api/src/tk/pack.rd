require tk

= module TkPack

extend Tk
include Tk

���������åȤ����֤��뤿��Υ⥸�塼��Ǥ���
���Υ⥸�塼��ˤ�ꡢ���������åȤ϶����ΰ��缡�ͤ��褦�����֤���ޤ���

���̡����������åȤ����֤ˤ�[[m:TkWindow#pack]]���Ȥ��ޤ���

== Module Functions

--- configure(win1, win2, ... winN, keys=nil)
--- pack(win1, win2, ... winN, keys=nil)
#@todo

���������å�win1 ... winN�����֤��ޤ���
keys�ϰʲ��򥭡��˻��ĥϥå���Ǥ���

*"after"=>other

���������å�winN��other���������åȤθ�����֤��ʤ����ޤ���
other ���ޤ�pack����Ƥ��ʤ���Х��顼�ˤʤ�ޤ���

  require "tk"
  
  a = TkButton.new {text 'a'}.pack
  b = TkButton.new {text 'b'}.pack
  c = TkButton.new {text 'c'}.pack
  
  TkPack.configure b,a, 'after'=>c
  
  Tk.mainloop

other�ϡ�winN���������åȤȥޥ�������Ʊ���Ǥʤ���Фʤ��
����

  require "tk"
  
  frame = TkFrame.new
  a = TkButton.new        {text 'a'}.pack
  b = TkButton.new(frame) {text 'b'}.pack
  c = TkButton.new        {text 'c'}.pack
  
  b.pack 'after'=>c
  
  Tk.mainloop
  
  error--> can't pack .w0000.w0002 inside . (RuntimeError)

*"anchor"
*"before"=>other

���֤�����֤�other�����Ǥ��뤳�Ȥ�����ơ�"after"
��Ʊ���Ǥ���

*"expand"

true����ꤹ��ȡ����������åȤ����֤��Ƥ��ʤ������ζ�����
�Ǿ��ξ��֤��ݤĤ褦�����������åȤ����֤������򹭤��ޤ���(����������
�ȼ��Ȥ��礭������櫓�ǤϤ���ޤ��󡣲���"fill"�ι��ܤ⻲�Ȥ�
�Ƥ�������)�ǥե���Ȥ�false�Ǥ���

*"fill"

���֤Τ���˳�����Ƥ�줿��褬���졼�֤��׵᤹�륵���������礭��
��硢���졼�֤���ꤷ�������˰�����Ф��ޤ���

"fill"�ˤ�äơ����������åȤ���ˤ����֤ʤ��ͤ����櫓�ǤϤʤ���
�Ȥ����դ��ʤ���Фʤ�ޤ���

�㤨�С��ʲ������¹Ԥ����奦����ɥ��Υ�������Ĳ����礭�������
������ɥ��β����˶������Ǥ��ޤ���

  require "tk"
  5.times {|i| TkButton.new {text i }.pack 'fill'=>'both'}
  Tk.mainloop

����ϡ����������åȤ����֤������夫���ڤ��äƤ��뤫��Ǥ�����
�ξ�硢�������˶��ζ����Ϥʤ��Τǡ����������åȤ˳�����Ƥ�줿��
��ϲ������ˤϿ��Ӥޤ�����������(����)�ˤϸ����ʤ�������褬�Ĥ����
���ޤ���������ɥ����礭�������Ȥ��ˤǤ��������ΰ�Ϥޤ����������å�
��������Ƥ��Ƥ��ʤ������ζ��Ǥ���

�ʲ�����Τ褦�˶��򺸤����ڤ���('side'=>'left'�ǻ��ꤹ��)
�褦�ˤ���С�������ɥ��򹭤����Ȥ��ˤϱ��˶������Ǥ��ޤ���

  require "tk"
  5.times {|i| TkButton.new {text i }.pack 'fill'=>'both', 'side'=>'left'}
  Tk.mainloop

���Τ褦�ʶ�������᤿�����ˤ�expand����Ѥ��ޤ����ʲ������
�¹Ԥ����奦����ɥ��򹭤���ȥ��������åȤ����֤��줿���ϽĲ�ξ��
���˹�����졢�����ζ��Ͼ�˸����ʤ����֤ˤʤ�ޤ���

  require "tk"
  5.times {|i| TkButton.new {text i }.pack 'fill'=>'both', 'expand'=>true}
  Tk.mainloop

*"none"

���졼�֤������Ф��ޤ��󡣥ǥե���ȡ�
*"x"

�������˥��������åȤ������Ф��ޤ���
*"y"

�������˥��������åȤ������Ф��ޤ���
*"both"

�Ĳ�ξ�����˥��������åȤ������Ф��ޤ���

*"in"=>master

master��ޥ��������������åȤȤ���pack���ޤ���

*"ipadx"
*"ipady"
*"padx"
*"pady"
*"side"
 *"left"
 *"right"
 *"top"
 *"bottom"

--- forget(*args)
#@todo

args�ǻ��ꤷ�����������åȤ����֤��겼���ޤ�(��ɽ���ˤʤ�ޤ�)��

--- info(slave)
#@todo

--- propagate(master, bool=None)
#@todo

���졼�֤�pack����λ������ޥ������Υ��������å�(master)
���礭������ưŪ���ѹ�����뤫�ɤ����򿿵���bool�ǻ��ꤷ�ޤ���

bool���ά������硢���ߤ�������֤��ޤ���

�ǥե���Ȥ�true�ǡ����ξ��ޥ��������������åȤϡ����������å�
�����֤���Ƥ��ʤ�������褬�����ʤ��ʤ�褦�̤���ꡢ���٤ƤΥ��졼��
(�γ�����Ƥ�줿���)�Υ������ˤ��碌���礭���ʤä��ꤷ�ޤ���

((-���Υ᥽�åɤ����Ӥ��狼��ʤ����ޥ������Υ����������ˤ������Τ�
�顢geometry �ǥ���������ꤹ��Ф����󤸤�ʤ��Ρ�-))

  require "tk"

  p TkPack.propagate(Tk.root)
  TkButton.new { text "foo" }.pack

  top = TkToplevel.new
  p TkPack.propagate(top)

  TkPack.propagate(top, false)
  p TkPack.propagate(top)
  TkButton.new(top) { text "bar" }.pack

  Tk.mainloop

  => true
     true
     false

�ʲ�����Ǥϡ�bar��ɽ������ʤ�((-�ʤ�ǡ����Ĥ�������Ĵ�٤뤳��-))

  require "tk"

  TkFrame.new {
    TkPack.propagate(self, true)
    TkLabel.new(self) { text "foo" }.pack
  }.pack

  TkFrame.new {
    TkPack.propagate(self, false)
    TkLabel.new(self) { text "bar" }.pack
  }.pack

  Tk.mainloop

--- slaves(master)
#@todo

== Constants

--- TkCommandNames
#@todo

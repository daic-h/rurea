requires=e2mmap,irb.slex,rdoc.code_objects,rdoc.code_object,rdoc.context,rdoc.top_level,rdoc.class_module,rdoc.normal_class,rdoc.normal_module,rdoc.anon_class,rdoc.single_class,rdoc.any_method,rdoc.alias,rdoc.ghost_method,rdoc.meta_method,rdoc.attr,rdoc.constant,rdoc.require,rdoc.include,rdoc.parser,rdoc,rdoc.stats,rdoc.parser.simple,rdoc.token_stream
classes=RDoc=RubyToken,RDoc=RubyLex,RDoc=Parser=Ruby
methods=
sublibraries=
is_sublibrary=true

Ruby �Υ����������ɤ���Ϥ��뤿��Υ��֥饤�֥��Ǥ���

��ĥ�Ҥ� .rb��.rbw �Υե��������Ϥ�������Ǥ��ޤ���

=== �᥿�ץ���ߥ󥰤��줿�᥽�å�

ưŪ��������줿�᥽�åɤ�ɥ�����Ȥ˴ޤ᤿����硢## �ǥ����Ȥ򳫻Ϥ��ޤ���

  ##
  # This is a meta-programmed method!

  add_my_method :meta_method, :arg1, :arg2

[[c:RDoc::Parser::Ruby]] �Ͼ嵭�� :meta_method �褦�˥᥽�åɤ�������
���褦�ʼ��̻Ҥθ��³���ȡ������᥽�å�̾�Ȥ��Ʋ�ᤷ�ޤ����᥽�å�
̾�����Ĥ���ʤ��ä���硢�ٹ�ɽ������ޤ����ޤ������ξ��ϥ᥽�å�
̾�� 'unknown' �ˤʤ�ޤ���

:method: ̿���Ȥ����ǥ᥽�å�̾����ꤹ�����Ǥ��ޤ���

  ##
  # :method: woo_hoo!

�ǥե���ȤǤ�ưŪ��������줿�᥽�åɤϥ��󥹥��󥹥᥽�åɤȤ��Ʋ���
����ޤ����ðۥ᥽�åɤȤ��������ϡ�:singleton-method: ̿�����ꤷ��
����

  ##
  # :singleton-method:

�ʲ��Τ褦�˥᥽�å�̾����ꤹ�����Ǥ��ޤ���

  ##
  # :singleton-method: woo_hoo!

�ޤ���°���ˤĤ��Ƥ�Ʊ�ͤ� :attr:�� :attr_reader:�� :attr_writer:��
:attr_accessor: ����ꤹ������Ǥ��ޤ���°����̾���Ͼ�ά�Ǥ��ޤ���

  ##
  # :attr_reader: my_attr_name

=== �����᥽�åɡ�°��

:method:�� :singleton-method: �� :attr: ̿���Ȥ����Ǽºݤˤ��������
�Ƥ��ʤ��᥽�åɤ�ɥ�����Ȥ˴ޤ������Ǥ��ޤ���

  ##
  # :attr_writer: ghost_writer
  # There is an attribute here, but you can't see it!

  ##
  # :method: ghost_method
  # There is a method here, but you can't see it!

  ##
  # this is a comment for a regular method

  def regular_method() end

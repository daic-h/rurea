socket �ϥץ����������Ȥ��̿� (�ץ��������̿����ۥ��ȴ��̿�) ��¸����ޤ���

=== ���饹

 * [[c:BasicSocket]]: �����åȤ�ɽ����ݥ��饹
 * [[c:IPSocket]]: ���󥿡��ͥåȥɥᥤ�󥽥��åȤ���ݥ��饹
 * [[c:TCPSocket]]: ���󥿡��ͥåȥɥᥤ��Υ��ȥ꡼�෿�����åȤΥ��饹
 * [[c:TCPServer]]: TCP/IP���ȥ꡼�෿��³�Υ�����¦�Υ����åȤΥ��饹
 * [[c:SOCKSSocket]]: TCPSocket �� SOCKS �б��������饹
 * [[c:UDPSocket]]: ���󥿡��ͥåȥɥᥤ��Υǡ�������෿�����åȤΥ��饹
 * [[c:UNIXSocket]]: Unix�ɥᥤ��Υ��ȥ꡼�෿�����åȤΥ��饹
 * [[c:UNIXServer]]: Unix���ȥ꡼�෿��³�Υ�����¦�Υ����åȤΥ��饹
 * [[c:Socket]]: ���٥륽���åȥ��󥿡��ե�����

=== �⥸�塼��

 * [[c:Socket::Constants]]

=== �����åȥ��ɥ쥹

�����åȤȤ����Τ��̿�ϩ����ü�Ǥ���
���Ȥ��� 1��1 ���̿��Ǥϡ��ޤ��̿�ϩ��ξü�ˤҤȤĤ��ĥ����åȤ�Ĥ��ꡢ
�����Υ����åȤ���³���뤳�Ȥˤ�ä��̿�ϩ����Ω������ߤ��̿��Ǥ���褦�ˤʤ�ޤ���
������³���ˡ������Υ����åȤˤ⤦�����Υ����åȤξ��򶵤��Ƥ��ɬ�פ�����ޤ�����
���ξ�����ꤹ���Τ������åȥ��ɥ쥹�Ǥ���

�����åȥ��ɥ쥹�ϥ����åȤμ���ˤ�ä���Ȥ��ۤʤ�ޤ���
���Ȥ��� TCP �Ǥ� IP ���ɥ쥹�ȥݡ����ֹ�Ǥ�����
Unix �ɥᥤ�󥽥��åȤǤϥ����åȥե������ؤ��ѥ�̾�Ǥ���

[[c:IPSocket]] ����� [[c:UNIXSocket]] �ʲ��Υ��饹���ؤǤϡ�
�虜�虜�����åȥ��ɥ쥹�Ȥ��������ˤޤȤ�ʤ��Ƥ�褤�褦��
�����åȥ��ɥ쥹����Ȥ�ľ�ܰ�����᥽�åɤ��Ѱդ���Ƥ��ޤ���

�ޤ���[[c:IPSocket]] �ʲ��Ǥ� IP ���ɥ쥹�ȥݡ����ֹ�λ���ϡ�
���ͤ�ɽ����������Ǥʤ����ۥ���̾�䥵���ӥ�̾���Ȥ��ޤ���
����ˤĤ��Ƥϰʲ��Ρ֥ۥ��Ȼ�������פȡ֥����ӥ���������פ򻲾Ȥ��Ƥ���������

�ޤ���C �Υ�٥�Ρ֥����åȥ��ɥ쥹��¤�Τ� pack ����ʸ����פ���ѤǤ��ޤ���
����ϼ�����٥륽���åȥ��󥿡��ե����� ([[c:Socket]]) ���Ѥ����ޤ���

====[a:host_format] �ۥ��Ȼ������

AF_INET �ʥ����åȤˤ����ƥۥ��Ȥ���ꤹ��ˤϰʲ��Τ����줫
�η�������ꤷ�ޤ���

  * �ۥ���̾ (��: "localhost")
  * octet decimal�ˤ��IP���ɥ쥹(ʸ����) (��: "127.0.0.1")
  * ��ʸ���� (""), ʸ���� "<any>" - INADDR_ANY������
  * ʸ���� "<broadcast>" - INADDR_BROADCAST������
  * IP���ɥ쥹��ɽ�� 32bit ������ (��: 0x7f000001)

====[a:service_format] �����ӥ��������

�����ӥ�����ꤹ��ˤϰʲ��Τ����줫�η�������ꤷ�ޤ���

  * �ݡ����ֹ�(�����ޤ���ʸ����) (��: 21, "21")
  * �����ӥ�̾ (��: "ftp")

====[a:pack_string] �����åȥ��ɥ쥹��¤�Τ� pack ����ʸ����

�����åȥ��ɥ쥹��¤�ΤȤϡ�C ����ι�¤�� struct sockaddr_in (IPv4)
�� struct sockaddr_un (Unix �ɥᥤ��)��ؤ��ޤ���
[[c:Socket]] ���饹�ʤɥ����åȤ����٥륤�󥿥ե����������Ѥ���ޤ���

#@if (version >= "1.8.0")
[[m:Socket.pack_sockaddr_in]],
[[m:Socket.unpack_sockaddr_in]] �Ȥ��ä��᥽�åɤˤ�ꡢ
�㤨�С��ʲ��Τ褦�ˤ��Ƥ���ʸ��������뤳�Ȥ�����ޤ�

  require 'socket'
  p Socket.pack_sockaddr_in("echo", "127.0.0.1")
  => "\002\000\000\a\177\000\000\001\000\000\000\000\000\000\000\000"

#@else
�ޤ���ruby 1.6 �����Ǥϡ��ʲ��Τ褦�� [[m:Array#pack]] ����ѤǤ��ޤ���

  require 'socket'
  p [Socket::AF_INET,
     Socket.getservbyname('echo'),
     127, 0, 0, 1].pack("s n C4 x8")
  => "\002\000\000\a\177\000\000\001\000\000\000\000\000\000\000\000"
#@end

=== �ۥ���̾�� IP ���ɥ쥹���Ѵ�

�ۥ���̾���� IP ���ɥ쥹�ؤ��Ѵ� (������) ��Ԥ��᥽�åɤϰʲ��Τ�Τ��Ѱդ���Ƥ��ޤ���

  * [[m:IPSocket.getaddress]]("www.ruby-lang.org") => "210.163.138.100"
  * [[m:TCPSocket.gethostbyname]]("www.ruby-lang.org") => ["beryllium.ruby-lang.org", [], 2, "210.163.138.100"]
  * [[m:Socket.gethostbyname]]("www.ruby-lang.org") => ["beryllium.ruby-lang.org", [], 2, "\322\243\212d"]
  * [[m:Socket.getaddrinfo]]("www.ruby-lang.org", "http") => [["AF_INET", 80, "beryllium.ruby-lang.org", "210.163.138.100", 2, 1, 6]]

�դ� IP ���ɥ쥹����ۥ���̾�ؤ��Ѵ� (�հ���) ��Ԥ��᥽�åɤϰʲ��Τ�Τ��Ѱդ���Ƥ��ޤ���

#@#* TCPSocket.gethostbyname("210.163.138.100") => ["210.163.138.100", [], 2, "210.163.138.100"]
#@#* Socket.gethostbyaddr(host[, type])
#@#* [[m:Socket.getnameinfo]]([Socket::AF_INET, "http", "210.163.138.100"]) => ["beryllium.ruby-lang.org", "www"]
  * [[m:Socket.getnameinfo]]([nil, nil, nil, "210.163.138.100"]) => ["beryllium.ruby-lang.org", 0]


�ޤ���[[lib:resolv]] �饤�֥�����ѤǤ��ޤ���

#@include(socket/BasicSocket)
#@include(socket/IPSocket)
#@include(socket/SOCKSSocket)
#@include(socket/Socket)
#@include(socket/Socket__Constants)
#@include(socket/TCPServer)
#@include(socket/TCPSocket)
#@include(socket/UDPSocket)
#@include(socket/UNIXServer)
#@include(socket/UNIXSocket)
#@since 1.9.1
#@include(socket/Addrinfo)
#@include(socket/Socket__UDPSource)
#@end
#@since 1.9.2
#@include(socket/Socket__AncillaryData)
#@end
require optparse

[[m:OptionParser#on]] �ǻ��Ѳ�ǽ�ʥ��饹�� [[c:URI]] ��
�ɲä���ޤ���
���ץ����ΰ����� [[c:URI]] ���饹�Υ��󥹥��󥹤��Ѵ�����Ƥ��顢
[[m:OptionParser#on]] �Υ֥��å����Ϥ���ޤ���

 require 'optparse/uri'
 opts = OptionParser.new

 opts.on("-u URI", URI){|u|
   p u #=> #<URI::HTTP:0x201267d4 URL:http://www.example.com>
 }
 opts.parse!
 
 # ruby command -u http://www.example.com
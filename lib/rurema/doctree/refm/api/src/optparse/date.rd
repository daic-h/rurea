require optparse

[[m:OptionParser#on]] �ǻ��Ѳ�ǽ�ʥ��饹�� [[c:Date]] �� [[c:DateTime]] ��
�ɲä���ޤ���
���ץ����ΰ����Ϥ��줾��Υ��饹�Υ��󥹥��󥹤��Ѵ�����Ƥ��顢
[[m:OptionParser#on]] �Υ֥��å����Ϥ���ޤ���

 require 'optparse/date'
 opts = OptionParser.new
 
 opts.on("-d DATE", Date){|d|
   p d.to_s #=> 2000-01-01
 }
 opts.parse!
 
 # ruby command -d 2000/1/1
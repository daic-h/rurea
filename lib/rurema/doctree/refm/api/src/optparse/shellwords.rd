require optparse

[[m:OptionParser#on]] �ǻ��Ѳ�ǽ�ʰ����� [[c:Shellwords]]
�ɲä���ޤ���
���ץ����ΰ����� [[m:Shellwords.#shellwords]] �ˤ�ä�������Ѵ�����Ƥ��顢
[[m:OptionParser#on]] �Υ֥��å����Ϥ���ޤ���

 require 'optparse/shellwords'
 opts = OptionParser.new
 
 opts.on("-s VAL", Shellwords){|a|
   p a #=> ["hoge", "foo", "bar"]
 }
 opts.parse!
 
 # ruby command -s hoge\ foo\ bar
names=task
visibility=private 
kind=added

--- task(*args){ ... } -> Rake::Task

Rake ��������������ޤ���

@param args ������̾�Ȱ�¸����������ꤷ�ޤ���

��:
  task :clobber => [:clean] do
    rm_rf "html"
  end

@see [[m:Rake::Task.define_task]]



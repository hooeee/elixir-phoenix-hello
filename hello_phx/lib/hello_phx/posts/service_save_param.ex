defmodule HelloPhx.Posts.ServiceSaveParam do
  ## 이렇게하면 atom으로 정의된다 . 일반 필드로는 못만든다. map을 권장한다.
  defstruct [:author, :title, :content]
end

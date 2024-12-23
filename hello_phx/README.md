# HelloPhx

To start your Phoenix server:

-   Run `mix setup` to install and setup dependencies
-   Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

-   Official website: https://www.phoenixframework.org/
-   Guides: https://hexdocs.pm/phoenix/overview.html
-   Docs: https://hexdocs.pm/phoenix
-   Forum: https://elixirforum.com/c/phoenix-forum
-   Source: https://github.com/phoenixframework/phoenix

## mix cli

-   mix ecto.gen.migration -r 레포명
-   mix ecto.migrate
-   mix ecoo.create

```
lib/
  your_app/
    contexts/                   # 비즈니스 로직과 도메인 관리
      accounts/
        accounts.ex             # Context 인터페이스
        user.ex                 # Ecto Schema
      todos/
        todos.ex                # Context 인터페이스
        task.ex                 # Ecto Schema
    core/                       # 공통 기능 및 도메인 간 공통 로직
      auth/                     # 인증/인가 모듈
      utils/                    # 유틸리티 모듈 (예: 날짜, 문자열 처리)
    repo.ex                     # 데이터베이스 관리
    your_app.ex                 # 엔트리 포인트
  your_app_web/
    controllers/                # HTTP 요청 처리
      page_controller.ex        # 기본 페이지 컨트롤러
      todo_controller.ex        # Todo 관련 컨트롤러
    templates/                  # HTML 템플릿
      page/
        index.html.eex
      todo/
        index.html.eex
        show.html.eex
    views/                      # 뷰 렌더링 로직
      page_view.ex
      todo_view.ex
    channels/                   # WebSocket 채널
    router.ex                   # 라우터 설정
    endpoint.ex                 # 애플리케이션 엔드포인트
config/
  config.exs                    # 환경 설정 파일

```

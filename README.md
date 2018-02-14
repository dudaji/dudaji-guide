# dudaji-guide

### Quick start
- webstorm을 설치한다.
- 아래 플러그인을 설치한다.
- dudaji-jetbrain-settings.jar, jetbrain-js-style-guide-dudaji.xml을 임포트한다. 

### Plugins
- ideavim

### Custom key replace
- caps lock to ctrl

### Custom key map
- Find in path: 'cmd+shift+f'
- Navigate / File: 'ctrl+p'
- Navigate / Back: 'cmd+<-'
- Navigate / Forward: 'cmd+->'
- Code / Folding: 'cmd+shift 9, 0, -, ='
- Code / Comment with Line Comment: 'ctrl+/'
- Code / Reformat code: 'cmd+shift+ctrl+f'
- Run / debug: 'F5'
- Run / Resume program: 'cmd+alt+r'
- Run / Toggle breakpoint: 'F9'
- Go to definition: 'ctrl+]'

### Cheat sheet
- 원하는 파일을 열고자 하면 ctrl+p를 이용하거나 cmd+1을 누른뒤 화살표로 원하는 파일을 연다.
- 파일내에서 정의된 곳으로 가고 싶다면 함수 위에 커서를 놓은 뒤 ctrl+]
- 정의를 본 뒤 아까 위치로 이동하고 싶다면 'cmd+<-'
- 파일 내에서 그랩하고 싶다면 'shift+8'
- 전체 파일에서 검색하고 싶다면 'shift+ctrl+f'
- page up / down을 하고 싶다면 'ctrl+f, b'
- 몇줄의 코드를 커맨트 처리하고 싶다면 'shift+b'후 커서로 블록 지정후 'ctrl+/'
- 코드를 폴딩해서 보고 싶으면 'cmd+shift 9, 0, -, ='
- undo / redo: u, ctrl+r
- 기타 vim의 기본 이용: [http://vim.wikia.com/wiki/Best_Vim_Tips](http://vim.wikia.com/wiki/Best_Vim_Tips)

### Dudaji style guide
- Strict 80(100) column (without long string)
- while, for, if 등에 의해 depth가 깊어지는 것을 싫어합니다. 가능하면 2 depth 까지가 좋고 3 depth 까지는 허용합니다. 그 이상의 depth 는 지양합니다. 
- 함수는 한페이지(40줄 정도) 이내로 작성합니다.
- 맴버 변수는 풀네임을 꼭 이용합니다. 
- 로컬 변수이고 한 페이지(40줄 정도)의 변수 스코프인 경우라면 짧은 이름의 변수를 허용합니다.
- 네트웍이 안되는 환경에서도 개발을 할 수 있도록 모든 것을 로컬에 띄워서 개발하는 것을 좋아합니다. 
어쩔수 없는 상황이 아니라면 개발서버에 붙어서 작업하는 것도 싫어합니다.
- 기능단위의 개발을 좋아합니다. 풀스택개발을 선호합니다. 서버/클라이언트 개발자로 나누어서 개발하는 것을 싫어합니다
- git-flow를 사용합니다 [https://danielkummer.github.io/git-flow-cheatsheet/index.ko_KR.html](https://danielkummer.github.io/git-flow-cheatsheet/index.ko_KR.html)



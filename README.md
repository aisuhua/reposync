```sh
suhua@g7-7588:/tmp/test$ git log
commit 275659b3fb62150808850d28754c5585ac2acb86 (HEAD -> master)
Author: aisuhua <1079087531@qq.com>
Date:   Wed Mar 6 21:50:26 2024 +0800

    add d and e.txt

commit aeaea1d19c19bf993590b11776c182a3d916e72d
Author: aisuhua <1079087531@qq.com>
Date:   Wed Mar 6 21:49:44 2024 +0800

    change c.txt

commit f7a45a6de3b3915268bb0b27a2b809fa111ceb7b
Author: aisuhua <1079087531@qq.com>
Date:   Wed Mar 6 21:49:21 2024 +0800

    add b and c .txt

commit 6c21838ab5aff738c2f0a7b0811f2dee180675cb
Author: aisuhua <1079087531@qq.com>
Date:   Wed Mar 6 21:48:57 2024 +0800

    add a.txt
suhua@g7-7588:/tmp/test$ git show --pretty="format:" --name-only 275659b3fb62150808850d28754c5585ac2acb86..HEAD | sort | uniq
suhua@g7-7588:/tmp/test$ git show --pretty="format:" --name-only aeaea1d19c19bf993590b11776c182a3d916e72d..HEAD | sort | uniq
d.txt
e.txt
suhua@g7-7588:/tmp/test$ git show --pretty="format:" --name-only f7a45a6de3b3915268bb0b27a2b809fa111ceb7b..HEAD | sort | uniq

c.txt
d.txt
e.txt
suhua@g7-7588:/tmp/test$ git show --pretty="format:" --name-only 6c21838ab5aff738c2f0a7b0811f2dee180675cb..HEAD | sort | uniq

b.txt
c.txt
d.txt
e.txt
suhua@g7-7588:/tmp/test$ tar -cvf update.tar $(git show --pretty="format:" --name-only 6c21838ab5aff738c2f0a7b0811f2dee180675cb..HEAD | sort | uniq)
b.txt
c.txt
d.txt
e.txt
test/b.txt
test/c.txt
test/d.txt
test/e.txt
```

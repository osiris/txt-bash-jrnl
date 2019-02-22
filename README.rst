=============
txt-bash-jrnl
=============

A simple command line journal application that stores your journal in a
plain text file, developed in *bash* and inspired in
`jrnl.sh <http://jrnl.sh>`__

Install
-------

Install *jrnl* to ``/usr/bin/jrnl``

::

    # sudo make install

Include in your ``.bashrc``

::

    source jrnl_aliases

Aliases
-------

::

    alias j1='jrnl -1'
    alias j2='jrnl -2'
    alias j3='jrnl -3'
    alias j4='jrnl -4'
    alias j5='jrnl -5'
    alias j6='jrnl -6'
    alias j7='jrnl -7'
    alias j8='jrnl -8'
    alias j9='jrnl -9'
    alias j='jrnl'
    alias jY='jrnl year'
    alias jYs='JRNL_DONT_SHOW_DETAIL=1 jrnl year'
    alias ja='jrnl all'
    alias jad='jrnl add'
    alias jadd='jrnl add'
    alias jc='jrnl copy'
    alias jd='jrnl diff'
    alias je='jrnl edit'
    alias jf='jrnl file'
    alias jh1='jrnl h 1'
    alias jh2='jrnl h 2'
    alias jh3='jrnl h 3'
    alias jh='jrnl -10'
    alias ji1='jrnl i 1'
    alias ji2='jrnl i 2'
    alias ji3='jrnl i 3'
    alias jj='cd .jrnl/$(date +%Y)/$(date +%Y-%m)/$(date +%F)'
    alias jl='jrnl ls'
    alias jls='JRNL_DONT_SHOW_DETAIL=1 jrnl ls'
    alias jm='jrnl month'
    alias jms='JRNL_DONT_SHOW_DETAIL=1 jrnl month'
    alias jn='jrnl new'
    alias jr='jrnl rm'
    alias jt='jrnl time'
    alias jv='jrnl view'
    alias jw='jrnl week'
    alias jws='JRNL_DONT_SHOW_DETAIL=1 jrnl week'
    alias jx='jrnltimestampfix; jrnltimefix'
    alias jy='jrnl yesterday'
    alias td='timediff'

Usage
-----

Create a journal:

::

  # jrnl

View the last journal:

::

  # jrnl 1

  2017-07-22 09:05 add help and version +help

    @ 01:24 hs

View the last five journals:

::

  # jrnl 5

  2017-07-22 09:05 add help and version +help

    @ 01:24 hs

  2017-07-22 08:47 fix find last files +find

    @ 00:12 hs

List all journals, optionally filter by PATTERN or REGEX

::

  # jrnl a

  0328c3 □▣▣▣▣▨ 00:34 11:19 11:53 create repo in github and initialize local repo with minimal README.md, add jrnl directory, todo.txt files and `.g...
  19d7cb □□□□□▣ 00:50 19:54 20:44 fix jrnl with shellcheck
  3348c0 ▣▣▣▣□□ 00:27 08:11 08:38 add alternative for colors without tput +termux
  9809e9 □□□□▣▣ 00:12 08:47 08:59 fix find last files +find
  01238c ▣▣▣▣▣▣ 01:24 09:05 10:29 add help and version +help
  182521 □□□□▣▣ 00:37 12:50 13:27 add quick enter of journal from command line without edit in Vim
  1abb58 □□□▣▣□ 00:18 16:34 16:52 draw draft activity and sequence diagrams of jrnl and redmine
  489216 □□□▣▣▣ 01:11 15:40 16:51 allow create new journal from STDIN or PIPE
  6185ce □□▣▨□□ 00:03 18:31 18:34 replace hash of content file with hash of filename
  9ee550 □□□□▣▣ 00:13 00:47 01:00 set duration time of last journal when create new journal
  ad7a19 ▣▣▣▣▨□ 00:43 01:01 01:44 List last week/month journals
  522611 □□□□▣▣ 02:04 01:45 03:49 add hour timeline
  7b1f19 □□□□▣▣ 00:10 12:48 12:58 add day timeline

     2017-10-17 08:46  0 □□□□▣▣  1 ▣▣▣▣▣▣  8 ▣▣▣▣▣▣  9 ▣▣▣▣▣▣ 11 □▣▣▣▣▨ 12 □□□□▣▣ 15 □□□▣▣▣ 16 □□□▣▣□ 18 □□▣▨□□ 19 □□□□□▣

List all journals filtered by PATTERN

::

  # jrnl a github

  0328c3 □▣▣▣▣▨ 00:34 11:19 11:53 create repo in github and initialize local repo with minimal README.md, add jrnl directory, todo.txt files and `.g...

     2017-07-15 00:34 11 □▣▣▣▣▨

List all journals filtered by REGEX

::

  # jrnl a "#[0-9]+"

Copy journal by HASH

::

  # jrnl c ha4s5h

View differences between journals

::

  # jrnl d ha4sh1 ha4sh2

View difference with the last journal

::

  # jrnl d ha4sh1

Edit last journal

::

  # jrnl e

Edit specified journal by HASH

::

  # jrnl e ha4s5h

Show short help

::

  # jrnl --help

Show full help

::

  # jrnl -h

List today journals

::

  # jrnl l

Delete a journal specified by hash

::

  # jrnl rm

Delete a the last journal

::

  # jrnl rm ha4s5h

Set specified time in HH:MM format or by default with difference between
current time and header timestamp of journal

::

  # jrnl t 00:25
  # jrnl t

View the last journal

::

  # jrnl v

View a journal specified by hash

::

  # jrnl v ha4s5h

Set filename of journal with timestamp of journal header

::

  # jrnl fix
  # jrnl x

List yesterday journals

::

  # jrnl y

List last week journals

::

  # jrnl w

tools
-----

jrnltimediff
~~~~~~~~~~~~

Set the duration of journal with actual time or specified end time

::

  # jrnltimediff .jrnl/2019/2019-02/2019-02-22/012003.txt
  # jrnltimediff .jrnl/2019/2019-02/2019-02-22/012003.txt 01:32

jrnltimefix
~~~~~~~~~~~

When journal have a empty time, set with timediff of start time of next
journal entry.

::

  # jrnl list
  c9d9f5 □▣□□□□ 00:00 01:20 01:20 example a
  71cd58 □□▣□□□ 00:00 01:32 01:32 example b
  da7c4d □□□▣□□ 00:00 01:40 01:40 example c
  715b93 ▣□□□□□ 00:00 02:11 02:11 example d

  # jrnltimefix
  [OK] [set_time] set time: 00:12 in file: /home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/012003.txt
  [OK] [set_time] set time: 00:08 in file: /home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/013259.txt
  [OK] [set_time] set time: 00:31 in file: /home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/014019.txt
  [OK] [set_time] set time: 01:10 in file: /home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/021135.txt

  # jl
  c9d9f5 □▣▣□□□ 00:12 01:20 01:32 example a
  71cd58 □□▣▣□□ 00:08 01:32 01:40 example b
  da7c4d □□□▣▣▣ 00:31 01:40 02:11 example c
  715b93 ▣▣▣▣▣▣ 01:10 02:11 03:21 example d

jrnltimestampfix
~~~~~~~~~~~~~~~~

Set filename of journal with timestamp of journal header.

::

  #  jrnltimestampfix
    '/home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/012003.txt' -> '/home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/012203.txt'
    '/home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/014019.txt' -> '/home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/014219.txt'
    '/home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/013259.txt' -> '/home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/013459.txt'
    '/home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/021135.txt' -> '/home/osiris/git/osiux/txt-bash-jrnl/.jrnl/2019/2019-02/2019-02-22/021335.txt'

License
-------

-  all software licensed under the terms of the GNU General Public
   License:

-  all documentation, notes, ideas, graphics and sounds are licensed
   under the Creative Commons Attribution-ShareAlike 4.0 International
   License:

Author Information
------------------

`Osiris Alejandro Gómez <https://www.osiux.com/>`__, worker cooperative
of `gcoop Cooperativa de Software Libre <https://www.gcoop.coop/>`__.

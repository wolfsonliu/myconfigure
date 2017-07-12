#!/usr/bin/env python
# -*- coding: utf-8 -*- #
#from __future__ import unicode_literals



#### Basic Information
SITENAME     = u"Wolf Cave"
#SITESUBTITLE = "一个记录 Wolfson Liu 生活的地方"
SITEURL      = "https://wolfsonliu.github.io"
#SITEURL      = "http://localhost:8000"
TIMEZONE     = "Asia/Shanghai"
DEFAULT_LANG = u"zh"
AUTHOR       = u"Wolfson Liu"   # author name.

#### Path Settings ###
PATH               = "content"
OUTPUT_PATH        = 'output/'
OUTPUT_SOURCES     = True   # copy source file to OUTPUT_PATH
#PLUGINS = []
#PLUGIN_PATHS = []
STATIC_PATHS       = ["pages","images"]
ARTICLE_PATHS      = ["pages"]

### URL Settings ###
INDEX_SAVE_AS      = 'index.html'
AUTHOR_URL         = "author/wolfson-liu.html"
AUTHOR_SAVE_AS     = "author/wolfson-liu.html"
AUTHORS_URL        = ""
AUTHORS_SAVE_AS    = ""
ARTICLE_URL        = "archive/{slug}.html"
ARTICLE_SAVE_AS    = "archive/{slug}.html"
DRAFT_URL          = 'drafts/{slug}.html'
DRAFT_SAVE_AS      = 'drafts/{slug}.html'
PAGE_URL           = 'pages/{slug}.html'
PAGE_SAVE_AS       = 'pages/{slug}.html'
#USE_FOLDER_AS_CATEGORY = True
#FILENAME_METADATA  = "(?P<slug>.*)"
TAG_URL            = "tag/{slug}.html"
TAG_SAVE_AS        = "tag/{slug}.html"
CATEGORY_URL       = "{slug}.html"
CATEGORY_SAVE_AS   = "category/{slug}.html"
ARCHIVES_URL       = "archive"
ARCHIVES_SAVE_AS   = "archive/archives.html"
CATEGORIES_URL     = "category"
CATEGORIES_SAVE_AS = "category/categories.html"
TAGS_URL           = "tag"
TAGS_SAVE_AS       = "tag/tags.html"
YEAR_ARCHIVE_SAVE_AS = "posts/{date:%Y}/index.html"
MONTH_ARCHIVE_SAVE_AS = "posts/{date:%Y}/{date:%b}/index.html"



####Feed
# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
#### Setting Side Links
#LINKS = (("中国科技大学", "http://www.ustc.edu.cn/zh_CN/"),
#         ("北京大学", "http://www.pku.edu.cn/"),
#         ("野生动植物保护国际（中国）", "http://www.ffichina.org/"))

# Social widget
SOCIAL = (("github", "https://github.com/wolfsonliu"),
          ("douban", "http://www.douban.com/people/77536581/"),)


##### Theme setting
THEME = "pelican-themes/pelican-blue"
SIDEBAR_DIGEST = "Nature Beauty Freedom"
MENUITEMS = (
    ("文章", SITEURL + "/" + ARCHIVES_SAVE_AS),
    ("类别", SITEURL + "/" + CATEGORIES_SAVE_AS),
    ("标签", SITEURL + "/" + TAGS_SAVE_AS),
    #("过去", SITEURL + "/" + YEAR_ARCHIVE_SAVE_AS),
    ("关于", SITEURL+"/about.html"),
)
MENU_INTERNAL_PAGES = (
    ("Tags", TAGS_URL, TAGS_SAVE_AS),
    ("Categories", CATEGORIES_URL, CATEGORIES_SAVE_AS),
    ("Archives", ARCHIVES_URL, ARCHIVES_SAVE_AS),
)
FAVICON = SITEURL+"/images/favicon.jpg"    # head picture
DEFAULT_PAGINATION = 4

##### Display setting
DISPLAY_PAGES_ON_MENU          = False
DISPLAY_HEADER                 = True
DISPLAY_FOOTER                 = True
DISPLAY_HOME                   = True
DISPLAY_MENU                   = True
DISPLAY_CATEGORIES_ON_MENU     = False
DISPLAY_CATEGORIES_ON_SUBMENU  = False
DISPLAY_CATEGORIES_ON_POSTINFO = False
DISPLAY_AUTHOR_ON_POSTINFO     = False     # Display the author in the article"s info
DISPLAY_SEARCH_FORM            = False     # Display the search form
#PAGES_SORT_ATTRIBUTE          (Title)   # Sort pages list by a given attribute
#GITHUB_URL (None) # Display the "Fork me on Github" banner
#RELATIVE_URLS = True # Uncomment following line if you want document-relative URLs when developing



DISQUS_SITENAME = u"wolfsonliu"
GOOGLE_ANALYTICS = ""

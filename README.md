# my_site
djangoでwebサイトの最小構成環境を作成しました。

## 必要環境
* python 2.7.11
* mysql 5.6.19
* pip 1.5.6

## virtualenvwrapperでpython環境構築
```
# pip install virtualenvwrapper
# mkvirtualenv --python=/path/to/python/2.7.11/bin/python my_site
```

## pip で必要モジュールインストール
```
# pip install django==1.9
# pip install mysql-python
```

## mysqlでdatabase作成
```
# mysql -u root
> CREATE DATABASE my_site;
```

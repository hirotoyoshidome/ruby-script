# Agri情報クローラー

## 使用方法

* mian.rbの実行

## DB情報

* show databases;

* show tables from agri;

* use agri;

*  create user 'agriuser'@'localhost' identified by 'agriuser';

* mysql -u root;

* mysql -u agriuser;

* select User, Host from mysql.user;

## TODO

* userの作成

* テーブル構成

* infoテーブル
識別子 id int
タイトル title varchar(20)
URL url varchar

* contentsテーブル
識別子 id int
外部キー info id int
コンテンツ content text


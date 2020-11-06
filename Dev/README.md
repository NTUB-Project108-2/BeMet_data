# 測試版 DB Schema

## Full

完整 DB 備份

## Slice 

各表分開備份

## 20200330
* 完整備份

## 20200703
* 建立新資料庫

## 20200704 
* 修改客製化欄位
    * 新增個人資料編號欄位
* 修改部分欄位
    * 新增 not null 標籤

## 20200730
* 新增欄位
    * 問題回報
        * 處理日期
        * 處理完成日期
        * 處理狀態
    * 時間軸
        * 配對方帳號
        * 被配對方帳號
## 20200802
* 刪除欄位
    * 朋友客製化欄位
        * 刪除使用者Id
* 新增資料
    * 時間軸種類
        * 新增活動、遇見

## 20200902
* 修改欄位
    * 問題回報
        * 修改狀態欄位型態 varchar(3) to int
    * code_table
        * 修改code欄位型態 varchar(3) to int
* 新增欄位
    * 活動邀請
        * 邀請狀態
* 新增資料表 
    * 活動時間
* 新增資料
    * codetable 新增 活動邀請表 邀請狀態碼
## 20200921
* 刪除資料表
    * friend_remark
    * friend_label
* 新增欄位
    * friend_customization
        * content 
## 20201012
* 修改欄位名稱
    * activity_date
        * activity_time_no to activity_date_no
## 20201016
* 新增欄位
    * friend
        * status
* 新增資料
    * code_tabe
        * 新增 friend 對應資料
## 20201106
* 刪除資料表
    * user_customization
# 欢迎来到秦川的练习项目合集

- 你现在看到的是苍穹外卖(sky-take-out)
- 你可以通过切换不同的分支来查看不同的项目

## 项目介绍
- 这是我跟着黑马课程的苍穹外卖完整做完的一个基于SpringBoot的项目
- 包含服务端-管理端-用户端
- 通过这个项目，你可以学习到很多新颖的技术，以及规范的代码开发

## 项目名称：苍穹外面
- 项目技术：Springboot、SpringMVC、Mybatis、MySQL、Redis、nginx、POI、OSS、WebSocket 、Spring Task、Spring Cache
- 项目描述：本项目是专门为餐饮企业（餐厅、饭店）定制的一款软件产品，包括系统管理后台和小程序端应用两部分。其中系统管理后台主要提供给餐饮企业内部员工使用，可以对餐厅的分类、菜品、套餐、订单、员工等进行管理维护，对餐厅的各类数据进行统计，同时也可进行来单语音播报功能。小程序端主要提供给消费者使用，可以在线浏览菜品、添加购物车、下单、支付、催单等
- 主要负责的模块:
  1.	系统管理后台：基础数据维护（员工、分类、菜品、套餐）、数据统计、报表模块
  2.	小程序端：微信登录、用户下单和微信支付


## 如何启动项目？
1. 配置数据库
   - 打开navicat，连接自己电脑的数据库，新建数据库名为：sky-take-out
   - 然后右键此数据库，运行sql文件，sql文件就是sky-take-out.sql
   - 除了mysql之外还需要启动redis哦~
2. 启动后端
   - 用IDE打开后端项目sky-take-out
   - 修改application.yml里面的数据库密码为你自己电脑数据库的密码
   - 然后可以直接启动项目了
3. 启动前端
   - 双击nginx.exe启动管理端
   - 用微信开发者工具打开小程序启动用户端
  
## 安全考虑
- 为了个人信息安全考虑，我把自己项目中的阿里云oss相关的配置和百度ak相关配置删除了，这会导致外卖的图片无法加载以及定位服务无法运行
- 解决方法就是自己申请阿里云的oss和百度的ak，并把自己申请到的个人配置填到resource目录下的application.yml里面
- 除此之外无其他BUG，如有疑问可以加我qq：1572294593

## 图片展示
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/7de40881-005c-4c58-9812-8e4a460fa493)
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/f98b6e99-1f9b-4046-9adb-c09ddaff8495)
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/0a913aff-4bf2-4ad0-8923-0a8afb8b7979)
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/bb28225a-47ee-49cf-9994-00af554a6aa5)
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/2449e279-51fa-42e9-99cd-d10bcc5ca20c)
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/7b093ae3-7b75-422b-8f90-00b93f840fd1)
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/ea2bb04e-b62a-4c6b-a567-9b2f9af4e55b)
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/a481684c-467a-496f-b119-c96f17a90435)
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/31cd3852-5a13-4754-aa88-057d220fa6bc)
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/3fb4d463-b7fa-4919-9ea5-350401324db4)
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/5dd8cd71-490e-4134-87cf-3d81b1d275fc)
![image](https://github.com/Qinchuan008/SpringBootDemo/assets/87808576/3ec3b3c3-f51b-4283-af6e-b45fe7f05cc4)


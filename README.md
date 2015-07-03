

HOOK  
===================================  
   
  实现了button的颜色和标题的替换
    
Method Swizzling  
-----------------------------------  
 
    
### ViewController  
  在ViewController类里面 创建了两个UIButton , 一个红色, 一个蓝色, title 分别是我是红色Button ,我是蓝色Button
  并且拥有点击事件
  
### DHMethodSwizzling
  在这个类里, 实现了UIButton的 SetBackgroundColor的方法替换, 和setTitle的替换
  里面有详细的注释 可以自行尝试
  

  

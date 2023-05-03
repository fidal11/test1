// for(i=0;i<5;i++) {
//     console.log(i)
// }

// for(i=0;i<10;i++) {
//     if(i%==0){
//     console.log(i)}
// }

// sum
// sum=0

// for(i=0;i<=10;i++){
//     sum+=i
    
// }
// console.log(sum)

// 2dimentionarray
// multyarray

// marks=[10,20,30,40]
// for(i=0;i<marks.length;i++){
//     document.write(marks[i]+"<br>")
// }
// goals=[
//     [2,3,4,5],
//     [6,7,8,9]
// ]
// for(i=0;i<goals.length;i++){
//     for(j=0<goals[0].lenght;j++){
//         document.write(goals[i][j]+"<br>")
//     }
// }

// for(i=0;i<5;i++){
//     for(j=0;j<5;j++){
//         document.write(" * ")
//     }
//     document.write("<br>")
// }

// whileloop
// i=0
// while(i<=10){
//     document.write(i)
//     i++
// }

// evenno

// i=0
// while(i<=10){
//     document.write(i)
//     i+=2
// }

// countthedigit

// i=23456
// count=0
// while(i>0){
     
//     i=parseInt(i/10)
//     count++

// }
// document.write(count)

// sumof

// i=Number( prompt("enter a number"))
// sum=0

// while(i>0){
//     sum+=i%10
//     i=parseInt(i/10)

// }
// document.write("the sum of the digits of the number"+i+" is "+sum)

// dowhileloop

// i=0
// do{
//     document.write(i)
//     i++
// }
// while(i>10)

// forof/in

// marks=[10,20,30,40]
//  for (const i in marks) {
//     console.log(i,marks[i])
    
//  }

// student={
//     fname:'fidal',lname:"baba",age:"20"
// }
// for(item in student){
//     console.log(item,student[item])
// }

// sorting

// num1=Number(prompt("enter number"))
// num2=Number(prompt("enter number"))
// num3=Number(prompt("enter number"))


// if(num1>num2){
//     if(num2>num3){
//     document.write( `Ascending1 order:${num3},${num2},${num1}`)
//     }

// }
// else if(num3>num1){
//     document.write(`Ascending2 order:${num2},${num1},${num3}`)
// }
// else if(num2>num3){
//     document.write(`Ascending3 order:${num2},${num3},${num1}`)
// }

// if(num2>num)
// {
//     if(num3>num2)
//     {
//     document.write(`Ascending4 order:${num1},${num2},${num3}`)
//     }
//     else if(num3>num1)
//     {
//         document.write(`Ascending5 order:${num3},${num1},${num2}`)
//     }
//     else if(num1>num3){
//         document.write(`Ascending6 order:${num2},${num1},${num3}`)
//     }
// }



// reversestring
     
  
// str=prompt("enter a string")
// str1=''
// for(i=str.length-1;i>=0;i--)
// {
//     str1+=str[i]
// }
// document.write(str1)

// primenumber

// num=Number( prompt("enter a number"))
// prime=0
// for(i=2;i<num;i++){
//     if(num%i==0){
//         prime=1
//         break;
        
//     }

// }
// if(prime==0){
//     document.write("prime")
// }
// else{
//     document.write("not a prime")
// }

// factorial

// a=number(prompt("enter a number"))
// fact=1
// for(i=1;i=a;i++){
// fact *=i
// }
// document.write("factorial of the number is"+fact)

// functions

// function fun(a,b) {
//     c=a+b
//     return c

// }
 
// x=10
// y=20
// var z =fun(x,y)
// alert(z)

// globalscope

// outside="i am global"
// var outside_var="i am also global"
// function test_scope(fn_param){

//     inside="inside function but global"
//     var inside_var="local to  function "

//     console.log("values inside the function")

//     console.log(outside)
//     console.log(outside_var)
//     console.log(inside)
//     console.log(inside_var)
//     console.log(fn_param)
// }
// test_scope("i am a parameter")

// console.log("**values outside the function**")

// console.log(outside)
// console.log(outside_var)
// console.log(inside)
// console.log(inside_var)
// console.log(fn_param)

// displayDatee

// function display_date(){
//     today=new Date()
//     document.write(today.toDateString())
// }
// display_date()


// hotelbill

// function total_pay(amount){

//     amount+=amount*10/100
//     return amount

// }
// bill_amount=1200
// total_amount=total_pay(bill_amount)
// total_pay(bill_amount)
// document.write(total_amount)

package main

import "fmt"

var _ int64=s()

func init(){
	fmt.Println("开始执行init函数")
}

func s() int64{
	fmt.Println("开始初始化const/var")
	return 1
}

func main(){
	fmt.Println("开始执行main函数")
}
#include"Vector.h"
#include<iostream>

int Vector::getx() const{
    return x;
}
int Vector::gety() const{
    return y;
}

void Vector::test(Vector v) {
    std::cout << v.x << "," << v.y <<std::endl; 
}

const Vector Vector::operator+(Vector &b)const {
    return Vector(x+b.x,y+b.y);
}
const Vector Vector::operator-(Vector &b)const {
    return Vector(x-b.x,y-b.y);
}
Vector& Vector::operator=(const Vector& b) {
    x = b.x;
    y = b.y;
    std::cout << "oprator = " << std::endl;
    return *this;
}
Vector::Vector() :Vector(0,0){}
Vector::Vector(int x,int y):x(x),y(y) {std::cout<<"constuct "<<x<<","<<y<<std::endl;}
Vector::Vector(const Vector& v) : Vector(v.x,v.y){
    std::cout << "& construct"<<std::endl;
}
Vector::~Vector() {std::cout<<"~"<<std::endl;}



int main() {
    Vector v1(10,20);
    Vector v2(100,200);
    Vector v(1000,1000) ;
    v 
    = 
    v1+v2;
    v1.test(v2);
    
    return 0; 
}

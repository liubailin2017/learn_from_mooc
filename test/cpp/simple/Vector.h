#ifndef Vector_h
#define Vecotr_h
class Vector
{
private:
    int x,y;
public:
    Vector();
    Vector(int x,int y);
    Vector(const Vector& v);
    int getx() const;
    int gety() const;

    void test(Vector v);

    const Vector operator+(Vector& b) const;
    const Vector operator-(Vector& b) const;
    Vector& operator=(const Vector& b);
    ~Vector();
};

#endif
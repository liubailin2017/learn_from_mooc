#include<iostream>
#include<string>

/**
 * 
 * fact : F ; (exp); !fact ;
 * 
 * exp:  fact; fact | fact ; 
 */
bool fact();
bool exp();

char cinpeek() {
    char c = std::cin.peek();
    while(c == ' ') {
        std::cin.get();
        c = std::cin.peek();
    }
    return c;
}


bool fact() {
    char op = cinpeek();
    bool r;
    if(op == '(') {
        std::cin.get();
        r = exp();
        std::cin.get();
    }else if(op == '!') {
        std::cin.get();
        r = !fact();
    }else {
        if(op == 'F'){
            r = false;
            std::cin.get();
        }else if(op == 'V'){
            r = true;
            std::cin.get();
        }
    }
    return r;
}


bool exp() {
    bool r = fact();
    bool t;
    bool more = true;
    char op = cinpeek();
    while (more)
    {
        if(op == '|') {
            std::cin.get();
            t = fact();
            r = r || t;
            /*
                can't write as // r = r || fact 
             */
        }else if(op == '&') {
            std::cin.get();
            t = fact();
            r = r && t;
        }else {
            more = false;
        }
        op = cinpeek();
    }
    return r;
}

bool isf() {
    char c;
    c = cinpeek();
    if(c == 'F' || c == 'V' || c== '!' || c== '(') 
        return false;
    else 
        return true;
}

int main() { 
    char c;
int i = 0;
    do{
        i++;
        if(exp()){
            std::cout<<"Expression "<<i<<": ";
            std::cout << "V"<<std::endl;
        }
        else{ 
            std::cout<<"Expression "<<i<<": ";
            std::cout << "F"<<std::endl;
        }
        std::cin.get();
    }while (!isf());

    return 0;
}
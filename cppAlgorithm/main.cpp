using namespace std;
#include <iostream>
class Person{
public:
    char* name;
    int age;
    void showInfo(){
        cout<< name << " is " << age << endl;
    }
private:
    void growUp(int addAge){
        this->age += addAge;
    }

};
int main() {
    std::cout << "Hello, World!" << std::endl;
    Person *p = new Person();
    p->name = "gapmh";
    p->age = 12;
    p->showInfo();
    return 0;
}


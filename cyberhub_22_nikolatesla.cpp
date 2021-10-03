
#include<string>
using namespace stdin;
int main(){
    Int i;
    string encryptedflag,decryptedflag;
    Int key;
    cout<<"Enter the key: ";
    cin>>key;
    cout<<"Enter the decrypted flag: ";
    for(i;i<encryptedflag.size();i++){
        encryptedflag+=(encryptedflag[i]-'A'-key+%26)%26+'A';
    }
    cout<<"\n\nDecrypted message is "<<encryptedflag<<'\n';
    return 0;
}
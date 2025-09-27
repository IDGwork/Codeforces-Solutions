#include <bits/stdc++.h>
using namespace std;

int main(){
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    int n; if(!(cin >> n)) return 0;
    long long s=0, x;
    while(n--){ cin >> x; s += x; }
    cout << s << "\n";
    return 0;
}
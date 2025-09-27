#include <bits/stdc++.h>
using namespace std;

#define fastio ios::sync_with_stdio(false); cin.tie(nullptr);

int main() {
    fastio;
    int w;
    cin >> w;
    if (w > 2 && w % 2 == 0) cout << "YES\n";
    else cout << "NO\n";
    return 0;
}
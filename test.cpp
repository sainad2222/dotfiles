#pragma GCC optimize("Ofast")
#pragma GCC target("avx,avx2,fma")
#pragma GCC optimization ("unroll-loops")

#include <iostream>
#include <numeric>
#include <iomanip>
#include <cstdio>
#include <cstdlib>
#include <algorithm>
#include <cmath>
#include <vector>
#include <set>
#include <stack>
#include <map>
#include <unordered_set>
#include <unordered_map>
#include <queue>
#include <deque>
#include <ctime>
#include <cassert>
#include <complex>
#include <string>
#include <cstring>
#include <climits>

using namespace std;

typedef long long int ll;
typedef long double db;


#define TEST ll t; cin>>t; while(t--)
#define vell vector<ll>
#define pl pair<ll,ll>
#define all(v) v.begin(),v.end()
#define pb push_back
#define ff first
#define ss second
#define mp make_pair
#define dbg(x)  cerr << #x << ": "<< x <<endl
#define dbg2(x,y) cerr<< #x <<": "<< x <<" || "<< #y << ": " << y << endl

#define endl "\n"
#define MAX 1e18
#define MIN INT_MIN
#define mod 1000000007
#define PI 3.14
bool check(ll n){
    for(ll i=2;i*i<=n;i++){
        if(n%i==0)
        return false;
    }
    return true;
}
void solve(){
    ll n;ll temp;
    cin>>n;
    temp=n;
    if(check(n))
    {cout<<1<<endl;
    cout<<n;}
    else{
        vector<ll>v;
        
        if(n%2==0){
            
            
            while((n/2)%2==0){
                
                v.pb(2);
                n=n/2;
                
            }
            
            v.pb(n);
           
        }
        n=temp;
        int f=0;
        vector<ll>v2;
            for(ll i=3;i<=sqrt(n);i+=2){
                if(n%i==0){
                    
                while((n/i)%i==0){
                    v2.pb(i);
                    n=n/i;
                    f=1;
                }
            }
             if(f==1)
             break;
            }
            v2.pb(n);
                    
                    
        if(v.size()>=v2.size()){
        cout<<v.size()<<endl;
            
        for(auto p:v)
        cout<<p<<" ";}
            
        else{
            cout<<v2.size()<<endl;
            for(auto p:v2)
            cout<<p<<" ";
            
        }
            
    }
            
        
    cout<<endl;
            
                
                
}
int main()
{
#ifndef ONLINE_JUDGE
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
#endif
    ios_base::sync_with_stdio(0); cin.tie(0);
    TEST
    solve();
}
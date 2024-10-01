class Solution {
public:
    bool canArrange(vector<int>& arr, int k) {
        vector<int> H(k,0);
        for(auto x:arr){
            H[((x % k) + k) % k]++;
        }
        for(int i=1,j=k-1;i<j;i++,j--){
            if(H[i]!=H[j])return false;
        }
        if(k%2==0 && H[k/2]%2==1)return false;
        return true;
    }
};
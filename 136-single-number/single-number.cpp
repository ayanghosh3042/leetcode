class Solution {
public:
    int singleNumber(vector<int>& arr) {
        int ans=0;
        for(auto x : arr){
            ans^=x;
        }
        return ans;
    }
};
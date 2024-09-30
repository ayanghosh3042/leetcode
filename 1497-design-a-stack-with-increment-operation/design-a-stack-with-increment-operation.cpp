class CustomStack {
public:
    int maxSize;
    int top;
    int *stk;
    CustomStack(int maxSize) {
        this->maxSize=maxSize;
        stk=new int[maxSize];
        top=-1;
    }
    bool isFull(){
        if(top>=maxSize-1)return true;
        return false;
    }
    bool isEmpty(){
        if(top<=-1)return true;
        return false;
    }
    void push(int x) {
        if(!isFull()){
            stk[++top]=x;
        }
        return;
    }
    
    int pop() {
        if(isEmpty())return -1;
        return stk[top--];
    }
    
    void increment(int k, int val) {
        for(int i=0;i<k && i<=top ;i++){
            stk[i]+=val;
        }
    }
};

/**
 * Your CustomStack object will be instantiated and called as such:
 * CustomStack* obj = new CustomStack(maxSize);
 * obj->push(x);
 * int param_2 = obj->pop();
 * obj->increment(k,val);
 */
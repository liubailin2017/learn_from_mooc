#include"header.h"
  struct TreeNode {
      int val;
      TreeNode *left;
      TreeNode *right;
      TreeNode(int x) : val(x), left(NULL), right(NULL) {}
 };

class Solution {
    
public:
    vector<int> inorderTraversal(TreeNode* root) {
        vector<int> v;
        stack<TreeNode*> s;
        s.push(root);
        root = root->left;

        while(!s.empty() && root != NULL) {
            if(root) {
                s.push(root);
                root = root -> left;
            }else {
                root = s.top();
                s.pop();
                v.push_back(root->val);
                root = root->right;
            }
        }
        return v;
    }
    
};

int main() {
    TreeNode *root = new TreeNode(1);
    root ->right = new TreeNode(2);
    root->right->left = new TreeNode(3);
    Solution s;
    vector<int> v = s.inorderTraversal(root);
    for(int i = 0; i< v.size(); i++) {
        cout << v[i] << endl;
    }

    return 0;
}
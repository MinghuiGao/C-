//
// Created by gaomh on 18-2-9.
//

#ifndef CPPALGORITHM_NODE_H
#define CPPALGORITHM_NODE_H


class Node {
public:
    int data;
    Node *next;

    Node* hasCircle(Node *node);

    int traversal(Node *node);

    Node *reverseList(Node *node);

};

class TreeNode {
public:
    int data;
    TreeNode *left, *right;


};


#endif //CPPALGORITHM_NODE_H

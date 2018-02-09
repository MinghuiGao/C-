//
// Created by gaomh on 18-2-9.
//

#include <tic.h>
#include "Node.h"
#include "set"

/// 使用追赶的方法,即: 使用一块一慢两个指针,分别每次移动2步和1步,如果在链表有环的话,一定会在某个节点相遇
// 假设相遇节点为m,使用两个指针分别只想m和h(头结点),然后每次向后移动一步,当再次相遇的节点,就是环的连接点
/// \param node 环的连接点c
/// \return
Node * Node::hasCircle(Node *node) {
    if (node == nullptr || node->next == nullptr) {
        return nullptr;
    }
    Node *fast = node, *slow = node;
    while (fast != nullptr && fast->next != nullptr) {
        slow = slow->next;// 向后移动一步
        fast = fast->next->next;// 向后移动两步,出现速度差.
        // 判断相遇 并返回连接点
        if (slow == fast) {
            Node *p = node;
            Node *q = slow;
            while (p != q) {
                p = p->next;
                q = q->next;
            }
            return q;
        }
    }
    return nullptr;
}

int Node::traversal(Node *node) {
    return 0;
}

Node *Node::reverseList(Node *node) {
    return nullptr;
}

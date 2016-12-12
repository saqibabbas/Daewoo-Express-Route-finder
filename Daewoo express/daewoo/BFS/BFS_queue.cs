using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BFS
{
    class BFS_queue
    {
        private  int SIZE = 20;
private int[] queArray;
private int front;
private int rear;
public BFS_queue(int SIZE) // constructor
{
queArray = new int[SIZE];
front = 0;
rear = -1;
}
public void insert(int j) // put item at rear of queue
{
if(rear == SIZE-1)
rear = -1;
queArray[++rear] = j;
}
public int remove() // take item from front of queue
{

int temp = queArray[front++];
if(front == SIZE)
front = 0;
return temp;
}
public bool isEmpty() // true if queue is empty
{
return ( rear+1==front || (front+SIZE-1==rear) );
}
    }
}

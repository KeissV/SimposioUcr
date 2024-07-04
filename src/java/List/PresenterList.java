/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package List;

/**
 *
 * @author Marcelle F
 */
public class PresenterList {
    private Node head;
    private int size;

    public PresenterList() {
        this.head = null;
        this.size = 0;
    }

    public void addPresenter(Presenter presenter) {
        Node newNode = new Node(presenter);
        if (head == null) {
            head = newNode;
        } else {
            Node current = head;
            while (current.getNext() != null) {
                current = current.getNext();
            }
            current.setNext(newNode);
        }
        size++;
    }

    public Node getHead() {
        return head;
    }

    public int getSize() {
        return size;
    }
}


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package List;

/**
 *
 * @author Marcelle F
 */
public class Node {
    private Presenter data;
    private Node next;

    public Node(Presenter data) {
        this.data = data;
        this.next = null;
    }

    public Presenter getData() {
        return data;
    }

    public void setData(Presenter data) {
        this.data = data;
    }

    public Node getNext() {
        return next;
    }

    public void setNext(Node next) {
        this.next = next;
    }
}

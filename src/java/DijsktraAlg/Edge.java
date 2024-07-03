/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DijsktraAlg;

/**
 *
 * @author wendy_6rrub
 */
public class Edge {
    private Node start;
    private Node fin;
    private int weight;

    public Edge(Node start, Node fin, int weight) {
        this.start = start;
        this.fin = fin;
        this.weight = weight;
    }

    public Node getStart() {
        return start;
    }

    public Node getFin() {
        return fin;
    }

    public int getWeight() {
        return weight;
    }
    
}

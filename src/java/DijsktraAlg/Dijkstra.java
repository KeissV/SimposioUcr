/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DijsktraAlg;
import java.util.*;
/**
 *
 * @author wendy_6rrub
 */
public class Dijkstra {

       
    public static List<Node> findShortestPath(List<Node> nodes, List<Edge> edges, Node start, Node end) {
        Map<Node, Integer> distances = new HashMap<>(); 
        Map<Node, Node> parents = new HashMap<>();
        Set<Node> visited = new HashSet<>(); 

        
        for (Node node : nodes) {
            distances.put(node, Integer.MAX_VALUE);
            parents.put(node, null);
        }
        distances.put(start, 0); 

        
        PriorityQueue<Node> priorityQueue = new PriorityQueue<>(Comparator.comparingInt(distances::get));
        priorityQueue.add(start);

        while (!priorityQueue.isEmpty()) {
            Node currentNode = priorityQueue.poll();
            if (visited.contains(currentNode)) {
                continue;
            }
            visited.add(currentNode);

            for (Edge edge : getOutgoingEdges(currentNode, edges)) {
                Node neighbor = edge.getFin();
                int weight = edge.getWeight();
                if (!visited.contains(neighbor)) {
                    int newDistance = distances.get(currentNode) + weight;
                    if (newDistance < distances.get(neighbor)) {
                        distances.put(neighbor, newDistance);
                        parents.put(neighbor, currentNode);
                        priorityQueue.add(neighbor);
                    }
                }
            }
        }

       
        List<Node> shortestPath = new ArrayList<>();
        Node node = end;
        while (node != null) {
            shortestPath.add(node);
            node = parents.get(node);
        }
        Collections.reverse(shortestPath);

        return shortestPath.size() > 1 ? shortestPath : null; 
    }

   
    private static List<Edge> getOutgoingEdges(Node node, List<Edge> edges) {
        List<Edge> outgoingEdges = new ArrayList<>();
        for (Edge edge : edges) {
            if (edge.getStart().equals(node)) {
                outgoingEdges.add(edge);
            }
        }
        return outgoingEdges;
    }
}



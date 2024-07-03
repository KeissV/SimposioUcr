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

        // Método para encontrar el camino más corto usando Dijkstra
    public static List<Node> findShortestPath(List<Node> nodes, List<Edge> edges, Node start, Node end) {
        Map<Node, Integer> distances = new HashMap<>(); // Distancias mínimas desde el nodo inicial
        Map<Node, Node> parents = new HashMap<>(); // Nodos predecesores en el camino más corto
        Set<Node> visited = new HashSet<>(); // Conjunto de nodos visitados

        // Inicialización de distancias y padres
        for (Node node : nodes) {
            distances.put(node, Integer.MAX_VALUE);
            parents.put(node, null);
        }
        distances.put(start, 0); // La distancia desde el nodo inicial hasta sí mismo es 0

        // Cola de prioridad para explorar nodos
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

        // Reconstruir el camino más corto desde el nodo de inicio hasta el nodo final
        List<Node> shortestPath = new ArrayList<>();
        Node node = end;
        while (node != null) {
            shortestPath.add(node);
            node = parents.get(node);
        }
        Collections.reverse(shortestPath);

        return shortestPath.size() > 1 ? shortestPath : null; // Retorna el camino más corto o null si no hay camino
    }

    // Método auxiliar para obtener las aristas salientes de un nodo
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



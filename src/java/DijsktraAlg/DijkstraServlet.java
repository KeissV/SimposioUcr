package DijsktraAlg;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/DijsktraAlg/DijkstraServlet")
public class DijkstraServlet extends HttpServlet {

    private List<Node> nodes;
    private List<Edge> edges;

    public void init() throws ServletException {
        nodes = initializeNodes();
        edges = initializeEdges();
    }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String startNodeId = request.getParameter("start");
        String endNodeId = request.getParameter("end");
            System.out.println(startNodeId + "  " + endNodeId);
        Node start = getNodeById(nodes, startNodeId);
        Node end = getNodeById(nodes, endNodeId);
            System.out.println(start + " " + end);
        List<Node> shortestPathNodes = Dijkstra.findShortestPath(nodes, edges, start, end);

                StringBuilder result = new StringBuilder();

        if (shortestPathNodes != null) {
            // Construir la lista de nodos recorridos
            result.append("<strong>Ruta más corta:</strong><br>");
            for (int i = 0; i < shortestPathNodes.size(); i++) {
                Node node = shortestPathNodes.get(i);
                result.append(node.getId());
                if (i < shortestPathNodes.size() - 1) {
                    result.append(" -> ");
                }
                System.out.println("wendy"+shortestPathNodes);
            }
            result.append("<br><br>");

            // Encontrar la dirección asociada a la ruta más corta
            String direction = findDirection(startNodeId, endNodeId);
            if (direction != null) {
                result.append("<strong>Dirección:</strong><br>").append(direction);
            } else {
                result.append("<strong>Dirección:</strong><br>Dirección no definida para esta ruta.");
            }
        } else {
            result.append("<strong>Ruta más corta:</strong><br>No se encontró un camino entre los nodos seleccionados.");
        }

        response.getWriter().write(result.toString());
            System.out.println(result.toString());
    }

    private String findDirection(String startNode, String endNode) {
        // Arreglo de direcciones predefinidas
        Map<String, String> directions = new HashMap<>();
        directions.put("1-17", "Ir del Edificio 4000 a la Biblioteca UCR.");
        directions.put("14-21", "Ir del Auditorio al Club Centro.");
        // Agregar más direcciones según sea necesario

        // Formar la clave para buscar la dirección
        String key = startNode + "-" + endNode;
        return directions.get(key);
    }
    private Node getNodeById(List<Node> nodes, String id) {
        for (Node node : nodes) {
            if (node.getId().equals(id)) {
                return node;
            }
        }
        return null;
    }

    private Edge getEdgeBetweenNodes(Node node1, Node node2) {
        for (Edge edge : edges) {
            if ((edge.getStart().equals(node1) && edge.getFin().equals(node2)) ||
                    (edge.getStart().equals(node2) && edge.getFin().equals(node1))) {
                return edge;
            }
        }
        return null;
    }

    private List<Node> initializeNodes() {
        return Arrays.asList(
                new Node("1"), new Node("2"), new Node("3"), new Node("4"), new Node("5"),
                new Node("6"), new Node("7"), new Node("8"), new Node("9"), new Node("10"),
                new Node("11"), new Node("12"), new Node("13"), new Node("14"), new Node("15"),
                new Node("16"), new Node("17"), new Node("18"), new Node("19"), new Node("20"),
                new Node("21"), new Node("22")
        );
    }

    private List<Edge> initializeEdges() {
        return Arrays.asList(
                new Edge(getNodeById(nodes, "1"), getNodeById(nodes, "2"), 12),
                new Edge(getNodeById(nodes, "2"), getNodeById(nodes, "1"), 12),
                new Edge(getNodeById(nodes, "2"), getNodeById(nodes, "3"), 15),
                new Edge(getNodeById(nodes, "3"), getNodeById(nodes, "2"), 15),
                new Edge(getNodeById(nodes, "3"), getNodeById(nodes, "4"), 7),
                new Edge(getNodeById(nodes, "4"), getNodeById(nodes, "3"), 7),
                new Edge(getNodeById(nodes, "4"), getNodeById(nodes, "5"), 8),
                new Edge(getNodeById(nodes, "5"), getNodeById(nodes, "4"), 8),
                new Edge(getNodeById(nodes, "5"), getNodeById(nodes, "17"), 10),
                new Edge(getNodeById(nodes, "17"), getNodeById(nodes, "5"), 10),
                new Edge(getNodeById(nodes, "2"), getNodeById(nodes, "15"), 35),
                new Edge(getNodeById(nodes, "15"), getNodeById(nodes, "2"), 35),
                new Edge(getNodeById(nodes, "3"), getNodeById(nodes, "8"), 2),
                new Edge(getNodeById(nodes, "8"), getNodeById(nodes, "3"), 2),
                new Edge(getNodeById(nodes, "8"), getNodeById(nodes, "7"), 6),
                new Edge(getNodeById(nodes, "7"), getNodeById(nodes, "8"), 6),
                new Edge(getNodeById(nodes, "7"), getNodeById(nodes, "9"), 7),
                new Edge(getNodeById(nodes, "9"), getNodeById(nodes, "7"), 7),
                new Edge(getNodeById(nodes, "9"), getNodeById(nodes, "10"), 10),
                new Edge(getNodeById(nodes, "10"), getNodeById(nodes, "9"), 10),
                new Edge(getNodeById(nodes, "10"), getNodeById(nodes, "11"), 7),
                new Edge(getNodeById(nodes, "11"), getNodeById(nodes, "10"), 7),
                new Edge(getNodeById(nodes, "11"), getNodeById(nodes, "13"), 8),
                new Edge(getNodeById(nodes, "13"), getNodeById(nodes, "11"), 8),
                new Edge(getNodeById(nodes, "12"), getNodeById(nodes, "13"), 6),
                new Edge(getNodeById(nodes, "13"), getNodeById(nodes, "12"), 6),
                new Edge(getNodeById(nodes, "13"), getNodeById(nodes, "14"), 7),
                new Edge(getNodeById(nodes, "14"), getNodeById(nodes, "13"), 7),
                new Edge(getNodeById(nodes, "9"), getNodeById(nodes, "5"), 7),
                new Edge(getNodeById(nodes, "5"), getNodeById(nodes, "9"), 7),
                new Edge(getNodeById(nodes, "17"), getNodeById(nodes, "16"), 5),
                new Edge(getNodeById(nodes, "16"), getNodeById(nodes, "17"), 5),
                new Edge(getNodeById(nodes, "16"), getNodeById(nodes, "15"), 11),
                new Edge(getNodeById(nodes, "15"), getNodeById(nodes, "16"), 11),
                new Edge(getNodeById(nodes, "15"), getNodeById(nodes, "18"), 4),
                new Edge(getNodeById(nodes, "18"), getNodeById(nodes, "15"), 4),
                new Edge(getNodeById(nodes, "18"), getNodeById(nodes, "19"), 13),
                new Edge(getNodeById(nodes, "19"), getNodeById(nodes, "18"), 13),
                new Edge(getNodeById(nodes, "22"), getNodeById(nodes, "21"), 15),
                new Edge(getNodeById(nodes, "21"), getNodeById(nodes, "22"), 15),
                new Edge(getNodeById(nodes, "5"), getNodeById(nodes, "16"), 12),
                new Edge(getNodeById(nodes, "16"), getNodeById(nodes, "5"), 12),
                new Edge(getNodeById(nodes, "1"), getNodeById(nodes, "22"), 9),
                new Edge(getNodeById(nodes, "22"), getNodeById(nodes, "1"), 9));

    }
}

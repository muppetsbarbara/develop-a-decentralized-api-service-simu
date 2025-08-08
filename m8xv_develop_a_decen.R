# Define a list to store nodes in the decentralized network
nodes <- list()

# Define a function to add a new node to the network
add_node <- function(node_id, node_url) {
  nodes[[node_id]] <- list(url = node_url, api_requests = 0)
}

# Define a function to simulate an API request to a node
simulate_api_request <- function(node_id) {
  if (exists(nodes[[node_id]])) {
    nodes[[node_id]]$api_requests <- nodes[[node_id]]$api_requests + 1
    return(paste("API request successful to node", node_id))
  } else {
    return(paste("Node", node_id, "not found"))
  }
}

# Define a function to get the API request count for a node
get_api_requests <- function(node_id) {
  if (exists(nodes[[node_id]])) {
    return(nodes[[node_id]]$api_requests)
  } else {
    return(0)
  }
}

# Add some nodes to the network
add_node("node1", "https://node1.com/api")
add_node("node2", "https://node2.com/api")
add_node("node3", "https://node3.com/api")

# Simulate some API requests
simulate_api_request("node1")
simulate_api_request("node2")
simulate_api_request("node3")
simulate_api_request("node1")
simulate_api_request("node2")

# Print the API request counts for each node
print(paste("Node 1 API requests:", get_api_requests("node1")))
print(paste("Node 2 API requests:", get_api_requests("node2")))
print(paste("Node 3 API requests:", get_api_requests("node3")))
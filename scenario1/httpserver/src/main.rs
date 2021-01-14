mod handler;
mod router;
mod server;
use server::Server;

fn main() {
    // Start a Server.
    let server = Server::new("localhost:3000");
    // Run the server.
    server.run();
}

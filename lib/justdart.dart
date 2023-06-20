import 'dart:io';

void main() {
  WebSocket.connect(//aqui va la direccion del server 
  ).then((WebSocket socket) {
    print('Conexión establecida.');

    socket.listen(
      (data) {
        print('Datos recibidos: $data');
        // con el data se pueden usar los datos p lo q quieras 
      },
      onError: (error) {
        print('Error: $error');
      },
      onDone: () {
        print('Conexión cerrada.');
      },
    );

    socket.add('Mensaje de prueba');
  }).catchError((error) {
    print('Error al establecer la conexión: $error');
  });
}

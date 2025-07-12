from flask import Flask, render_template, redirect, url_for, session, flash, request
from conexion import get_connection
from datetime import datetime

app = Flask(__name__)
app.secret_key = "clave-secreta"


@app.route('/')
def dashboard():
    return render_template('index.html')

#página pedidos
@app.route('/pedidos')
def pedidos():
    
    connection = get_connection()
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM SERVICIOTRANSPORTE")
    pedidos = cursor.fetchall()
        # Consulta para obtener todas las empresas
    cursor.execute("""
        SELECT EC.IDEMPRESACLIENTE, EC.NOMBREEMPRESA
        FROM EMPRESACLIENTE EC
    """)
    empresas = cursor.fetchall()  # Lista de empresas

    # Consulta para obtener los vehículos que no están registrados
    cursor.execute("""
        SELECT V.IDVEHICULO, V.PlacaTracto, V.PlacaCarreta
        FROM VEHICULO V
        WHERE V.IDVEHICULO NOT IN (
            SELECT ST.IDVEHICULO
            FROM SERVICIOTRANSPORTE ST
        )
    """)
    vehiculos = cursor.fetchall()  # [(1, 'ABC123', 'DEF456'), ...]

    print("Vehículos disponibles para asignar:", vehiculos)
    # Consulta para obtener los conductores que no están registrados
    cursor.execute("""
        SELECT C.NOMBREEMPLEADO
        FROM CONDUCTOR C
        WHERE C.IDCONDUCTOR NOT IN (
            SELECT SC.IDCONDUCTOR
            FROM SERVICIO_CONDUCTOR_ SC
        )
    """)
    conductores = cursor.fetchall()  # Lista de conductores
    # Imprimir el resultado de la consulta en la consola del servidor
    print("Pedidos obtenidos: ", pedidos)  # Aquí se verá si la lista está vacía o no
    connection.commit()
    cursor.close()
    connection.close()
    return render_template('pedidos.html', pedido=pedidos, empresas=empresas, vehiculos=vehiculos, conductores=conductores)


@app.route('/registrar_servicio', methods=['POST'])
def registrar_servicio():
    id_vehiculo = int(request.form['id_vehiculo'])
    id_empresa = int(request.form['id_empresa'])

    peso = request.form['peso']
    origen = request.form['origen']
    destino = request.form['destino']

    fecha_inicio = datetime.strptime(request.form['fecha_inicio'], '%Y-%m-%d')
    fecha_entrega = datetime.strptime(request.form['fecha_entrega'], '%Y-%m-%d')

    conn = get_connection()
    cursor = conn.cursor()

    # Realizar el INSERT o llamada al procedimiento almacenado
    cursor.callproc("INSERTARSERVICIOTRANSPORTE", [
        id_vehiculo,
        id_empresa,
        fecha_inicio,
        fecha_entrega,
        peso,
        origen,
        destino
    ])
    conn.commit()

        # Cerrar la conexión
    cursor.close()
    conn.close()

        # Redirigir a la lista de pedidos
    return redirect(url_for('pedidos'))































#página vehículos
@app.route('/vehiculos')
def vehiculos():
    return render_template('vehiculos.html')

#página clientes
@app.route('/clientes')
def clientes():
    return render_template('clientes.html')


#página perfil del empleado
@app.route("/perfil")
def perfil():
    return render_template("perfil.html") 

if __name__ == '__main__':
    app.run(debug=True)
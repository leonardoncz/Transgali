from flask import Flask, render_template, redirect, url_for, session, flash, request
from conexion import get_connection

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
    cursor.execute("SELECT * FROM BOLETASERVICIO")
    pedidos = cursor.fetchall()
    cursor.close()
    connection.close()
    return render_template('pedidos.html', pedido=pedidos)

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
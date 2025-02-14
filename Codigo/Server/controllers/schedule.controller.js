const { getConnection } = require('../connection.js');
const sql = require('mssql');

const getSchedules = async (req, res) => {
    try {
        const pool = await getConnection();
        const result = await pool.request().execute('InloTEC_SP_Schedule_List');
        res.json(result.recordset);
    } catch (error) {
        const errorMessage = error.message || 'Error desconocido';
        console.error('Error al ejecutar el query:', errorMessage);
        res.status(500).send(errorMessage);
    }
}

const getSchedule = async (req, res) => {
    res.send("obteniendo un horario");
}

const addSchedule = async (req, res) => {
    try {
        const pool = await getConnection();
        console.log(req.body);

        // Convierte el array de días a un string separado por comas
        const diasString = req.body['dias'].join(',');
        console.log(diasString);

        // Convierte las horas a un formato correcto de SQL Time (HH:mm:ss)
        const formattedHoraInicio = new Date(`1970-01-01T${req.body['horaInicio']}`).toTimeString().split(' ')[0];
        const formattedHoraFin = new Date(`1970-01-01T${req.body['horaFin']}`).toTimeString().split(' ')[0];

        console.log(formattedHoraInicio);
        console.log(formattedHoraFin);

        let result = await pool.request()
            .input('IN_name', sql.NVarChar(128), req.body['nombreHorario'])
            .input('IN_IdDays', sql.NVarChar(128), diasString) // Utiliza el string convertido
            .input('IN_startTime', sql.Time, formattedHoraInicio) // Pasa la hora con el formato correcto
            .input('IN_endTime', sql.Time, formattedHoraFin) // Pasa la hora con el formato correcto
            .execute('InloTEC_SP_Schedule_Add'); // Nombre del procedimiento almacenado

        console.log(result); // Muestra el resultado
        res.status(200).send('Horario creado');
    } catch (error) {
        const errorMessage = error.message || 'Error desconocido';
        console.error('Error al ejecutar el query:', errorMessage);
        res.status(500).send(errorMessage);
    }
};

const editSchedule = async (req, res) => {
    /*
    try {
        const pool = await getConnection();
        console.log(req.body)

        let result = await pool.request()
            .input('IN_oldName', sql.NVarChar(64), req.body['nombreviejo'])
            .input('IN_newName', sql.NVarChar(64), req.body['nombrenuevo'])
            .execute('InloTEC_SP_Schedules_Edit');

        console.log(result);
        res.status(200).send('Grupo modificado')
    } catch (error) {
        const errorMessage = error.message || 'Error desconocido';
        console.error('Error al ejecutar el query:', errorMessage);
        res.status(500).send(errorMessage);
    }*/
}

const deleteSchedule = async (req, res) => {
    try {
        const pool = await getConnection();
        console.log(req.body)

        // Convierte el array de días a un string separado por comas
        const diasString = req.body['dias'].join(',');
        // Convierte las horas a un formato correcto de SQL Time (HH:mm:ss)
        const formattedHoraInicio = new Date(`1970-01-01T${req.body['horaInicio']}`).toTimeString().split(' ')[0];
        const formattedHoraFin = new Date(`1970-01-01T${req.body['horaFin']}`).toTimeString().split(' ')[0];


        let result = await pool.request()
            .input('IN_IdSchedule', sql.BigInt, req.body['idHorario'])
            .input('IN_name', sql.NVarChar(64), req.body['nombre'])
            .input('IN_IdDays', sql.NVarChar(128), diasString)
            .input('IN_startTime', sql.Time, formattedHoraInicio) // Pasa la hora con el formato correcto
            .input('IN_endTime', sql.Time, formattedHoraFin) // Pasa la hora con el formato correcto
            .execute('InloTEC_SP_Schedules_Delete');

        console.log(result);
        res.status(200).send('Grupo eliminado')
    } catch (error) {
        const errorMessage = error.message || 'Error desconocido';
        console.error('Error al ejecutar el query:', errorMessage);
        res.status(500).send(errorMessage);
    }
}

module.exports = { getSchedules, getSchedule, addSchedule, editSchedule, deleteSchedule };
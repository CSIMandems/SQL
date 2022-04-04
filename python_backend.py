import psycopg2
import json


def create_user(connection, username, password):
    query = f"""INSERT INTO users (username, password)
                VALUES ('{username}', '{password}')
                RETURNING user_id"""
    
    cursor = connection.cursor()
    cursor.execute(query)
    user_id = cursor.fetchone()[0]

    connection.commit()
    cursor.close()
    return user_id


def insert_patient(connection, first_name, middle_name, last_name, date_of_birth, gender,
		   social_security_number, insurance_number,
  		   civic_number, street_name, city, province, postal_code,
 		   phone_number, email_address, user_id):
    query = f"""INSERT INTO patient (first_name, middle_name, last_name, date_of_birth, gender,
		                     social_security_number, insurance_number,
                                     civic_number, street_name, city, province, postal_code,
                                     phone_number, email_address, user_id)
                VALUES ('{first_name}', '{middle_name}', '{last_name}', '{date_of_birth}', '{gender}',
		        '{social_security_number}', '{insurance_number}',
  		        '{civic_number}', '{street_name}', '{city}', '{province}', '{postal_code}',
 		        '{phone_number}', '{email_address}', {user_id})
 		RETURNING patient_id"""

    cursor = connection.cursor()
    cursor.execute(query)
    patient_id = cursor.fetchone()[0]

    connection.commit()
    cursor.close()
    return patient_id


def insert_appointment(connection, date, start_time, end_time, appointment_type, room_number,
                       patient_id, employee_id):
    query = f"""INSERT INTO appointment (date, start_time, end_time, appointment_type, room_number,
                patient_id, employee_id)
                VALUES ('{date}', '{start_time}', '{end_time}', '{appointment_type}', '{room_number}',
                        {patient_id}, {employee_id})
                RETURNING appointment_id"""

    cursor = connection.cursor()
    cursor.execute(query)
    appointment_id = cursor.fetchone()[0]

    connection.commit()
    cursor.close()
    return appointment_id


def get_appointments_for_username(connection, username):
    user_id_query = f"""SELECT user_id FROM users
                WHERE LOWER(username) = '{username.lower()}'"""

    cursor = connection.cursor()
    cursor.execute(user_id_query)
    user_id =  cursor.fetchone()[0]
    
    patient_id_query = f"""SELECT patient_id FROM patient
                           WHERE user_id = {user_id}"""
    cursor.execute(patient_id_query)
    patient_id = cursor.fetchone()[0]

    appointment_query = f"""SELECT * FROM appointment
                            WHERE patient_id = {patient_id}
                                  and date > NOW()"""
    cursor.execute(appointment_query)
    appointments = cursor.fetchall()

    results = {}
    for appointment in appointments:
        appointment_id = appointment[0]
        results[appointment_id] = {'date' : str(appointment[1]),
                                    'start_time' : str(appointment[2]),
                                    'end_time' : str(appointment[3]),
                                    'appointment_type' : appointment[4],
                                    'room' : appointment[5],
                                    'status' : appointment[6],
                                    'patient_id' : appointment[7],
                                    'employee_id' : appointment[8]}
    
    cursor.close()
    return results


connection = psycopg2.connect('postgres://wrpmitrkktsrvh:73e6a64c48bfeb0931a80920d8f424fb0f607715b233ed6a76cfc478d1e2712f@ec2-54-157-79-121.compute-1.amazonaws.com:5432/de24jalccuvbd1')

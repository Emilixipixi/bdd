alter table transacciones
add constraint transacciones_cuentas_fk 
foreign key (numero_cuenta) 
references cuentas(numero_cuenta);

select c.numero_cuenta, 
       cl.nombre, 
       cl.apellido,
       t.codigo as num_transaccion,
       t.monto,
       case 
         when t.tipo = 'C' then 'Crédito (Depósito)'
         when t.tipo = 'D' then 'Débito (Retiro)'
       end as tipo_transaccion,
       t.fecha,
       t.hora,
       c.saldo as saldo_cuenta
from transacciones t
inner join cuentas c on t.numero_cuenta = c.numero_cuenta
inner join clientes cl on c.cedula_propietario = cl.cedula
order by c.numero_cuenta, t.fecha, t.hora;

select c.numero_cuenta, 
       cl.nombre || ' ' || cl.apellido as propietario,
       count(t.codigo) as total_transacciones,
       c.saldo as saldo_actual
from cuentas c
inner join clientes cl on c.cedula_propietario = cl.cedula
left join transacciones t on c.numero_cuenta = t.numero_cuenta
group by c.numero_cuenta, cl.nombre, cl.apellido, c.saldo
order by c.numero_cuenta;
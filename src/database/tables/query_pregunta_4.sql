-- query usado para sacar todos los usuarios que tienen mas de 5 oro y equipado el casco rojo de power ranger
SELECT account.NombreUsuario
FROM CUENTA account
JOIN CUENTA_TIENE_EQUIPO equipedToAccount ON account.NombreUsuario = equipedToAccount.NombreUsuario
JOIN EQUIPO E ON equipedToAccount.NombreEquipo = E.NombreEquipo
JOIN CUENTA_TIENE_EQUIPADO_CASCO equipedHelmet ON account.NombreUsuario = equipedHelmet.NombreUsuario
WHERE E.NombreEquipo = 'oro' AND equipedToAccount.Cantidad > 5
AND equipedHelmet.NombreEquipo = 'casco rojo de power ranger';
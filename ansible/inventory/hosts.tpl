[ssh_signer]
localhost ansible_connection=local password_id=local-user-password

[master]
%{ for item in hosts_list ~}
%{ if item.state == "MASTER" ~}
${item.hostname} password_id=${item.password_id} hostname=${item.hostname} state=${item.state} priority=${item.priority} unicast_src_ip=${item.unicast_src_ip} unicast_peer_ip=${item.unicast_peer_ip}
%{ endif ~}
%{ endfor ~}

[backup]
%{ for item in hosts_list ~}
%{ if item.state == "BACKUP" ~}
${item.hostname} password_id=${item.password_id} hostname=${item.hostname} state=${item.state} priority=${item.priority} unicast_src_ip=${item.unicast_src_ip} unicast_peer_ip=${item.unicast_peer_ip}
%{ endif ~}
%{ endfor ~}

[target:children]
master
backup

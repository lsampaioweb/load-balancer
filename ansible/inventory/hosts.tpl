[master]
%{ for item in master_list ~}
${item.hostname} ansible_host=${item.public_ip} password_id=${item.password_id} hostname=${item.hostname} state=${item.state} priority=${item.priority} unicast_src_ip=${item.unicast_src_ip} unicast_peer_ip=${item.unicast_peer_ip}
%{ endfor ~}

[backup]
%{ for item in backup_list ~}
${item.hostname} ansible_host=${item.public_ip} password_id=${item.password_id} hostname=${item.hostname} state=${item.state} priority=${item.priority} unicast_src_ip=${item.unicast_src_ip} unicast_peer_ip=${item.unicast_peer_ip}
%{ endfor ~}

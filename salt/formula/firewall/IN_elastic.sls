iptables_in_tcp_elastic:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - proto: tcp
    - dport: 9200:9300
    - save: True
    - require:
      - pkg: iptables
 
iptables_in_udp_elastic:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - proto: udp
    - dport: 9200:9300
    - save: True
    - require:
      - pkg: iptables
 
iptables_in_elastic_zen:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - proto: udp
    - dport: 54328
    - save: True
    - require:
      - pkg: iptables
 

iptables_in_kibana:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - proto: tcp
    - dport: 5601
    - save: True
    - require:
      - pkg: iptables


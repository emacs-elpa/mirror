Cabledolphin captures network traffic to and from Emacs Lisp
processes, and writes it into a PCAP file, which can be read by
tools such as tcpdump and Wireshark.

Since Cabledolphin extracts the data on the Emacs Lisp level, it
writes the packet capture in cleartext even if the connection is
TLS-encrypted.

While it doesn't get hold of actual packet headers, it synthesises
TCP/IP headers to the minimum extent required to keep Wireshark
happy.

Available commands:

- `cabledolphin-trace-new-connections': start capturing packets for
  any new connections whose name matches a certain regexp.

- `cabledolphin-trace-existing-connection': start capturing packets
  for an existing connection.

- `cabledolphin-set-pcap-file': change the file that data is
  written to.

- `cabledolphin-stop': stop capturing, and stop matching new
  connections.

NB: since Cabledolphin works by advising the filter function of the
connection, it won't work very well for connections that change the
filter function, such as `url-http'.

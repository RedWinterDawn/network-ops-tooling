#!/usr/bin/perl

sub sendToXymon {
    use IO::Socket;
    my($server,$port,$msg) = @_ ;
    my $response;
    my $sock = new IO::Socket::INET (
            PeerAddr => $server,
            PeerPort => $port,
            Proto => 'tcp',
        );
    die "Could not create socket: $!\n" unless $sock;
    print $sock $msg;
    shutdown($sock, 1);
    while ($response=<$sock>)
    {
        print "$response";
    }
    close($sock);
}

$host = $ARGV[0];
if ($#ARGV != 2) {
  $port = 1984;
  $msg = $ARGV[1];
}
else {
  $port = $ARGV[1];
  $msg = $ARGV[2];
}

sendToXymon($host, $port, $msg);

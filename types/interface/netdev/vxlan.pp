# netdev VXLAN section
# see https://www.freedesktop.org/software/systemd/man/latest/systemd.netdev.html
type Systemd::Interface::Netdev::Vxlan = Struct[{
    'VNI'                      => Optional[Integer[1, 16777215]],
    'Remote'                   => Optional[String[1]],
    'Local'                    => Optional[Variant[Enum['ipv4_link_local', 'ipv6_link_local', 'dhcp4', 'dhcp6', 'slaac'], String[1]]],
    'Group'                    => Optional[String[1]],
    'TOS'                      => Optional[String[1]],
    'TTL'                      => Optional[Variant[Enum['inherit'], Integer[0,255]]],
    'MacLearning'              => Optional[Enum['yes','no']],
    'FDBAgeingSec'             => Optional[String[1]],
    'MaximumFDBEntries'        => Optional[Integer[1]],
    'ReduceARPProxy'           => Optional[Enum['yes','no']],
    'L2MissNotification'       => Optional[Enum['yes','no']],
    'L3MissNotification'       => Optional[Enum['yes','no']],
    'RouteShortCircuit'        => Optional[Enum['yes','no']],
    'UDPChecksum'              => Optional[Enum['yes','no']],
    'UDP6ZeroChecksumTx'       => Optional[Enum['yes','no']],
    'UDP6ZeroChecksumRx'       => Optional[Enum['yes','no']],
    'RemoteChecksumTx'         => Optional[Enum['yes','no']],
    'RemoteChecksumRx'         => Optional[Enum['yes','no']],
    'GroupPolicyExtension'     => Optional[Enum['yes','no']],
    'GenericProtocolExtension' => Optional[Enum['yes','no']],
    'DestinationPort'          => Optional[Integer[1]],
    'PortRange'                => Optional[String[1]],
    'FlowLabel'                => Optional[Integer[0,1048575]],
    'IPDoNotFragment'          => Optional[Enum['yes','no']],
    'Independent'              => Optional[Enum['yes','no']],
}]

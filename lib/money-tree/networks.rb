module MoneyTree
  NETWORKS =
    begin
      hsh = Hash.new do |_, key|
        raise "#{key} is not a valid network!"
      end.merge(
        bitcoin: {
          address_version: '00',
          p2sh_version: '05',
          p2sh_char: '3',
          privkey_version: '80',
          privkey_compression_flag: '01',
          extended_privkey_version: "0488ade4",
          extended_pubkey_version: "0488b21e",
          compressed_wif_chars: %w(K L),
          uncompressed_wif_chars: %w(5),
          protocol_version: 70001
        },
        bitcoin_testnet: {
          address_version: '6f',
          p2sh_version: 'c4',
          p2sh_char: '2',
          privkey_version: 'ef',
          privkey_compression_flag: '01',
          extended_privkey_version: "04358394",
          extended_pubkey_version: "043587cf",
          compressed_wif_chars: %w(c),
          uncompressed_wif_chars: %w(9),
          protocol_version: 70001
        },
        zcoin: {
          address_version: '52',
          p2sh_version: '0x7',
          p2sh_char: 'a',
          privkey_version: '80',
          privkey_compression_flag: '01',
          extended_privkey_version: "0488ade4",
          extended_pubkey_version: "0488b21e",
          compressed_wif_chars: %w(K L),
          uncompressed_wif_chars: %w(5),
          protocol_version: 70001
        },
        litecoin: {
          address_version: '30',
          p2sh_version: '32',
          p2sh_char: 'L',
          privkey_version: '80',
          privkey_compression_flag: '01',
          extended_privkey_version: "0488ade4",
          extended_pubkey_version: "0488b21e",
          compressed_wif_chars: %w(K L),
          uncompressed_wif_chars: %w(5),
          protocol_version: 70001
        },
        bitcoin_cash: {
          address_version: '00',
          p2sh_version: '05',
          p2sh_char: '3',
          privkey_version: '80',
          privkey_compression_flag: '01',
          extended_privkey_version: "0488ade4",
          extended_pubkey_version: "0488b21e",
          compressed_wif_chars: %w(K L),
          uncompressed_wif_chars: %w(5),
          protocol_version: 70001
        }
      )
      hsh[:testnet3] = hsh[:bitcoin_testnet]
      hsh
    end
end

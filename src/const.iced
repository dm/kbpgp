
exports.openpgp = openpgp =
  public_key_algorithms :
    RSA : 1
    RSA_ENCRYPT_ONLY : 2
    RSA_SIGN_ONLY : 3
    ELGAMAL : 16
    DSA : 17
  symmetric_key_algorithms :
    CAST5 : 3
    AES128 : 7
    AES192 : 8
    AES256 : 9
  hash_algorithms :
    SHA1   : 2
    SHA256 : 8
    SHA384 : 9
    SHA512 : 10
    SHA224 : 11
  sig_subpacket:
    creation_time : 2
    issuer : 16
  message_types :
    public_key : 4
    private_key : 5
  s2k :
    plain : 0
    salt : 1
    salt_iter : 3
    gnu : 101
  s2k_convention :
    none : 0
    checksum : 255
    sha1 : 254
  packet_tags :
    signature : 2
    secret_key : 5
    public_key : 6
    userid : 13
  versions :
    keymaterial : V4 : 4
    signature : V4 : 4
  signatures :
    key : 0x99
    userid : 0xb4

exports.kb =
  key_encryption:
    none : 0
    triplesec_v1 : 1
  packet_tags : openpgp.packet_tags
  message_types : openpgp.message_types
  public_key_algorithms : openpgp.public_key_algorithms
  versions :
    V1 : 1
  signatures :
    self_sign_key : 1
  padding :
    EMSA_PCKS1_v1_5 : 3
    RSASSA_PSS : 4

exports.header =
  version : "Keybase OpenPGP JS 0.0.1"
  comment : "https://keybase.io"

# * Project id where the keyring will be created.
project_id="empc-dev-1-8nyy"

# * Location for the keyring
location="europe-west1"

# * Name of the Keyring to be created
keyring= "test-keyring"

# * Names of the keys to be created
keys=["test-key1"]

# * Set the prevent_destroy lifecycle attribute on keys, default is true
#prevent_destroy=true

# The immutable purpose of the CryptoKey. Possible values are ENCRYPT_DECRYPT, ASYMMETRIC_SIGN, and ASYMMETRIC_DECRYPT
purpose="ENCRYPT_DECRYPT"

# Name of keys for which owners will be set
set_owners_for=["test-key1"]

# List of comma-separated owners for each key declared in set_owners_for
owners=["serviceAccount:tfsa-2@empc-dev-1-8nyy.iam.gserviceaccount.com"]

# Name of keys for which encrypters will be set
set_encrypters_for=["test-key1","test-key1"]

# List of comma-separated owners for each key declared in set_encrypters_for
encrypters=["serviceAccount:tfsa-1@empc-dev-1-8nyy.iam.gserviceaccount.com","serviceAccount:service-831415980942@gs-project-accounts.iam.gserviceaccount.com"]

# Name of keys for which decrypters will be set
set_decrypters_for=["test-key1","test-key1"]

# List of comma-separated owners for each key declared in set_decrypters_for
decrypters=["serviceAccount:tfsa-1@empc-dev-1-8nyy.iam.gserviceaccount.com","serviceAccount:service-831415980942@gs-project-accounts.iam.gserviceaccount.com"]

# Name of keys for which viewers will be set
set_viewers_for=[]

# List of comma-separated viewers for each key declared in set_viewers_for
viewers=[]

# The time in seconds after which key will be rotated
key_rotation_period="100000s"

# The algorithm to use when creating a version based on this template. See the https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm for possible inputs
key_algorithm="GOOGLE_SYMMETRIC_ENCRYPTION"

# The protection level to use when creating a version based on this template. Default value: \"SOFTWARE\" Possible values: [\"SOFTWARE\", \"HSM\"]
key_protection_level="SOFTWARE"

# Labels, provided as a map
labels={}

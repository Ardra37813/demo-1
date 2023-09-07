# * The name of the bucket
bucket_name_suffix="my-unique-bucket-123"

# * The ID of the project to create the bucket in
project_id="empc-dev-1-8nyy"

# * The location of the bucket
location="europe-west1"

# The Storage Class of the new bucket
storage_class="STANDARD"

# A set of key/value label pairs to assign to the bucket
labels={}

# Enables uniform bucket level access
uniform_bucket_level_access=true

# While set to true, versioning is fully enabled for this bucket
versioning=true

# When deleting a bucket, this boolean option will delete all contained objects. If false, Terraform will fail to delete buckets which contain objects
force_destroy=true

# The list of IAM members to grant permissions on the bucket
iam_members=[]

# Configuration of the bucket's data retention policy for how long objects in the bucket should be retained
retention_policy=null

# Configuration of CORS for bucket with structure as defined in https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket#cors
cors=[]

# * A Cloud KMS key that will be used to encrypt objects inserted into this bucket
## Example ussage: encryption={default_kms_key_name = "projects/empc-dev-1-8nyy/locations/europe-west1/keyRings/test-keyring/cryptoKeys/test-key1"}
encryption=null

# The bucket's Lifecycle Rules configuration
lifecycle_rules=[]

# The bucket that will receive log objects
log_bucket=null

# The object prefix for log objects. If it's not provided, by default GCS sets this to this bucket's nam
log_object_prefix=null

# Map of website values. Supported attributes: main_page_suffix, not_found_page
website= {}
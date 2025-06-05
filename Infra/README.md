# UC8-lambda-s3event
<!-- BEGIN_TF_DOCS -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email"></a> [email](#input\_email) | n/a | `string` | `"anilkumar.padarthi@hcltech.com"` | no |
| <a name="input_enable_versioning"></a> [enable\_versioning](#input\_enable\_versioning) | Enable versioning on the S3 buckets | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment for the resources (e.g., dev, prod) | `string` | `"dev"` | no |
| <a name="input_lambda_function_name"></a> [lambda\_function\_name](#input\_lambda\_function\_name) | n/a | `string` | `"lambda-image-resize"` | no |
| <a name="input_lambda_role"></a> [lambda\_role](#input\_lambda\_role) | n/a | `string` | `"lambda_role_s3_image"` | no |
| <a name="input_processed_bucket_name"></a> [processed\_bucket\_name](#input\_processed\_bucket\_name) | n/a | `string` | `"dest-bucket-image-processed"` | no |
| <a name="input_resize_width"></a> [resize\_width](#input\_resize\_width) | n/a | `number` | `600` | no |
| <a name="input_sns_topic_name"></a> [sns\_topic\_name](#input\_sns\_topic\_name) | n/a | `string` | `"image-topic"` | no |
| <a name="input_source_bucket_name"></a> [source\_bucket\_name](#input\_source\_bucket\_name) | n/a | `string` | `"source-bucket-image-original"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | <pre>{<br/>  "ManagedBy": "Terraform",<br/>  "Owner": "prodTeam",<br/>  "Project": "ImageProcessor"<br/>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lambda_function_name"></a> [lambda\_function\_name](#output\_lambda\_function\_name) | n/a |
<!-- END_TF_DOCS -->
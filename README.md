# dynamodb-local-cookbook

This cookbook installs the local version of [DynamoDB](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html)

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['dynamodb-local']['name']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>dynamodb-local</tt></td>
  </tr>
  <tr>
    <td><tt>['dynamodb-local']['user']</tt></td>
    <td>String</td>
    <td>System user name</td>
    <td><tt>dynamodb</tt></td>
  </tr>
  <tr>
    <td><tt>['dynamodb-local']['directory']</tt></td>
    <td>String</td>
    <td>Directory to install into</td>
    <td><tt>/usr/local/lib/dynamodb-local</tt></td>
  </tr>
  <tr>
    <td><tt>['dynamodb-local']['log_dir']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>/var/log/dynamodb-local</tt></td>
  </tr>
  <tr>
    <td><tt>['dynamodb-local']['download_url']</tt></td>
    <td>String</td>
    <td>http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest</td>
    <td><tt>dynamodb-local</tt></td>
  </tr>
  <tr>
    <td><tt>['dynamodb-local']['port']</tt></td>
    <td>Integer</td>
    <td>Port to run on</td>
    <td><tt>8000</tt></td>
  </tr>
</table>

## Usage

### dynamodb-local::default

Include `dynamodb-local` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[dynamodb-local::default]"
  ]
}
```

### dynamodb-local::upstart

Include `dynamodb-local` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[dynamodb-local::upstart]"
  ]
}
```

## License and Authors

Author:: Timehop (<tech@timehop.com>)

MIT License - see `LICENSE`

Init.d script provided by [AreisCloud](https://github.com/AerisCloud/ansible-dynamodb/blob/master/templates/dynamodb.init.sh) under the MIT license
# webserver-config-cookbook

Basic application/wrapper cookbook to configure Nginx

## Supported Platforms

Ubuntu 12.02,14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['webserver-config']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### webserver-config::default

Include `webserver-config` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[webserver-config::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Eric Vierhaus (<ejvaudio@gmail.com>)

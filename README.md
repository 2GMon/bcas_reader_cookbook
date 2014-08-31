bcas_reader Cookbook
====================
This cookbook set up B-CAS reader with SCR3310-NTTCom

Requirements
------------

#### platforms
- `Debian` - This cookbook is tested with only debian-7.6.

#### packages

Usage
-----
#### bcas_reader::default
Just include `bcas_reader` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[bcas_reader]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Takaaki TSUJIMOTO

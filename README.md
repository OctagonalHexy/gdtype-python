# Godot binary serialization API to Python

Serialize and deserialize Godot types between GDScript and Python using binary format compatible with Godot's Binary serialization API.

Code compatible with *Godot Engine 4.0 beta* and with *Godot Engine 3.5 stable*.


## Modules

There are two main modules `gdtype.binaryapiv4` and `gdtype.binaryapiv3`. First one is dedicated for handling data compatible with Godot 4. 
Second one is dedicated for Godot 4.

Both modules profide following functions:
- `def deserialize( message: bytes )` deserializing data provided by Godot to Python counterpart
- `def serialize( value ) -> bytes` serializing Python data representation to Godot binary format

For more details see those modules.


## Use case

Library is useful is case of communicating with GDScript using Python, for example when game expose API through network interface.

Sending variant over network using `GDScript`:
```gdscript
var stream: StreamPeer
var data
# ...
stream.put_var( data )
```


Deserialization in `Python` can be done as follows:
```python
rawData: bytes = None
# ...
gdObject = gdtype.deserialize( rawData )
```


## Running tests

Checking library functionality can be done by executing one of following scripts:
- `./src/testgdtype/runtests.py` for executing unit tests
- `./test/run_tests_v3.sh` for executing integration tests using Godot v3
- `./test/run_tests_v4.sh` for executing integration tests using Godot v4
- `./test/samples.sh` for generating samples using Godot

All tests can be run using `./test/run_all_tests.sh`.


## References

- [Godot Binary serialization API (latest)](https://docs.godotengine.org/en/latest/tutorials/io/binary_serialization_api.html)
- [Godot Binary serialization API (stable)](https://docs.godotengine.org/en/stable/tutorials/io/binary_serialization_api.html)

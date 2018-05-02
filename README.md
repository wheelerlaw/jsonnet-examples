# jsonnet-examples
Exploring Jsonnet as a way to parameterize OpenShift configurations

### Using

Make sure you have `jsonnet` installed somewhere on your path. 

## Example 1

The first example is a very simple attempt to abstract away some of the boilerplate needed in an OpenShift JSON configuration file. 

To run the first example:

```
jsonnet sample1.jsonnet
```

## Example 2

The second example shows briefly how one can place multiple OpenShift API objects inside a single Jsonnet file,
and have Jsonnet split it into multiple JSON files (since, as per its spec, JSON can only have a single top level object in a file).

To run the second example:

```
jsonnet -m . sample2.jsonnet
```

## Example 3

The third and final example shows how one can use YAML Streams to achieve the same goal as the second example. 

To run the third example:

```
jsonnet -y sample3.jsonnet
```

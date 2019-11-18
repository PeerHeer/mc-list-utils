# Dynamic NBT Lists
An abstraction for operations on NBT lists.

### Compatibility information
- Namespace: `nbtlist`
- Scorespace: `nbtlist`
- Incompatible with: `none`

### Planned features
- Comparison using length
- Partial data lookups (e.g.`List[{ID: 0}}` returns `Data: {ID: 0, Tag: "something"}`)
- Shuffle
- Automatically choose the right comparison function (type detection)
- Support for custom iteration functions
- Support for nested iterations
- Error codes and error messages

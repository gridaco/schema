# schema

schema engine &amp; mock data provider

## Editor

## Usage

```bash
yarn add @grida/schema
```

```ts
import { Schema } from "@grida/schema";

const schema = new Schema({
  type: "object",
  properties: {
    name: {
      type: "string",
    },
    age: {
      type: "number",
    },
  },
});

schema.mock(); // { name: 'string', age: 0 }

schema.validate({ name: "string", age: 0 }); // true
```

```tsx
// React Renderer
import { Schema } from "@grida/schema";
import SchemaView, { SchemaChangeEvent } from "@grida/schema-react";

const schema = new Schema({
  type: "object",
  properties: {
    name: {
      type: "string",
    },
    age: {
      type: "number",
      required: true,
      label: "Age",
      description: "Age of the person",
    },
  },
});

function Form() {
  const onChange = (e: SchemaChangeEvent, s: Schema, o: object) => {
    // schema is updated
  };

  return <SchemaView schema={schema} onChange={} />;
}
```

## Related projects

- [CoLI](https://github.com/gridaco/coli)

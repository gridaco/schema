import React from "react";
import { TAnySchema, Kind } from "@sinclair/typebox";

interface Props {
  schema: TAnySchema;
}

export function View({ schema }: Props) {
  console.log("schema", schema);
  // schema.
  return (
    <>
      {Object.keys(schema.properties).map((k) => {
        const p = schema.properties[k];
        const { default: _default, type } = p;
        const kind = p[Kind];
        return (
          <div
            key={k}
            style={{
              display: "flex",
              flexDirection: "row",
              marginBottom: "1rem",
            }}
          >
            <h5 style={{ width: 100 }}>{k}</h5>
            <input
              // type="color"
              // type="date"
              // number
              // type="range"
              style={{ flex: 1 }}
              placeholder={kind}
              defaultValue={_default}
            />
          </div>
        );
      })}
    </>
  );
}

// type Tfield = TAnySchema["properties"];

// function Field({}: Tfield) {
//   return <div>Field</div>;
// }

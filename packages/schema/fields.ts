declare global {
  type Type =
    | "string"
    | "number"
    | "boolean"
    | "date"
    | "array"
    | "object"
    | "enum";
}

export interface Field<T, TT extends Type = Type> {
  key: string;
  label?: string;
  description?: string;
  type: TT;
  required: boolean;
  default: T;
}

export interface NumberField extends Field<number> {
  type: "number";
}

export interface StringField extends Field<string> {
  type: "string";
}

export interface BooleanField extends Field<boolean> {
  type: "boolean";
}

export interface DateField extends Field<Date> {
  type: "date";
}

export interface ArrayField<T> extends Field<T[]> {
  type: "array";
}

export interface ObjectField<T = object, TT extends Type = "object">
  extends Field<T, TT> {}

export interface EnumField<T> extends Field<T> {
  type: "enum";
}

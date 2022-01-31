import { Feature, DisplayValue } from "../base";

export const unique_id: Feature<string> = {
  name: "Unique ID",
  category: "GAMEPLAY",
  description: "This is an ID that is unique to this character.",
  component: DisplayValue,
};

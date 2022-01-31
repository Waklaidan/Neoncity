import { Feature, DisplayValue } from "../base";

export const bank_balance: Feature<string> = {
  name: "Bank Balance",
  description: "Current amount of currency this character has.",
  component: DisplayValue,
};

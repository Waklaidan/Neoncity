import { Feature, DisplayNum } from "../base";

export const bank_balance: Feature<string> = {
  name: "Bank Balance",
  category: "GAMEPLAY",
  description: "Current amount of currency this character has.",
  component: DisplayNum,
};

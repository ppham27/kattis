open Printf;;
open Scanf;;

type victory_card =
  | Province
  | Duchy
  | Estate
  | None

type treasure_card =
  | Gold
  | Silver
  | Copper

type card =
  | VictoryCard of victory_card
  | TreasureCard of treasure_card

let cost x =
  match x with
  | VictoryCard Province -> 8
  | VictoryCard Duchy -> 5
  | VictoryCard Estate -> 2
  | VictoryCard None -> 0
  | TreasureCard Gold -> 6
  | TreasureCard Silver -> 3
  | TreasureCard Copper -> 0

let buying_power x =
  match x with
  | Gold -> 3
  | Silver -> 2
  | Copper -> 1

let total_buying_power g s c =
  (buying_power Gold) * g + (buying_power Silver) * s + (buying_power Copper) * c

let best_treasure_card x =
  if x >= cost (TreasureCard Gold) then Gold
  else if x >= cost (TreasureCard Silver) then Silver
  else Copper

let best_victory_card x =
  if x >= cost (VictoryCard Province) then Province
  else if x >= cost (VictoryCard Duchy) then Duchy
  else if x >= cost (VictoryCard Estate) then Estate
  else None

let to_string x y =
  let prefix = match x with
    | Province -> "Province or "
    | Duchy -> "Duchy or "
    | Estate -> "Estate or "
    | None -> "" in
  let suffix = match y with
    | Gold -> "Gold"
    | Silver -> "Silver"
    | Copper -> "Copper" in
  prefix ^ suffix            

let () = printf "%s\n" (
    let x = scanf "%d %d %d\n" (total_buying_power) in
    to_string (best_victory_card x) (best_treasure_card x))

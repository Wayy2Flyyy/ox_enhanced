import { Inventory } from './inventory';
import { Slot, SlotWithItem } from './slot';

export type DragSource = {
  item: Pick<SlotWithItem, 'slot' | 'name'>;
  ox_inventory: Inventory['type'];
  image?: string;
};

export type DropTarget = {
  item: Pick<Slot, 'slot'>;
  ox_inventory: Inventory['type'];
};

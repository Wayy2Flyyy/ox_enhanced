import React, { useMemo, useState } from 'react';
import InventoryGrid from './InventoryGrid';
import { useAppSelector } from '../../store';
import { selectRightInventory } from '../../store/inventory';
import { InventoryType } from '../../typings';
import { Items } from '../../store/items';

const RightInventory: React.FC = () => {
  const rightInventory = useAppSelector(selectRightInventory);
  const [search, setSearch] = useState('');

  const isShop = rightInventory.type === InventoryType.SHOP;

  const displayed = useMemo(() => {
    if (!isShop) return rightInventory;
    const q = search.trim().toLowerCase();
    if (!q) return rightInventory;
    return {
      ...rightInventory,
      items: rightInventory.items.filter((slot) => {
        if (!slot.name) return false;
        const label = (Items[slot.name]?.label ?? '').toLowerCase();
        return slot.name.toLowerCase().includes(q) || label.includes(q);
      }),
    };
  }, [rightInventory, isShop, search]);

  return (
    <div className="inv-right-col">
      {isShop && (
        <div className="inv-search-bar">
          <span className="inv-search-bar__icon">⌕</span>
          <input
            className="inv-search-bar__input"
            type="text"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            placeholder="Search items…"
            spellCheck={false}
            autoComplete="off"
          />
          {search && (
            <button className="inv-search-bar__clear" onClick={() => setSearch('')} tabIndex={-1}>
              ✕
            </button>
          )}
        </div>
      )}
      <InventoryGrid inventory={displayed} />
    </div>
  );
};

export default RightInventory;

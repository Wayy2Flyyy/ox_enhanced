import React, { useMemo } from 'react';

const colorChannelMixer = (colorChannelA: number, colorChannelB: number, amountToMix: number) => {
  const channelA = colorChannelA * amountToMix;
  const channelB = colorChannelB * (1 - amountToMix);
  return channelA + channelB;
};

const colorMixer = (rgbA: number[], rgbB: number[], amountToMix: number) => {
  const r = colorChannelMixer(rgbA[0], rgbB[0], amountToMix);
  const g = colorChannelMixer(rgbA[1], rgbB[1], amountToMix);
  const b = colorChannelMixer(rgbA[2], rgbB[2], amountToMix);
  return `rgb(${r}, ${g}, ${b})`;
};

// Weight: low → teal (comfort), mid → amber, high → rose (stress)
// Durability: high → teal, mid → amber, low → rose
const COLORS = {
  stress: [255, 92, 108],
  comfort: [73, 242, 194],
  mid: [255, 200, 87],
};

const WeightBar: React.FC<{ percent: number; durability?: boolean }> = ({ percent, durability }) => {
  const color = useMemo(
    () =>
      durability
        ? percent < 50
          ? colorMixer(COLORS.mid, COLORS.stress, percent / 100)
          : colorMixer(COLORS.comfort, COLORS.mid, percent / 100)
        : percent > 50
        ? colorMixer(COLORS.mid, COLORS.stress, (percent - 50) / 50)
        : colorMixer(COLORS.comfort, COLORS.mid, percent / 50),
    [durability, percent]
  );

  return (
    <div className={durability ? 'durability-bar' : 'weight-bar'}>
      <div
        style={{
          visibility: percent > 0 ? 'visible' : 'hidden',
          height: '100%',
          width: `${percent}%`,
          backgroundColor: color,
          transition: `background-color var(--inv-transition-slow), width var(--inv-transition-slow)`,
        }}
      ></div>
    </div>
  );
};

export default WeightBar;

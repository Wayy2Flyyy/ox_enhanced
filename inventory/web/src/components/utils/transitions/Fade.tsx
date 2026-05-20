import React, { useRef } from 'react';
import { CSSTransition } from 'react-transition-group';

interface Props {
  in?: boolean;
  children: React.ReactNode;
  /** `fullscreen` fills the NUI root (inventory). `inline` sizes to content (e.g. toast notifications). */
  variant?: 'fullscreen' | 'inline';
}

const Fade: React.FC<Props> = ({ in: inProp, children, variant = 'fullscreen' }) => {
  const nodeRef = useRef<HTMLDivElement>(null);

  const shellClass =
    variant === 'inline'
      ? 'inventory-fade-shell inventory-fade-shell--inline'
      : 'inventory-fade-shell inventory-fade-shell--fullscreen';

  return (
    <CSSTransition in={inProp} nodeRef={nodeRef} classNames="transition-fade" timeout={240} unmountOnExit>
      <div ref={nodeRef} className={shellClass}>
        {children}
      </div>
    </CSSTransition>
  );
};

export default Fade;

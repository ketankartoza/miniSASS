import React, { useState } from 'react';

const TabbedContent = ({ tabsData, activeTabIndex, onTabChange }) => {
  // Sort tabsData by the date in descending order
  const sortedTabsData = [...tabsData].sort((a, b) => new Date(b.label) - new Date(a.label));

  const handleTabChange = (tabIndex) => {
    onTabChange(tabIndex);
  };

  return (
    <div className="flex flex-col items-start justify-start w-full">
      <div className="flex gap-5">
        {sortedTabsData.map((tab, index) => (
          <button
            key={tab.id}
            className={`cursor-pointer min-w-[126px] text-base text-center focus:outline-none ${activeTabIndex === index ? 'border-b-4 border-blue-900 text-blue-900' : ''}`}
            onClick={() => handleTabChange(index)}
          >
            {tab.label}
          </button>
        ))}
      </div>
      <div className="w-full">
        {sortedTabsData.map((tab, index) => (
          <div key={`content_${tab.id}`} style={{ display: activeTabIndex === index ? 'block' : 'none' }}>
            {tab.content}
          </div>
        ))}
      </div>
    </div>
  );
};

export default TabbedContent;

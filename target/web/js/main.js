import { createOptions } from "./createOptions.js";

const optionsWrapper = document.getElementById("options-wrapper");
const body = document.body;
const eyeDot = document.getElementById("eyeDot");

function parsePayload(raw) {
  if (typeof raw === "string") {
    try {
      return JSON.parse(raw);
    } catch {
      return null;
    }
  }
  return raw;
}

window.addEventListener("message", (event) => {
  const data = parsePayload(event.data);
  if (!data?.event) return;

  switch (data.event) {
    case "visible": {
      optionsWrapper.innerHTML = "";
      eyeDot.classList.remove("eye-hover");
      body.style.visibility = data.state ? "visible" : "hidden";
      break;
    }

    case "leftTarget": {
      optionsWrapper.innerHTML = "";
      eyeDot.classList.remove("eye-hover");
      break;
    }

    case "setTarget": {
      optionsWrapper.innerHTML = "";
      eyeDot.classList.add("eye-hover");

      if (data.options && typeof data.options === "object") {
        for (const type of Object.keys(data.options)) {
          const group = data.options[type];
          if (!Array.isArray(group)) continue;
          group.forEach((option, idx) => {
            createOptions(type, option, idx + 1);
          });
        }
      }

      if (Array.isArray(data.zones)) {
        for (let z = 0; z < data.zones.length; z += 1) {
          const group = data.zones[z];
          if (!Array.isArray(group)) continue;
          group.forEach((option, idx) => {
            createOptions("zones", option, idx + 1, z + 1);
          });
        }
      }

      break;
    }
    default:
      break;
  }
});

// SPDX-License-Identifier: MIT
// Regenerates themes/turbo_themes.yaml from the published turbo-themes adapter.
// The committed artifact must always match this output (CI enforces drift).
import { mkdir } from "node:fs/promises";

import { generateHomeAssistantThemes } from "@lgtm-hq/turbo-themes/adapters/home-assistant";

const HEADER = "---\n";

await mkdir("themes", { recursive: true });
await Bun.write("themes/turbo_themes.yaml", HEADER + generateHomeAssistantThemes());
console.log("Wrote themes/turbo_themes.yaml");

import express from "express";
import { rootRoute } from "./routes/rootRoutes.js";

const app = express();
const port = 8080;

import cors from "cors";
app.use(cors());

app.use(express.json());

app.use(rootRoute);

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});

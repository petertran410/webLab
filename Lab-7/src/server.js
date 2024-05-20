import express from "express";
import { rootRoute } from "./routes/rootRoutes.js";

const app = express();
app.use(rootRoute);
app.listen(8080);

app.use(express.json());

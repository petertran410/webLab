import express from "express";
import { config } from "dotenv";
import courseRouter from "./routes/course.js";
import { connectToDatabase } from "./db/index.js";

config(); // Load .env file

const app = express();

app.use(express.json());
app.use("/api/v1/courses", courseRouter);

const PORT = process.env.PORT || 3307;

app.listen(PORT, async () => {
  await connectToDatabase();
  console.log(`Server running on port ${PORT}`);
});

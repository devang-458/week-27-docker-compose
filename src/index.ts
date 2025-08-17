import epxress from "express";

const app = epxress();

app.get("/", (req, res) => {
  res.json({ message: "get endpoint" });
});

app.post("/", (req, res) => {
  res.json({ message: "post endpoint" });
});

app.listen(3000, () => {
  console.log("Server is running");
});

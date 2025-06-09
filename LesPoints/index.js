const fs = require("fs");

const students = JSON.parse(fs.readFileSync("./grades.json", "utf8"));

const results = students.map((student) => {
  const commit = student.commitment;

  const basics = Math.round(commit?.basics ?? 0);
  const advance = Math.round(commit?.advance ?? 0);
  const qcm = Math.round(commit?.qcm ?? 0);
  const snake = Math.round(commit?.snake?.note_finale_sur_10 ?? 0);
  const finalTest = Math.round(commit?.final_test?.note_finale_sur_10 ?? 0);

  const sum = basics + advance + qcm + snake + finalTest;
  const rawAverage = sum / 2.5;
  const roundedAverage = Math.round(rawAverage);

  return {
    Name: student.name,
    "Day-1-Basics": `${basics}/10`,
    "Day-2-Advance": `${advance}/10`,
    "Day-3-QCM": `${qcm}/10`,
    "Day-4-Snake": `${snake}/10`,
    "Day-5-Exam": `${finalTest}/10`,
    "Average-of-all-day": `${roundedAverage}/20`,
  };
});

console.table(results);

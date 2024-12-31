<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Happy New Year</title>
  <style>
    /* General Styling */
    body {
      margin: 0;
      font-family: 'Arial', sans-serif;
      color: #ffffff;
      background: linear-gradient(to bottom, #2ecc71, #27ae60);
      background-attachment: fixed;
      text-align: center;
      overflow: hidden;
    }

    /* Nature-themed Background */
    .nature {
      position: absolute;
      bottom: 0;
      width: 100%;
      height: 150px;
      background: url('https://www.transparenttextures.com/patterns/grass.png') repeat;
      background-color: #27ae60;
    }

    /* Happy New Year Heading */
    h1 {
      font-size: 4em;
      margin-top: 30px;
      animation: fadeIn 2s ease-in-out;
    }

    /* Marathi Wishes */
    .wishes {
      font-size: 2em;
      margin-top: 20px;
      animation: fadeIn 3s ease-in-out;
    }

    /* Year Transition */
    .year {
      font-size: 7em;
      font-weight: bold;
      margin-top: 50px;
      color: #f1c40f;
      text-shadow: -2px -2px 0 #000, 2px -2px 0 #000, -2px 2px 0 #000, 2px 2px 0 #000; /* Black Outline */
      animation: yearChange 4s ease-in-out forwards;
    }

    /* Hidden Final Wishes */
    .final-wishes {
      font-size: 2em;
      margin-top: 30px;
      color: #f9f9f9;
      opacity: 0;
      animation: showWishes 2s ease-in-out 4s forwards;
    }

    /* Creator Name */
    .creator {
      font-size: 1em;
      margin-top: 50px;
      color: #dcdcdc;
      animation: fadeIn 5s ease-in-out;
    }

    /* Keyframes for Animations */
    @keyframes fadeIn {
      0% { opacity: 0; }
      100% { opacity: 1; }
    }

    @keyframes yearChange {
      0% { transform: scale(1); color: #f1c40f; }
      50% { transform: scale(1.8); color: #e74c3c; text-shadow: -3px -3px 0 #000, 3px -3px 0 #000, -3px 3px 0 #000, 3px 3px 0 #000; }
      100% { transform: scale(1); color: #3498db; text-shadow: -2px -2px 0 #000, 2px -2px 0 #000, -2px 2px 0 #000, 2px 2px 0 #000; }
    }

    @keyframes showWishes {
      0% { opacity: 0; }
      100% { opacity: 1; }
    }
  </style>
</head>
<body>
  <h1>Happy New Year!</h1>
  <div class="year" id="yearDisplay">2024</div>
  <p class="wishes">
    नवीन वर्ष सुख-समृद्धीचे जावो! <br>
    आनंद, यश आणि समाधान तुमच्या आयुष्यात भरभरून नांदो! <br>
    नववर्षाच्या हार्दिक शुभेच्छा! 🌟
  </p>
  <p class="final-wishes">
    2025 च्या नवीन वर्षाच्या शुभेच्छा! <br>
    तुमच्या आयुष्यातील प्रत्येक क्षण आनंददायी आणि सुखदायी होवो! <br>
    नवीन वर्षाच्या हार्दिक शुभेच्छा! 🌸✨
  </p>
  <div class="creator">Created by Ayush Kulkarni</div>
  <div class="nature"></div>

  <script>
    // JavaScript for Year Transition
    const yearDisplay = document.getElementById("yearDisplay");
    let currentYear = 2024;

    // Function to update year and stop at 2025
    function updateYear() {
      currentYear++;
      yearDisplay.textContent = currentYear;

      // Stop updating when it reaches 2025
      if (currentYear === 2025) {
        clearInterval(yearInterval);
      }
    }

    // Start the transition after 2 seconds
    const yearInterval = setTimeout(updateYear, 4000); // Trigger update at the end of the animation
  </script>
</body>
</html>

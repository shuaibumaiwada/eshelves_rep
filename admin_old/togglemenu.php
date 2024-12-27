<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Outside Toggler</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .menu-container {
            position: relative;
            width: 100%;
        }

        .menu-content {
            max-height: 0;
            overflow: hidden;
            background-color: #f4f4f4;
            transition: max-height 0.3s ease-out;
        }

        .menu-content ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .menu-content ul li {
            border-bottom: 1px solid #ddd;
        }

        .menu-content ul li a {
            display: block;
            padding: 10px 20px;
            color: #333;
            text-decoration: none;
        }

        .menu-content ul li a:hover {
            background-color: #ddd;
        }

        .menu-content.active {
            max-height: 300px; /* Adjust based on content height */
        }

        .outside-toggler {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 18px;
            margin: 10px;
        }
    </style>
</head>
<body>
    <!-- Toggler Button Outside the Menu -->
    <button id="outside-toggler" class="outside-toggler">Toggle Menu</button>

    <!-- Collapsible Menu -->
    <div class="menu-container">
        <div class="menu-content">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
    </div>

    <script>
        const outsideToggler = document.getElementById("outside-toggler");
        const menuContent = document.querySelector(".menu-content");

        outsideToggler.addEventListener("click", () => {
            menuContent.classList.toggle("active");
        });
    </script>
</body>
</html>

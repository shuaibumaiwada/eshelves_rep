<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sidebar Toggler</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
    }

    .sidebar-wrapper {
      display: flex;
      position: relative;
      height: 100vh;
      overflow: hidden;
    }

    .sidebar-toggler {
      display: none;
    }

    .toggler-btn {
      position: fixed;
      top: 10px;
      left: 10px;
      z-index: 2;
      background-color: #333;
      color: #fff;
      padding: 10px 15px;
      font-size: 18px;
      cursor: pointer;
      border-radius: 4px;
      transition: background-color 0.3s;
    }

    .toggler-btn:hover {
      background-color: #555;
    }

    .sidebar {
      position: fixed;
      top: 0;
      left: -250px;
      width: 250px;
      height: 100%;
      background-color: #222;
      color: #fff;
      overflow-y: auto;
      transition: left 0.3s ease;
      z-index: 1;
    }

    .sidebar ul {
      list-style: none;
      padding: 0;
      margin: 0;
    }

    .sidebar ul li {
      border-bottom: 1px solid #444;
    }

    .sidebar ul li a {
      display: block;
      padding: 15px;
      color: #fff;
      text-decoration: none;
    }

    .sidebar ul li a:hover {
      background-color: #444;
    }

    .content {
      margin-left: 0;
      padding: 20px;
      width: 100%;
      transition: margin-left 0.3s ease;
    }

    .sidebar-toggler:checked ~ .sidebar {
      left: 0;
    }

    .sidebar-toggler:checked ~ .content {
      margin-left: 250px;
    }
  </style>
</head>
<body>
  <div class="sidebar-wrapper">
    <input type="checkbox" id="sidebar-toggler" class="sidebar-toggler">
    <label for="sidebar-toggler" class="toggler-btn">&#9776; Menu</label>

    <div class="sidebar">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </div>

    <div class="content">
      <h1>Welcome to My Website</h1>
      <p>This is the main content area. Click the menu button to toggle the sidebar.</p>
    </div>
  </div>
</body>
</html>
<?php include "koneksi.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Personal Web | Artikel</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="src/output.css" rel="stylesheet">
<link rel="icon" href="src/favico.png">
</head>

<body class="bg-[#E8F1F2] text-gray-800 font-['Segoe UI', 'San Francisco', 'Roboto', sans-serif] min-h-screen">
<!-- Header -->
<header class="bg-[#1B4965] border-b-2 border-black text-white text-center py-6 shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] text-2xl md:text-3xl font-['Segoe UI', 'San Francisco', 'Roboto', sans-serif] font-black">
Personal Web | Cahya Apriyana
</header>
<!-- Navigation -->
<nav class="bg-[#5FA8A3] border-b-2 border-black text-white py-3 shadow-[4px_4px_0px_0px_rgba(0,0,0,1)]">
<ul class="flex justify-center space-x-10 font-bold text-lg">
<li><a href="index.php" class="hover:underline hover:text-[#1B4965] transition-all">Artikel</a></li>
<li><a href="gallery.php" class="hover:underline hover:text-[#1B4965] transition-all">Gallery</a></li>
<li><a href="about.php" class="hover:underline hover:text-[#1B4965] transition-all">About</a></li>
<li><a href="admin/login.php" class="hover:underline hover:text-[#1B4965] transition-all">Login</a></li>
</ul>
</nav>

<!-- Article Content -->
<main class="max-w-4xl mx-auto p-4 md:p-8 mt-6">
<?php
if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM tbl_artikel WHERE id_artikel = '$id'";
    $query = mysqli_query($db, $sql);
    
    if(mysqli_num_rows($query) > 0) {
        $data = mysqli_fetch_array($query);
        echo "<article class='bg-white border-2 border-black p-6 md:p-8 rounded-lg shadow-[4px_4px_0px_0px_rgba(0,0,0,1)]'>";
        echo "<h1 class='text-3xl font-black text-[#1B4965] mb-6'>" . htmlspecialchars($data['nama_artikel']) . "</h1>";
        echo "<div class='prose prose-lg max-w-none'>";
        echo "<p class='text-gray-700 leading-relaxed'>" . nl2br(htmlspecialchars($data['isi_artikel'])) . "</p>";
        echo "</div>";
        echo "<div class='mt-8 pt-6 border-t-2 border-black'>";
        echo "<a href='index.php' class='inline-block bg-[#1B4965] text-white px-6 py-2 rounded-lg border-2 border-black shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] hover:shadow-[6px_6px_0px_0px_rgba(0,0,0,1)] hover:translate-x-[2px] hover:translate-y-[2px] transition-all duration-200 font-bold'>Kembali ke Artikel</a>";
        echo "</div>";
        echo "</article>";
    } else {
        echo "<div class='bg-white border-2 border-black p-6 rounded-lg shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] text-center'>";
        echo "<h2 class='text-2xl font-black text-[#1B4965] mb-4'>Artikel Tidak Ditemukan</h2>";
        echo "<p class='text-gray-700 mb-6'>Maaf, artikel yang Anda cari tidak ditemukan.</p>";
        echo "<a href='index.php' class='inline-block bg-[#1B4965] text-white px-6 py-2 rounded-lg border-2 border-black shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] hover:shadow-[6px_6px_0px_0px_rgba(0,0,0,1)] hover:translate-x-[2px] hover:translate-y-[2px] transition-all duration-200 font-bold'>Kembali ke Artikel</a>";
        echo "</div>";
    }
} else {
    echo "<div class='bg-white border-2 border-black p-6 rounded-lg shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] text-center'>";
    echo "<h2 class='text-2xl font-black text-[#1B4965] mb-4'>Parameter Tidak Valid</h2>";
    echo "<p class='text-gray-700 mb-6'>Maaf, parameter artikel tidak valid.</p>";
    echo "<a href='index.php' class='inline-block bg-[#1B4965] text-white px-6 py-2 rounded-lg border-2 border-black shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] hover:shadow-[6px_6px_0px_0px_rgba(0,0,0,1)] hover:translate-x-[2px] hover:translate-y-[2px] transition-all duration-200 font-bold'>Kembali ke Artikel</a>";
    echo "</div>";
}
?>
</main>

<!-- Footer -->
<footer class="bg-[#1B4965] border-t-2 border-black text-white text-center py-4 mt-10 shadow-[0_-4px_0px_0px_rgba(0,0,0,1)] font-bold">
&copy; <?php echo date('Y'); ?> | Created by Cahya Apriyana
</footer>
</body>
</html>
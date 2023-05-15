<?php
$host = "localhost";
$dbname = "hesap";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $sayi1 = $_POST['sayi1'];
        $sayi2 = $_POST['sayi2'];
        $islem = $_POST['islem'];

        switch ($islem) {
            case 'toplama':
                $sonuc = $sayi1 + $sayi2;
                break;
            case 'cikarma':
                $sonuc = $sayi1 - $sayi2;
                break;
            case 'carpma':
                $sonuc = $sayi1 * $sayi2;
                break;
            case 'bolme':
                if ($sayi2 == 0) {
                    $sonuc = "Sınırsız";
                } else {
                    $sonuc = $sayi1 / $sayi2;
                }
                break;
            default:
                $sonuc = "Geçersiz işlem";
        }

        echo "<p>Sonuç: " . $sonuc . "</p>";
        $loglama = $conn->prepare("INSERT INTO hesap (sayi1, sayi2, islem, sonuc) VALUES (:sayi1, :sayi2, :islem, :sonuc)");
        $loglama->bindParam(':sayi1', $sayi1);
        $loglama->bindParam(':sayi2', $sayi2);
        $loglama->bindParam(':islem', $islem);
        $loglama->bindParam(':sonuc', $sonuc);
        $loglama->execute();
    }

} catch (PDOException $e) {
    echo "Hata: " . $e->getMessage();
}

$conn = null;
?>

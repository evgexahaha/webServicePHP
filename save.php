<? 
$host = 'MySQL-8.0';
$user = 'root';
$password = '';
$database = 'php_service';

$connect = mysqli_connect($host, $user, $password, $database);

$fullname = $_POST['name'];
$department = $_POST['department'];
$dateOfBirth = $_POST['dateOfBirth'];
$post = $_POST['post'];
$phone = $_POST['phone'];
$typeDoc = $_POST['typeDoc'];

if ($typeDoc == 'passport') {
    $series_Passport = $_POST['series_Passport'];
    $phone_Passport = $_POST['phone_Passport'];
    $date_Passport = $_POST['date_Passport'];
    $whoIssued_Passport = $_POST['whoIssued_Passport'];
    $code = $_POST['code'];
} elseif ($typeDoc == 'carCertificate') {
    $series_Car = $_POST['series_Car'];
    $date_Car = $_POST['date_Car'];
    $region_Car = $_POST['region_Car'];
    $whoIssued_Car = $_POST['whoIssued_Car'];
} else {
    $name_Any = $_POST['name_Any'];
    $series_Any = $_POST['series_Any'];
    $date_Any = $_POST['date_Any'];
    $whoIssued_Any = $_POST['whoIssued_Any'];
}

$timeStart = $_POST['timeStart'];
$timeEnd = $_POST['timeEnd'];
$comment = $_POST['comment'];

$document_id = null;

if ($typeDoc == 'passport') {
    $newPassport = "INSERT INTO passport_documents (series_Passport, phone_Passport, date_Passport, whoIssued_Passport, code) VALUES ('$series_Passport', '$phone_Passport', '$date_Passport', '$whoIssued_Passport', '$code')";
    mysqli_query($connect, $newPassport);
    $document_id = mysqli_insert_id($connect);

} elseif ($typeDoc == 'carCertificate') {
    $newCar = "INSERT INTO car_certificate (series_Car, date_Car, region_Car, whoIssued_Car) VALUES ('$series_Car', '$date_Car', '$region_Car', '$whoIssued_Car')";
    mysqli_query($connect, $newCar);
    $document_id = mysqli_insert_id($connect);

} else {
    $newAny = "INSERT INTO any_documents (name_Any, series_Any, date_Any, whoIssued_Any) VALUES ('$name_Any', '$series_Any', '$date_Any', '$whoIssued_Any')";
    mysqli_query($connect, $newAny);
    $document_id = mysqli_insert_id($connect);
}

$new = "INSERT INTO records (name, department, dateOfBirth, post, phone, document_type, document_id, timeStart, timeEnd, comment) VALUES ('$fullname', '$department', '$dateOfBirth', '$post', '$phone', '$typeDoc', '$document_id', '$timeStart', '$timeEnd', '$comment')";

if (mysqli_query($connect, $new)) {
    echo 'Успешно!';
} else {
    echo 'Ошибка!';
}

mysqli_close($connect);
<?php
	include_once('model/PersistentDatabaseConnection.php');
	DatabaseConnection::connectToDatabase();

	if (!isset($_SESSION['cid']) || empty($_SESSION['cid'])) {
		echo "Please Log in again";
		exit;
	}

	$cid = $_SESSION['cid'];
	
	$error = "";
	$msg = "";
	$fileElementName = 'fileToUpload';
	if(!empty($_FILES[$fileElementName]['error']))
	{
		switch($_FILES[$fileElementName]['error'])
		{

			case '1':
				$error = 'The uploaded file exceeds the upload_max_filesize directive in php.ini';
				break;
			case '2':
				$error = 'The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form';
				break;
			case '3':
				$error = 'The uploaded file was only partially uploaded';
				break;
			case '4':
				$error = 'No file was uploaded.';
				break;

			case '6':
				$error = 'Missing a temporary folder';
				break;
			case '7':
				$error = 'Failed to write file to disk';
				break;
			case '8':
				$error = 'File upload stopped by extension';
				break;
			case '999':
			default:
				$error = 'No error code avaiable';
		}
	}elseif(empty($_FILES['fileToUpload']['tmp_name']) || $_FILES['fileToUpload']['tmp_name'] == 'none')
	{
		$error = 'No file was uploaded..';
	}else 
	{
			$msg .= " File Name: " . $_FILES['fileToUpload']['name'] . ", ";
			$msg .= " File Size: " . @filesize($_FILES['fileToUpload']['tmp_name']);
			//for security reason, we force to remove all uploaded file
			//@unlink($_FILES['fileToUpload']);		
			
			 $info = pathinfo($_FILES['fileToUpload']['name']);
			 $ext = $info['extension']; // get the extension of the file
			 $newname = "couple_website_" . $cid . "." .$ext; 

			 $target = 'media/website_images/'.$newname;
			 move_uploaded_file( $_FILES['fileToUpload']['tmp_name'], $target);
			 
			 $sql = "UPDATE website_basic_info SET img_path='" . $newname . "' WHERE c_id=" . $cid;
			 echo $sql;
			 mysql_query($sql);
			 echo $target . "\n" . $_FILES['fileToUpload']['tmp_name'] . "\n";
	}		
	echo "{";
	echo				"error: '" . $error . "',\n";
	echo				"msg: '" . $msg . "'\n";
	echo "}";
?>
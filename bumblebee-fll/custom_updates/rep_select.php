<?php
/**
 * Created by PhpStorm.
 * User: HI
 * Date: 12/8/2016
 * Time: 10:26 AM
 */
mysql_connect('localhost', 'root', 'chocolate');
mysql_select_db("cocoa_fll");
$sql = "SELECT * FROM fll_reps ORDER BY name ASC";
$repselect = mysql_query($sql);
if ($repselect === FALSE) {
    die(mysql_error());
}
echo '<option>Select a Rep</option>';
while ($row = mysql_fetch_array($repselect)) {
    echo "<option value='" . $row['id_rep'] . "'>" . $row['name'] . "</option>";
}
?>
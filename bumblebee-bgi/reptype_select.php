<?php

/**
 * @author Alvin Herbert
 * @copyright 2015
 */

mysql_connect('localhost', 'root', 'chocolate');
mysql_select_db ("cocoa_bgi");

$sql = "SELECT * FROM bgi_reptype ORDER BY id ASC";
$result = mysql_query($sql);

echo '<select class="form-control" id="rep-type" name="rep_type">
        <option>Representation</option>';
while ($row = mysql_fetch_array($result)) {
    echo "<option value='" . $row['id'] . "'>" . $row['rep_type'] . "</option>";
}
echo "</select>";
?>
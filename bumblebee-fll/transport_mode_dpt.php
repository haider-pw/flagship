<?php

/**
 * @author Alvin Herbert
 * @copyright 2015
 */

mysql_connect('localhost', 'root', 'chocolate');
mysql_select_db ("cocoa_fll");

$sql = "SELECT * FROM fll_transporttype ORDER BY id ASC";
$result = mysql_query($sql);

echo '<select multiple class="form-control select" id="dpt-transport" name="dpt_transport[]">';
while ($row = mysql_fetch_array($result)) {
    echo "<option value='" . $row['transport_type'] . "'>" . $row['transport_type'] . "</option>";
}
echo "</select>";
?>
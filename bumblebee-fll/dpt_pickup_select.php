<?php

/**
 * @author Alvin Herbert
 * @copyright 2015
 */

mysql_connect('localhost', 'root', 'chocolate');
mysql_select_db ("cocoa_fll");

$sql = "SELECT * FROM fll_location ORDER BY name ASC";
$result = mysql_query($sql);

echo '<select class="form-control pickSelect" id="dpt-pickup" name="dpt_pickup">
      <option>Pickup Location</option>';
while ($row = mysql_fetch_array($result)) {
    echo "<option value='" . $row['id_location'] . "'>" . $row['name'] . "</option>";
}
echo "</select>";

?>
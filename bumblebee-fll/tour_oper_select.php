<?php

/**
 * @author Alvin Herbert
 * @copyright 2015
 */

mysql_connect('localhost', 'root', 'chocolate');
mysql_select_db ("cocoa_fll");

$sql = "SELECT * FROM fll_touroperator ORDER BY tour_operator ASC";
$result = mysql_query($sql);

echo '<select class="form-control selector2" id="tour-oper" name="tour_oper">
      <option>Select tour operator</option>';
while ($row = mysql_fetch_array($result)) {
    echo "<option value='" . $row['id'] . "' ".((isset($selectedTourOperator) and !empty($selectedTourOperator) and $selectedTourOperator==$row['id'])?' selected="selected"':'').">" . $row['tour_operator'] . "</option>";
}
echo "</select>";
?>
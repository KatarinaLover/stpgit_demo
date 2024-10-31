<?php
class Category extends Db
{
    public function getAllCategories()
    {
        $sql = self::$connection->prepare("SELECT * FROM categories");
        $sql->execute();

        $categories = array();
        $categories = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $categories;
    }
}

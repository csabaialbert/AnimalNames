<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AnimalNamesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $tables = ['animals', 'novels', 'connections'];
        foreach ($tables as $table) {
            $this->seedFileToTable(storage_path($table . '.txt'), $table);
        }
    }

    private function seedFileToTable($filePath, $tableName)
    {
        $contents = file($filePath);

        foreach ($contents as $content) {
            $values = explode("\t", $content);

            if (!isset($columns)) {
                $columns = array_map(fn ($value) => str_replace(["\r", "\n"], '', $value), $values);
            } else {
                $data = array_combine($columns, $values);
                DB::table($tableName)->insert($data);
            }
        }
    }
}


![BrightCoders Logo](img/logo.png)

# La Rosa Dorada

## 📓 Descripción
Programa para simular el comportamiento de los objetos de la Rosa Dorada.

## 📋 Tabla de contenido
- Tecnologías.
- Cómo instalar y ejecutar el proyecto.
- Cómo ejecutar las pruebas del proyecto.
- Cómo ejecutar RuboCop en el proyecto.
- Cómo ejecutar Reek en el proyecto.
- Cómo ejecutar RubyCritic en el proyecto.
- Créditos.
- Badges.

## 🔧 Tecnologías
- Ruby.
- Minitest.
- RuboCop.
- Reek.
- RubyCritic.

## ⚙️ Cómo instalar y ejecutar el proyecto
>_**1.** Verificar que Ruby se encuentre instalado en el sistema._
>```
>$ ruby -v
>   ruby 3.2.2-1 (set by C:\Ruby-on-Windows\global.txt)
>```
>
>_**2.** Clonar o descargar el repositorio._
>```
>$ git clone https://github.com/BrightCoders-Institute/s3a2-la-rosa-dorada-team5_s3a2_la-rosa-dorada.git
>```
>
>_**3.** Desplazarse al directorio del proyecto._
>```
>$ cd <ruta_directorio>
>```
>
>_**4.** Ejecutar el archivo "main.rb" desde una terminal de comandos._
>```
>$ ruby .\app\text_test_fixture.rb
>
>   -------- Day 0 --------
>   name, sellIn, quality
>   5+ Dexterity Vest, 10, 20
>   +5 Dexterity Vest, 0, 20
>   Aged Brie, 2, 0
>   Elixir of the Mongoose, 5, 7
>   Sulfuras, 0, 80
>   Sulfuras, 0, 80
>   Backstage passes, 15, 20
>   Backstage passes, 10, 49
>   Backstage passes, 5, 49
>   Backstage passes, 0, 49
>   Conjured, 3, 6
>   Conjured, 0, 6
>   
>   -------- Day 1 --------
>   name, sellIn, quality
>   5+ Dexterity Vest, 9, 19
>   +5 Dexterity Vest, 0, 18
>   Aged Brie, 1, 1
>   Elixir of the Mongoose, 4, 6
>   Sulfuras, 0, 80
>   Sulfuras, 0, 80
>   Backstage passes, 14, 21
>   Backstage passes, 9, 50
>   Backstage passes, 4, 50
>   Backstage passes, 0, 0
>   Conjured, 2, 4
>   Conjured, 0, 2
>```

## 🔬 Cómo ejecutar las pruebas del proyecto
>_**1.** Instalar las gemas de Minitest y ffi._
>```
>$ gem install minitest
>   Successfully installed minitest-5.21.1
>   Parsing documentation for minitest-5.21.1
>   Couldn't find file to include 'README.rdoc' from lib/minitest.rb
>   Installing ri documentation for minitest-5.21.1
>   Done installing documentation for minitest after 4 seconds
>   1 gem installed
>
> $ gem install ffi
>   Successfully installed ffi-1.16.3-x64-mingw-ucrt
>   Parsing documentation for ffi-1.16.3-x64-mingw-ucrt
>   Done installing documentation for ffi after 1 seconds
>   1 gem installed
>```
>
>_**2.** Ejecutar directamente desde el directorio del proyecto el archivo con las pruebas unitarias._
>```
>$ ruby .\test\standard_item_test.rb
>   Run options: --seed 60052
>   
>   # Running:
>   
>   ...
>   
>   Finished in 0.033357s, 89.9372 runs/s, 1109.2258 assertions/s.
>   3 runs, 37 assertions, 0 failures, 0 errors, 0 skips
>```

## 🔍 Cómo ejecutar RuboCop en el proyecto
>_**1.** Instalar la gema de RuboCop._
>```
>$ gem install rubocop
>   rbenv: Rehash executable 'rubocop' for gem 'rubocop'
>   Successfully installed rubocop-1.59.0
>   Parsing documentation for rubocop-1.59.0
>   Done installing documentation for rubocop after 14 seconds
>   1 gem installed
>```
>
>_**2.** Ejecutar RuboCop en el directorio del proyecto._
>```
>$ rubocop
>   Inspecting 15 files
>   ...............
>   
>   15 files inspected, no offenses detected
>
>$ rubocop -L
>   app/gilded_rose.rb
>   app/items/aged_brie_item.rb
>   app/items/backstage_item.rb
>   app/items/conjured_item.rb
>   app/items/item.rb
>   app/items/items_generation.rb
>   app/items/standard_item.rb
>   app/items/sulfuras_item.rb
>   app/text_test_fixture.rb
>   test/aged_brie_item_test.rb
>   test/backstage_item_test.rb
>   test/conjured_item_test.rb
>   test/items_generation_test.rb
>   test/standard_item_test.rb
>   test/sulfuras_item_test.rb
>```

## 🧩 Cómo ejecutar Reek en el proyecto
>_**1.** Instalar la gema de Reek._
>```
>$ gem install reek
>   rbenv: Rehash executable 'code_climate_reek' for gem 'reek'
>   rbenv: Rehash executable 'reek' for gem 'reek'
>   Successfully installed reek-6.2.0
>   Parsing documentation for reek-6.2.0
>   Done installing documentation for reek after 2 seconds
>   1 gem installed
>```
>
>_**2.** Ejecutar Reek en el directorio de la aplicación._
>```
>$ cd .\app\ 
>$ reek
>   Inspecting 9 file(s):
>   .SSSS....
>   ...
>```
>
>_**3.** Ejecutar Reek en el directorio de las pruebas._
>```
>$ cd .\test\ 
>$ reek
>   Inspecting 6 file(s):
>   ...S..
>   ...
>```

## 🛠️ Cómo ejecutar RubyCritic en el proyecto
>_**1.** Instalar la gema de RubyCritic._
>```
>$ gem install rubycritic
>   rbenv: Rehash executable 'rubycritic' for gem 'rubycritic'
>   Successfully installed rubycritic-4.9.0
>   Parsing documentation for rubycritic-4.9.0
>   Done installing documentation for rubycritic after 3 seconds
>   1 gem installed
>```
>
>_**2.** Ejecutar RubyCritic en el directorio de la aplicación._
>```
>$ cd .\app\ 
>$ rubycritic
>   running flay smells
>   
>   running flog smells
>   .........
>   running reek smells
>   .........
>   running complexity
>   .........
>   running attributes
>   .........
>   running churn
>   .........
>   running simple_cov
>   .........
>   New critique at file:///C:/Users/erikg/Desktop/s3a2-la-rosa-dorada-
>   team5_s3a2_la-rosa-dorada/app/tmp/rubycritic/overview.html
>   Score: 98.57
>```
>
>_**3.** Ejecutar RubyCritic en el directorio de las pruebas._
>```
>$ cd .\test\ 
>$ rubycritic
>   running flay smells
>   ..
>   running flog smells
>   ......
>   running reek smells
>   ......
>   running complexity
>   ......
>   running attributes
>   ......
>   running churn
>   ......
>   running simple_cov
>   ......
>   New critique at file:///C:/Users/erikg/Desktop/s3a2-la-rosa-dorada-
>   team5_s3a2_la-rosa-dorada/test/tmp/rubycritic/overview.html
>   Score: 88.05
>```

## 🕹️ Créditos
- **[ErikGmz](https://github.com/ErikGmz)**
- **[luiandre13](https://github.com/luiandre13)**
- **[SharonBel7](https://github.com/SharonBel7)**

## 💻 Badges
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)

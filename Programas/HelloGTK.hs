-- Hello GTK
-- 
-- Cria uma Interface Grafica(Janela) em branco usando GTK2 (Gtk2Hs)

import Graphics.UI.Gtk

helloGTK :: IO ()
helloGTK = do
                -- Função chamada por todas as Aplicações Gtk2Hs
                initGUI

                -- Cria uma Janela e mostra seu conteúdo(Widgets)
                window <- windowNew
                widgetShowAll window

                --  Main Event Loop da Aplicação
                mainGUI

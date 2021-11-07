def da_boas_vindas
    puts "*******************"
    puts "/* Jogo Da Forca */"
    puts "*******************"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n\n"
    puts "Começaremos o jogo para você, #{nome}."
    nome
end

def desenha_forca(erros)
    cabeca = " "
    corpo = " "
    pernas = " "
    bracos = " "

    if erros >= 1
        cabeca = " (_)  "
    end
    if erros >= 2
        bracos = "| | |"
        corpo =  "  |  "
    end
    if erros>= 3
        bracos = ' \\|/ '
    end
    if erros >= 4
        pernas = ' // \ '
    end

    puts " _______        "
    puts " |/     |       "
    puts " |    #{cabeca} "
    puts " |    #{bracos} "
    puts " |    #{corpo}  "
    puts " |    #{pernas} "
    puts " |              "
    puts "_|___           "
    puts "                "
end

def sorteia_palavra_secreta
    puts "Escolhendo uma palavra..."
    puts "Escolhida uma palavra com #{palavra_secreta.size} letras... Boa sorte!"
    palavra_secreta
end

def avisa_escolhendo_palavra
    puts "Escolhendo uma palavra..."
    sleep(1)
end

def avisa_palavra_escolhida(palavra_secreta)
    puts "Escolhida uma palavra com #{palavra_secreta.size} caracteres... Boa sorte!"
    sleep(0.5)
    palavra_secreta
end

def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == "N"
end

def avisa_chute_repetido(chute)
    puts "Você já chutou #{chute}."
end

def avisa_letra_nao_encontrada
    puts "Letra não encontrada!"
end

def avisa_letra_encontrada (total_encontrado)
    puts "Letra encontrada #{total_encontrado} vezes."
end

def avisa_acertou_palavra

    puts "Parabéns, você ganhou!"
    puts "    ___________   "
    puts "   '._==_==_=_.'  "
    puts "     .-\\: /-.    "
    puts "    | (|:. |) |   "
    puts "     '-|:. |-'    "
    puts "      \\::. /     "
    puts "      '::. .'     "
    puts "        ) (       "
    puts "      _.' '._     "
    puts "     '-------'    "
        
end

def avisa_errou_palavra
    puts "Que pena... Errou!"
end 

def avisa_pontos(pontos_ate_agora)
    puts "Você ganhou #{pontos_ate_agora} pontos."
end

def avisa_pontos_totais(pontos)
    puts "Você possui #{pontos} pontos."
end

def avisa_campeao_atual(dados)
    puts "Nosso campeão atual é #{dados[0]} com #{dados[1]} pontos."
end

def pede_um_chute
    puts "Entre com a letra ou palavra"
    chute = gets.strip.downcase
    puts "Será que você acertou? Você chutou #{chute}."
    chute
end 

def cabecalho_de_tentativa(chutes, erros, mascara)
    puts "\n\n\n\n"
    desenha_forca(erros)
    puts "Palavra Secreta: #{mascara}"
    puts "Erros até o momento: #{erros}"
    puts "Chutes até o momento: #{chutes}"
end

def perdeu(palavra_secreta)
puts
puts "Puxa, você perdeu!"
puts "A palavra era **#{palavra_secreta}**"
puts
puts "      _______________        "
puts "     /               \\      "
puts "    /                 \\     "
puts "  //                   \\/\\ "
puts "  \\|   XXXX      XXXX  | /  "
puts "   |   XXXX      XXXX  |/    "
puts "   |   XXX        XXX  |     "
puts "   |                   |     "
puts "  \\__      XXX       __/    "
puts "    |\\     XXX      /|      "
puts "    | |             | |      "
puts "    |  I I I I I I I  |      "
puts "    |   I I I I I I   |      "
puts "    \\_              _/      "
puts "     \\_           _/        "
puts "       \\______   _/         "

end
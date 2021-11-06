require_relative "ui"
require_relative "rank"

def pede_um_chute_valido(chutes, erros, mascara)
    cabecalho_de_tentativa(chutes, erros, mascara)
    loop do 
        chute = pede_um_chute
        if chutes.include? chute
            avisa_chute_repetido(chute)
        else
            return chute
        end
    end
end 

def verifica_se_esta_vazio(palavra_secreta, todas_as_palavras)
    while palavra_secreta.to_s.length == 0
        palavra_secreta = gerar_palavra_secreta(todas_as_palavras)
        #puts palavra_secreta
    end
    palavra_secreta
end

def gerar_palavra_secreta(todas_as_palavras)
    numero_aleatorio = rand(todas_as_palavras.size)
    palavra_secreta = todas_as_palavras[numero_aleatorio].strip
end

def sorteia_palavra_secreta
    avisa_escolhendo_palavra
    texto = File.read("dicionario.txt")
    todas_as_palavras = texto.split("\n")
    palavra_secreta = verifica_se_esta_vazio(palavra_secreta, todas_as_palavras)

    avisa_palavra_escolhida(palavra_secreta)
end


def palavra_mascarada(chutes, palavra_secreta, mascara)
    chute = chutes[-1].to_s 
 
    i = 0

    mascara.chars.each do
        if palavra_secreta[i] == chute 
            mascara[i] = chute
        elsif !palavra_secreta[i].match(/^[[:alpha:]]+$/)
            mascara[i] = palavra_secreta[i]
        end
        i+=1
    end

    mascara
end

#main loop
def joga(nome)
    palavra_secreta = sorteia_palavra_secreta
    mascara = "_" * palavra_secreta.length

    erros = 0
    chutes = []
    pontos_ate_agora = 0

    while erros < 5
        mascara = palavra_mascarada(chutes, palavra_secreta, mascara)
        chute = pede_um_chute_valido(chutes, erros, mascara)
        chutes << chute

        chutou_uma_unica_letra = chute.size == 1          
        if chutou_uma_unica_letra
            total_encontrado = palavra_secreta.count(chute[0])
            if total_encontrado == 0
                avisa_letra_nao_encontrada
                erros+=1
            else
                avisa_letra_encontrada(total_encontrado)
            end
        else
            acertou = chute == palavra_secreta
            if acertou
                avisa_acertou_palavra
                pontos_ate_agora +=100
                break
            else
                avisa_errou_palavra
                pontos_ate_agora -=30
                erros+=1
            end
        end
    end
    
    if erros >= 5
        perdeu(palavra_secreta)
    else
        @vezes_acertou+=1
        puts "Você acertou #{@vezes_acertou} #{@vezes_acertou>1? "vezes" : "vez"}."
    end 
    #avisa_pontos(pontos_ate_agora)
    pontos_ate_agora
end

#game loop def
def jogo_da_forca
    nome = da_boas_vindas
    pontos_totais = 0
    @vezes_acertou = 0  
    @rank = "rank.txt"

    unless le_rank[0] == nil 
        avisa_campeao_atual(le_rank)
    end

    loop do 
        pontos_totais += joga(nome)
        #game loop end
        avisa_pontos_totais(pontos_totais)
        if le_rank[1].to_i < pontos_totais
            if le_rank[0] != nome
                puts "Parabéns! Você é o novo campeão."
            else 
                puts "Parabéns! Você bateu seu record."
            end
            salva_rank(nome, pontos_totais)
        end

        break if nao_quer_jogar?
    end
end


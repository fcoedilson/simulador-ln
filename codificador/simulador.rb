#!/usr/bin/env ruby

namefile = nil
lnfile = nil


# processa o arquivo retirando os espaços em branco e comentários
# gera arquivo temporário codificação
def processaArquivo(file)
	if File::exists?( "#{file}" )
		puts "Lendo arquivo #{file} ..."
		lnfile = File.open("#{file}") 
		newfile = File.new("#{file}.tmp","r+")
		lines = IO.readlines("#{file}")
		lines.each { |line|
			if line.to_s.strip!.length > 0
				unless line.to_s.start_with?("#")
					newfile.write("#{line}\n")
				end
			end
		 }
		#puts lines
	else 
		puts "ERRO: arquivo #{file} não encontrado"
	end
end

# faz a codificação do arquivo temporário gerado
# gera arquivo .l, para executar usando o simulador ln
def codificaArquivo(file)
	
	alfabeto = nil
	# abrindo e lendo arquivo temporários
	puts "Procurando arquivo #{file} ..."
	tmpfile = File.open("#{file}")
	lines = IO.readlines(file)

	# identifica e as variáveis definidas no programa
	# as variáveis estão na primeira linha

	# separa o alfabeto das variáveis
	str1 = lines[0].split(";")
	alfabeto = str1[0].sub("{","")
	alfabeto = alfabeto.sub("}","")
	simbolos = alfabeto.split(",")
	base = simbolos.length
	##puts "base #{base}"
	
	# separando variáveis
	vars = str1[1].split(",")
	puts vars
	
	##base = vars[0].match(/=([0-9])/) # identifica a base
	##base = base.to_s.gsub("=", "")

	# identifica o valor das variáveis informada
	# codifica cada variável
	i = 1;
	newline = ""
	
	vars.each { |v|
		codvar = 0
		
			tmp = v.match(/=([a-z]+)/)
			tmp = tmp.to_s.sub("=","")
			codvar = varcodigo(base.to_s, tmp)
			newline = newline + "x#{i}=#{codvar}, "
			#puts newline
	
		i=i+1
	}
	
	newline = newline.sub(0, newline.length-2)
	
	puts newline

	# gerando o arquivo de saída em para o simulador-l
	newfilelname = file
	newfilelname = newfilelname.sub(".tmp", "")
	newfilelname = newfilelname.sub(".ln", "")
	newfilel = File.new("#{newfilelname}.l","w+")
	
	lines.each { |l|
		newfilel.write("#{l}\n")
	}

end

# codificação da variável de acordo com a base
def varcodigo(b, str)
	valor = 0
	m = Hash["a"=>1, "b"=> 2, "c"=> 3, "d"=> 4, "e"=> 5]
	k = 0
	l = str.length
		str.each_char{ |c| 
		valor =  valor + m[c]*(b.to_i)^(l-k)
		#puts valor
		k=k+1
	}
	return valor
end

# parte principal do programa
# verifica se um arquivo foi passado como parâmetro
if ARGV.length < 1
	puts "Informe o nome do arquivo. Exemplo (/home/edilson/concatena.ln) :"
else
	if(ARGV.length > 1)
		puts "ERRO: Informe apenas um arquivo por vez ..."
	else
	    # arquivo passado por ARGV[0]
	    lnfile = ARGV[0]
		processaArquivo(lnfile)
		codificaArquivo(lnfile+".tmp")
	end

end



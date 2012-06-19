#!/usr/bin/env ruby

namefile = nil
lnfile = nil

# processa o arquivo retirando os espaços em branco e comentários
# gera arquivo temporário
def processaArquivo(file)
	if File::exists?( "#{file}" )
		puts "Lendo arquivo #{file} ..."
		lnfile = File.open("#{file}") 
		newfile = File.new("#{file}.tmp","r+")
		lines = IO.readlines("#{file}")
		lines.each { 
			|line|
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

# realiza a condificação à do arquivo temporário gerado
def codificaArquivo(file)

	puts "Procurando arquivo #{file}"
	tmpfile = File.open("#{file}")
	lines = IO.readlines(file)

	puts "total de linhas: #{lines.length}"
	# identifica o alfabeto
	lines.each { |line|

		if line.match(/(alfabeto=)/)
			puts line.match(/(alfabeto=)/)
		else
			#puts "Informe o alfabeto"
		end
	}
end


#def codificaString(w, alfabeto)
#	w.each_char {|c| puts c}
#end


if ARGV.length < 1
	puts "Informe o nome do arquivo. Exemplo (/home/edilson/concatena.ln) :"
else

	if(ARGV.length > 1)
		puts "ERRO: Informe apenas um arquivo por vez ..."
	else
	    lnfile = ARGV[0]
		processaArquivo(lnfile)
		codificaArquivo(lnfile+".tmp")
	end

end


#def regexLetterNumbers(str)
#	if str.match(/^\w{8,15}$/ )
#	  puts "String aceita!"
#	end
#end


#def regexFone(fone)
#	fone =~ /[(]\d{2}[)]\s*\d{4}-\d{4}/
#end


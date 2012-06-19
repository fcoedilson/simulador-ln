#!/usr/bin/env ruby

namefile = nil
lnfile = nil

def processaArquivo(file)
	if File::exists?( "#{file}" )
		puts "Lendo arquivo #{file} ..."
		lnfile = File.open("#{file}") 
		newfile = File.new("#{file}.tmp","w+")
		#newfile.chmod()
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

def codificaArquivo(file)
	## o arquivo file não tem comentários
	puts "Procurando arquivo #{file}"
	tmpfile = File.open("#{file}")
	
	lines = IO.readlines(file)
	
	p = /'alfabeto'/.match(lines[0])
	puts "dasd" + p
	lines.each { |line|
		
	}
end

def codificaString(w, alfabeto)
	w.each_char {|c| puts c}
end

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




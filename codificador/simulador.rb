#!/usr/bin/env ruby

namefile = nil
lnfile = nil

if ARGV.length < 1

	puts "Informe o nome do arquivo. Exemplo (/home/edilson/concatena.ln) :"
	#namefile = gets

else

	if(ARGV.length > 1)

		puts "ERRO: Informe apenas um arquivo por vez ..."

	else

		namefile = ARGV[0]

		puts "Procurando arquivo  #{namefile} ..." 
		if File::exists?( "#{namefile}" )

			puts "Lendo arquivo  #{namefile} ..."
			lnfile = File.open("#{namefile}") 
			content = lnfile.sysread(200)
			puts content

		else 

			puts "ERRO: arquivo #{namefile} não encontrado"

		end
	end

end

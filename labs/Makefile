# Comando do compilador Java
JAVAC=javac

# Comando da JVM
JAVA=java

# ROOT é a raiz do workspace do projeto (diretório pai de labs)
ROOT=$(abspath $(CURDIR)/..)

# CURDIR = /home/pedro_boa_noite/Compiladores/labs

# $(CURDIR)/..
# Isso significa “a pasta pai de labs”:
# /home/pedro_boa_noite/Compiladores/labs/..

# abspath
# A função abspath transforma esse caminho em absoluto e normalizado, removendo o ..:
# abspath(/home/pedro_boa_noite/Compiladores/labs/..) = /home/pedro_boa_noite/Compiladores

# Caminho para o JAR do ANTLR em labs/tools
ANTLR_PATH=$(ROOT)/tools/antlr-4.13.2-complete.jar

# Opção de configuração do CLASSPATH para o ambiente Java
CLASS_PATH_OPTION=-cp .:$(ANTLR_PATH)

# Configuração do comando de compilação do ANTLR
ANTLR4=$(JAVA) -jar $(ANTLR_PATH)

# Configuração do ambiente de teste do ANTLR
GRUN=$(JAVA) $(CLASS_PATH_OPTION) org.antlr.v4.gui.TestRig

# Nome da gram´atica
GRAMMAR_NAME=Exemple01

# Diret´orio para aonde v˜ao os arquivos gerados
GEN_PATH=lexer

# Executa o ANTLR e o compilador Java
all: antlr javac
	@echo "Done."

# Executa o ANTLR para compilar a gram´atica
antlr: $(GRAMMAR_NAME).g
	$(ANTLR4) -o $(GEN_PATH) $(GRAMMAR_NAME).g

# Executa o javac para compilar os arquivos gerados
javac:
	$(JAVAC) $(CLASS_PATH_OPTION) $(GEN_PATH)/*.java

# Executa o lexer. Comando: $ make run FILE=arquivo_de_teste
run:
	cd $(GEN_PATH) && $(GRUN) $(GRAMMAR_NAME) tokens -tokens $(FILE)

# Remove os arquivos gerados pelo ANTLR
clean:
	@rm -rf $(GEN_PATH)

package pacote;

import java.util.ArrayList;


public class Pessoa {
    String nome;
    String telefone;
    int idade;

    public Pessoa(String nome, String telefone, int idade) {
        this.nome = nome;
        this.telefone = telefone;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    @Override
    public String toString() {
        return  "Nome:" + nome
                + "<br>Telefone:" + telefone + "<br>Idade:" + idade;
    }
    
}

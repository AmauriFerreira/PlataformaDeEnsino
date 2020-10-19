package br.com.jdbc.Modelo;

import java.sql.SQLException;

public class LoginUsuario {
	
	 private String Nome;
	 private String Email;
	 private String senha;
	 
	 

	    public String getNome() {
	        return Nome;
	    }
	    

	    public void setNome(String nome) {
	        this.Nome = nome;
	    }
	 

	    public String getEmail() {
	        return Email;
	    }
	    

	    public void setEmail(String email) {
	        this.Email = email;
	    }

	    public String getSenha() {
	        return senha;
	    }

	    public void setSenha(String senha) {
	        this.senha = senha;
	    }

	    public boolean ehIgual(String email, String senha) {
	        try {if(!this.Email.equals(email)) {
	            return false;
	        }

	        if(!this.senha.equals(senha)) {
	            return false;
	        }
	        } catch (NullPointerException e) {
				return false;
			}

	        return true;
	    }

		

		

}

package bean;

import javax.servlet.http.HttpServletRequest;

public class Solicitud {
    private String first_name;
    private String last_name;
    private String email;
    private String genero;
    private String[] langs;
    private String[] idiomas;
    private String comentarios;

    public Solicitud(HttpServletRequest req){
        this.first_name = req.getParameter("first_name");
        this.last_name = req.getParameter("last_name");
        this.email = req.getParameter("email");
        this.genero = req.getParameter("genero");
        this.langs = req.getParameterValues("langs");
        this.idiomas = req.getParameterValues("idiomas");
        this.comentarios = req.getParameter("comentarios");
    }

    public String getFirstName() {
        return first_name;
    }

    public String getLastName() {
        return last_name;
    }

    public String getEmail() {
        return email;
    }

    public String getGenero() {
        return genero;
    }

    public String[] getLangs() {
        return langs;
    }

    public String[] getIdiomas() {
        return idiomas;
    }

    public String getComentarios() {
        return comentarios;
    }
}

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form action="/demo/gracias" class="col s6 offset-s3" method="post" accept-charset="utf-8">
    <div class="row">
        <div class="input-field col s12">
            <input placeholder="" name="first_name" id="first_name" type="text" class="validate">
            <label for="first_name">Nombre</label>
        </div>

        <div class="input-field col s12">
            <input placeholder="" id="last_name" name="last_name" type="text" class="validate">
            <label for="last_name">Apellidos</label>
        </div>

        <div class="input-field col s12">
            <input placeholder="" id="email"  name="email" type="text" class="validate">
            <label for="email">Email</label>
        </div>

        <div class="input-field col s12">
            <select name="genero">
                <option value="" selected>Seleccione una opción</option>
                <option value="Hombre">Hombre</option>
                <option value="Mujer">Mujer</option>
                <option value="Otro">Otro</option>
            </select>
            <label>El género que representa:</label>
        </div>

        <div class="col s12">
            <label>Selecciona lo que sabes:</label>
            <div class="box-checkbox">
                <label>
                    <input type="checkbox" name="langs" value="Java" /><span>Java</span>
                </label>
                <label>
                    <input type="checkbox" name="langs" value="C/C++" /><span>C/C++</span>
                </label>
                <label>
                    <input type="checkbox" name="langs" value="Basic" /><span>Basic</span>
                </label>
                <label>
                    <input type="checkbox" name="langs" value="Html" /><span>Html</span>
                </label>
            </div>
        </div>

        <div class="input-field col s12" style="margin-top: 2rem;">
            <select name="idiomas" multiple>
                <option value="Espanol">Español</option>
                <option value="Ingles">Inglés</option>
                <option value="Frances">Francés</option>
                <option value="Aleman">Alemán</option>
            </select>
            <label>Seleccione los idiomas que comprendes:</label>
        </div>

        <div class="input-field col s12">
            <textarea id="textarea" name="comentarios" class="materialize-textarea"></textarea>
            <label for="textarea">Comentarios Adicionales</label>
        </div>

        <div class="col s12 center-align">
            <button class="btn waves-effect waves-light" type="submit" name="action">
                Enviar solicitud
            </button>
        </div>
    </div>
</form>
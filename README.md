# devise

gema de autenticacion de usuarios. 


# guia

en gemfile  agregar :
```
gem 'devise' 
bundle install
```

comando a PREPARAR DEVISE :
```
rails generate devise:install
```

al instalar esta gema recomienda :
1 agregar un default host para el mailer
2 asignar una ruta base de la aplicacion  , echo en controller home
3 agregar mensajes de alerta al layout    , agregado en el html application
4 crear vistas con el comando -> rails generate devise views  , ejecutado para ver mejor sus archivos


comando para crear Modelo asociado al Devise :
```
rails generate devise User   // modelo vinculado a devise por eso singular
rails db:migrate
```
antes de migrar podemos : 
se muestran muchos modulos opcionales en el schema por si se quiere mas  pero luego hay que agregarlos al modelo para que funcionen los modulos activados en el schema.

en las rutas se agrego :
devise_for : users   // encargado de la ruta

ahora podemos ingrsar a :
localhost:3000/users/sign_up
localhost:3000/users/sign_in


cerrando session

```
<%= link_to 'registro sesion' , new_user_registration_path  , method: :get %>
<%= link_to 'cerrar sesion' , destroy_user_session_path  , method: :delete %>
<%= link_to 'iniciar sesion' , new_user_session_path  , method: :get %>
user_signed_in?
current_user
```



rutas protegidas para tener una session en todas las paginas de la aplicacion
en  home_controller 
              before_action :authenticate_user!

las posibilidades de esto?
after_action :authenticate_user!   // antes debes estar autenticado
before_action :authenticate_user!  , only: [:index]  // antes -> solo ves index
after_action :authenticate_user!  , :except: [:index]// despues-> todo menos index
# fin :)




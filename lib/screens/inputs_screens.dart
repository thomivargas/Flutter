import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'thomas',
      'last_name': 'vargas',
      'email': 'thvargas23@gmail.com',
      'password': '123321',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Iniciar sesion'),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  hintText: 'Ingresar nombre del cliente',
                  labelText: 'Nombre',
                  icon: Icons.group,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Ingresar apellido del cliente',
                  labelText: 'Apellido',
                  icon: Icons.add_call,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Ingresar email',
                  labelText: 'Email',
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Ingresar password',
                  labelText: 'Password',
                  icon: Icons.password,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.admin_panel_settings)),
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'Usuario', child: Text('Usuario'))
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Admin';
                    }),
                const SizedBox(height: 30),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        'Guardar',
                        style: TextStyle(color: Colors.white),
                      ))),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      return;
                    }
                  },
                )
              ],
            ),
          ),
        )));
  }
}

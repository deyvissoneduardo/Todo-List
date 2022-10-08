import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: context.theme.primaryColor.withAlpha(70),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://i.imgur.com/aKxC31c.png'),
                  radius: 30,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Nome não informado',
                      style: context.textTheme.subtitle2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Altera Nome'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text('Alterar Nome'),
                      content: TextField(
                        onChanged: (value) {},
                      ),
                      actions: [
                        TextButton(
                          child: const Text(
                            'Cancelar',
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        TextButton(
                          child: const Text('Alterar'),
                          onPressed: () {},
                        )
                      ],
                    );
                  });
            },
          ),
          ListTile(
            title: const Text('Sair do App'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

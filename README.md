# Learn ansible

## To create everything and test it from scratch

Remember to update correct port for ssh host on ansible-hosts

```bash
$ ./bootstrap
```

## Ansible vault pass

```bash
test
```

Or we can config vault_password_file in `ansible.cfg`. Sth like this:

```bash
[defaults]
vault_password_file = ~/path/to/your/secret
```

## Ansible cheatsheet

Step

```bash
$ ansible-playbook site.yml --step
```

List-tasks

```bash
$ ansible-playbook site.yml --list-tasks
```

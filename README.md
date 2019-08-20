# Learn ansible

## To create everything and test it from scratch

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

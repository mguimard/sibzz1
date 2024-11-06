
from ansible.module_utils.basic import AnsibleModule

def main():
    module = AnsibleModule(
        argument_spec=dict(
            message=dict(type='str', default='valeur par défaut'),
        ),
        supports_check_mode=True
    )

    if module.params['message'] == 'crash':
        raise Exception("boom")

    result = dict(
        reponse=module.params['message'],
    )

    module.exit_json(**result)


if __name__ == '__main__':
    main()
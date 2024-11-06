def addition(a, b):
    return a + b


class FilterModule(object):
    """ Ansible core jinja2 filters """

    def filters(self):
        return {
            'add': addition
        }
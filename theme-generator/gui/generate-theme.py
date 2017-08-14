
import os, sys, json, jinja2

class PropertyBag(object):
    def __init__(self, **kwargs):
        for key, value in kwargs.items():
            setattr(self, key, value)

'''

Valid Styles:
    "NONE",
    "bold",
    "underline",
    "undercurl",
    "reverse",
    "italic",
    "standout"

'''

'''

@TODO: status-line theme
@TODO: airline theme
@TODO: "@TODO"

'''

theme = {
    'name': 'FloralGust',
    'author': 'Cameron Eure',
    'description': 'low-saturation, with emphasis on spring colors',
    'background': 'dark',
    'highlights': [
        PropertyBag(name='Normal',        fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='NonText',       fg='orange_base',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Comment',       fg='blue_base',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Constant',      fg='green_base',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Error',         fg='white',    bg='orange_base',    style='NONE'),
        PropertyBag(name='Identifier',    fg='rose_base',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Ignore',        fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='PreProc',       fg='wheat_alt',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Special',       fg='green_base',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Statement',     fg='green_base',    bg='bg_base',    style='NONE'),
        PropertyBag(name='String',        fg='wheat_base',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Number',        fg='wheat_base',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Todo',          fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Type',          fg='olive',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Underlined',    fg='white',    bg='bg_base',    style='underline'),
        PropertyBag(name='StatusLine',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='StatusLineNC',  fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='VertSplit',     fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='TabLine',       fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='TabLineFill',   fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='TabLineSel',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Title',         fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='CursorLine',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='LineNr',        fg='green_alt',    bg='bg_base',    style='NONE'),
        PropertyBag(name='CursorLineNr',  fg='green_alt',    bg='bg_base',    style='bold'),
        PropertyBag(name='helpLeadBlank', fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='helpNormal',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Visual',        fg='blue_alt2',    bg='blue_alt',    style='NONE'),
        PropertyBag(name='VisualNOS',     fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Pmenu',         fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='PmenuSbar',     fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='PmenuSel',      fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='PmenuThumb',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='FoldColumn',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Folded',        fg='green_base',    bg='bg_base',    style='NONE'),
        PropertyBag(name='WildMenu',      fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='SpecialKey',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='DiffAdd',       fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='DiffChange',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='DiffDelete',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='DiffText',      fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='IncSearch',     fg='bg_base',    bg='wheat_base',    style='NONE'),
        PropertyBag(name='Search',        fg='bg_base',    bg='wheat_base',    style='NONE'),
        PropertyBag(name='Directory',     fg='green_base',    bg='bg_base',    style='NONE'),
        PropertyBag(name='MatchParen',    fg='white',    bg='orange_base',    style='bold'),
        PropertyBag(name='SpellBad',      fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='SpellCap',      fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='SpellLocal',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='SpellRare',     fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='ColorColumn',   fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='signColumn',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='ErrorMsg',      fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='ModeMsg',       fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='MoreMsg',       fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Question',      fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='WarningMsg',    fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='Cursor',        fg='white',    bg='bg_base',    style='NONE'),
        PropertyBag(name='CursorColumn',  fg='white',    bg='bg_base',    style='NONE')
    ]
}

class ColorLookup(object):
    def __init__(self, colors):
        self.lookup_table = {}
        for color in colors:
            self.lookup_table[color['name']] = color

    def __getitem__(self, name):
        return self.lookup_table[name]

    def keys(self):
        return self.lookup_table.keys()

def build_theme(theme):
    colors = ColorLookup([{
        'name': 'white',
        'xterm_num': '2',
        'hex': '#F1F8EF'
    }, {
        'name': 'bg_base',
        'xterm_num': '0',
        'hex': '#0F0F0A'
    }, {
        'name': 'wheat_base',
        'xterm_num': '0',
        'hex': '#FCFCA8'
    }, {
        'name': 'wheat_alt',
        'xterm_num': '0',
        'hex': '#ADA258'
    }, {
        'name': 'green_base',
        'xterm_num': '0',
        'hex': '#21C795'
    }, {
        'name': 'green_alt',
        'xterm_num': '0',
        'hex': '#84C7C4'
    }, {
        'name': 'olive',
        'xterm_num': '0',
        'hex': '#F7FF81'
    }, {
        'name': 'rose_base',
        'xterm_num': '0',
        'hex': '#FFB3DE'
    }, {
        'name': 'blue_base',
        'xterm_num': '0',
        'hex': '#02A5DE'
    }, {
        'name': 'blue_alt',
        'xterm_num': '0',
        'hex': '#0C2C61'
    }, {
        'name': 'blue_alt2',
        'xterm_num': '0',
        'hex': '#C8DDF2'
    }, {
        'name': 'orange_base',
        'xterm_num': '0',
        'hex': '#FF4F56'
    }])

    for props in theme['highlights']:
        bg_name, fg_name = props.bg, props.fg
        bg, fg = colors[bg_name], colors[fg_name]

        props.ctermbg = bg['xterm_num']
        props.ctermfg = fg['xterm_num']
        props.guibg = bg['hex']
        props.guifg = fg['hex']

    return theme

def main():
    env = jinja2.Environment(
        loader=jinja2.FileSystemLoader('./')
    )

    build_theme(theme)

    template = env.get_template('theme-template.vim')
    print(template.render(**theme))

    sys.exit(0)

if __name__ == '__main__':
    main()


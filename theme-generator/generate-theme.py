
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
        PropertyBag(name='Normal',        fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='NonText',       fg='OrangeRed1',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Comment',       fg='DeepSkyBlue4',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Constant',      fg='Aquamarine3',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Error',         fg='Grey93',    bg='Red1',    style='NONE'),
        PropertyBag(name='Identifier',    fg='MistyRose3',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Ignore',        fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='PreProc',       fg='DarkKhaki',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Special',       fg='Aquamarine3',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Statement',     fg='Aquamarine3',    bg='Grey3',    style='NONE'),
        PropertyBag(name='String',        fg='Wheat1',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Number',        fg='Wheat1',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Todo',          fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Type',          fg='DarkOliveGreen6',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Underlined',    fg='Grey93',    bg='Grey3',    style='underline'),
        PropertyBag(name='StatusLine',    fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='StatusLineNC',  fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='VertSplit',     fg='DeepSkyBlue2',    bg='Grey3',    style='NONE'),
        PropertyBag(name='TabLine',       fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='TabLineFill',   fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='TabLineSel',    fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Title',         fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='CursorLine',    fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='LineNr',        fg='DeepSkyBlue2',    bg='Grey3',    style='NONE'),
        PropertyBag(name='CursorLineNr',  fg='DeepSkyBlue2',    bg='Grey3',    style='bold'),
        PropertyBag(name='helpLeadBlank', fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='helpNormal',    fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Visual',        fg='LightCyan1',    bg='DarkBlue',    style='NONE'),
        PropertyBag(name='VisualNOS',     fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Pmenu',         fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='PmenuSbar',     fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='PmenuSel',      fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='PmenuThumb',    fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='FoldColumn',    fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Folded',        fg='Aquamarine3',    bg='Grey3',    style='NONE'),
        PropertyBag(name='WildMenu',      fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='SpecialKey',    fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='DiffAdd',       fg='Grey93',    bg='DeepSkyBlue1',    style='NONE'),
        PropertyBag(name='DiffChange',    fg='Grey3',    bg='SteelBlue4',    style='NONE'),
        PropertyBag(name='DiffDelete',    fg='Grey93',    bg='DeepPink2',    style='NONE'),
        PropertyBag(name='DiffText',      fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='IncSearch',     fg='Grey93',    bg='DeepSkyBlue2',    style='NONE'),
        PropertyBag(name='Search',        fg='Grey93',    bg='DeepSkyBlue2',    style='NONE'),
        PropertyBag(name='Directory',     fg='Aquamarine3',    bg='Grey3',    style='NONE'),
        PropertyBag(name='MatchParen',    fg='Grey93',    bg='Red1',    style='bold'),
        PropertyBag(name='SpellBad',      fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='SpellCap',      fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='SpellLocal',    fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='SpellRare',     fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='ColorColumn',   fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='signColumn',    fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='ErrorMsg',      fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='ModeMsg',       fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='MoreMsg',       fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Question',      fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='WarningMsg',    fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='Cursor',        fg='Grey93',    bg='Grey3',    style='NONE'),
        PropertyBag(name='CursorColumn',  fg='Grey93',    bg='Grey3',    style='NONE')
    ]
}

class ColorLookup(object):
    def __init__(self):
        fp = open('./xterm-colors.json', 'r')
        colors = json.loads(fp.read())
        fp.close()

        self.lookup_table = {}
        for color in colors:
            self.lookup_table[color['xterm_name']] = color

    def __getitem__(self, name):
        return self.lookup_table[name]

    def keys(self):
        return self.lookup_table.keys()

def build_theme(theme):
    colors = ColorLookup()

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


#!/usr/bin/python

import sys
from clingo import clingo_main, Configuration


BORDER = '+-------+-------+-------+'


def print_board(model):
    board = [[' ' for x in range(0, 9)] for y in range(0, 9)]
    for atom in model.symbols(atoms=True):
        if atom.name == 'placed' and len(atom.arguments) == 3:
            x, y, n = (n.number for n in atom.arguments)
            board[y-1][x-1] = str(n)
    for y in range(0, 9):
        if y % 3 == 0:
            print(BORDER)
        row = '| '
        for x in range(0, 9):
            if x > 0:
                if x % 3 == 0:
                    row += ' | '
                else:
                    row += ' '
            row += board[y][x]
        row += ' |'
        print(row)
    print(BORDER)


def get_unique_model(models):
    it = iter(models)
    try:
        first_model = next(it)
        try:
            next(it)
            print('multiple solutions')
            return None
        except StopIteration:
            return first_model
    except StopIteration:
        print('no solution')
        return None


class Application:
    def main(self, prg, files):
        # Load the initially provided files.
        for f in files:
            prg.load(f)

        # Look for any `rules/1` atoms and load the corresponding rules.
        prg.ground([('base', [])])
        for atom in prg.symbolic_atoms.by_signature('rules', 1):
            rule = atom.symbol.arguments[0].name
            if rule == 'standard':
                prg.load('rules/box.lp')
            else:
                path = 'rules/{}.lp'.format(rule)
                print('Loading', path)
                prg.load(path)

        # Go ahead with the solve.
        prg.ground([('base', [])])
        models = prg.solve(yield_=True)

        # Find the one unique model if possible and print it.
        model = get_unique_model(models)
        if model:
            print_board(model)


sys.exit(int(clingo_main(Application(), sys.argv[1:])))

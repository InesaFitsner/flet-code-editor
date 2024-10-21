import flet as ft
from controls.code_editor import CodeEditor


def main(page: ft.Page):
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER

    page.add(CodeEditor(
        value = """
import flet as ft

from controls.code_editor import CodeEditor

def main(page: ft.Page):
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER

    page.add(CodeEditor())

ft.app(main)""", read_only=True
))


ft.app(main)
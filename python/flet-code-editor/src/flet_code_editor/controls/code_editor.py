from typing import Optional
from flet_core.control import Control


class CodeEditor(Control):
    """
    CodeEditor Control.
    """

    def __init__(self, value: Optional[str] = None,):
        Control.__init__(self)

        self.value = value
    
    def _get_control_name(self):
        return "code_editor"
    
    # value
    @property
    def value(self) -> Optional[str]:
        return self._get_attr("value", def_value="")

    @value.setter
    def value(self, value: Optional[str]):
        self._set_attr("value", value)
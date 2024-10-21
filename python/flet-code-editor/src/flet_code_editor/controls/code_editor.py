from typing import Optional
from flet_core.control import Control


class CodeEditor(Control):
    """
    CodeEditor Control.
    """

    def __init__(self, value: Optional[str] = None, read_only: Optional[bool] = None,):
        Control.__init__(self)

        self.value = value
        self.read_only = read_only
    
    def _get_control_name(self):
        return "code_editor"
    
    # value
    @property
    def value(self) -> Optional[str]:
        return self._get_attr("value", def_value="")

    @value.setter
    def value(self, value: Optional[str]):
        self._set_attr("value", value)
    
    # read_only
    @property
    def read_only(self) -> Optional[bool]:
        return self._get_attr("readOnly", data_type="bool")

    @read_only.setter
    def read_only(self, value: Optional[bool]):
        self._set_attr("readOnly", value)
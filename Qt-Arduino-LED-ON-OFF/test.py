import sys,serial
from PyQt4 import QtCore,QtGui
from test_ui import Ui_MainWindow
awrite = serial.Serial('/dev/ttyACM0',9600)

class TestApp(QtGui.QMainWindow):
    def __init__(self):
        QtGui.QMainWindow.__init__(self)
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.connect(self.ui.pushButton, QtCore.SIGNAL("clicked()"),on)
        self.connect(self.ui.pushButton_2, QtCore.SIGNAL("clicked()"),off)

def on():
    awrite.write('1')

def off():
    awrite.write('0')


if __name__ == "__main__":
    app = QtGui.QApplication(sys.argv)
    window = TestApp()
    window.show()
    sys.exit(app.exec_())


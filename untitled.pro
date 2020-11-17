QT += quick
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc \
    resource.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    assets/background.png \
    assets/background@2x.png \
    assets/box_blue.png \
    assets/box_blue@2x.png \
    assets/box_green.png \
    assets/box_green@2x.png \
    assets/box_red.png \
    assets/planet.png \
    assets/rocket2.png \
    assets/ufo_background.png \
    assets/soccer_ball_copy.png \
    curves/InBack.png \
    curves/InBounce.png \
    curves/InCirc.png \
    curves/InCubic.png \
    curves/InElastic.png \
    curves/InOutQuad.png \
    curves/InQuad.png \
    curves/InSine.png \
    curves/Linear.png \
    curves/OutQuad.png \
    curves/InBack.png \
    curves/InBounce.png \
    curves/InCirc.png \
    curves/InCubic.png \
    curves/InElastic.png \
    curves/InOutQuad.png \
    curves/InQuad.png \
    curves/InSine.png \
    curves/Linear.png \
    curves/OutQuad.png

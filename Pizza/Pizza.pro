QT += quick

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

OTHER_FILES += \
    main.qml \
    Main1.qml \
    Entance.qml \
    Register.qml \
    Enter.qml \
    MainPage.qml \
    images/pizzalogo.png \
    Pepperoni.qml \
    images/drink1.png \
    images/piz1.png \
    images/piz2.png \
    images/piz3.png \
    images/piz4.png \
    images/piz5.png \
    images/piz6.png \
    images/pizza.png \
    Pizza.qml \
    pizzalogo.png \
    Error_404.qml \
    Non_existent.qml \
    images/menu1.png \
    images/menu2.png \
    images/pizza_icon.png \
    images/map.jpg \
    images/piz0.png

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Cheese.qml \
    Mushroom.qml

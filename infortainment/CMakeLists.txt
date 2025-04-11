cmake_minimum_required(VERSION 3.16)

project(infortainment VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 COMPONENTS Core Quick Location Positioning)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appinfortainment
    main.cpp
)

qt_add_qml_module(appinfortainment
    URI infortainment
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES Bottom.qml
        QML_FILES Right.qml
        QML_FILES Left.qml
        RESOURCES Assets/lock.png
        RESOURCES Assets/car.png
        SOURCES system.h system.cpp
        RESOURCES Assets/unlockk.png
        RESOURCES Assets/caricon.png Assets/un.png
        RESOURCES Assets/caricc.png
        RESOURCES Assets/person.png
        RESOURCES Assets/search.png
        SOURCES controller.h controller.cpp
        QML_FILES Controllers.qml
        RESOURCES Assets/vollow.png Assets/volmid.png
        SOURCES audio.h audio.cpp
        RESOURCES Assets/mute.png
        QML_FILES AudioControl.qml
        RESOURCES Assets/newcar.jpg
        RESOURCES Assets/fan.svg
        RESOURCES Assets/inflow.png Assets/outflow.png Assets/seat.png
        RESOURCES Assets/seat1.png
        RESOURCES Assets/defrost.svg Assets/heater.svg
        RESOURCES Assets/music.svg
        RESOURCES Assets/cloud.png
        RESOURCES Assets/phone.svg
        RESOURCES Assets/battery.svg Assets/headlights.svg Assets/tirepressure.svg
        RESOURCES Assets/camera.svg Assets/CruiseSetting.svg Assets/microphone.svg Assets/minus.svg Assets/plus.svg Assets/power.svg Assets/SpeedLimit.svg Assets/steeringwheel.svg
        RESOURCES Assets/cars/dark/Group.png Assets/cars/dark/minus.svg Assets/cars/dark/plus.svg Assets/cars/dark/scale.svg Assets/cars/light/Group.png Assets/cars/light/minus.svg Assets/cars/light/plus.svg Assets/cars/light/scale.svg Assets/cars/Vector9.svg

        RESOURCES Assets/hood.png
        QML_FILES IconButton.qml
        RESOURCES Assets/power_dark.png Assets/trunk.png
        RESOURCES Assets/weather/64x64/day/113.png Assets/weather/64x64/day/116.png Assets/weather/64x64/day/119.png Assets/weather/64x64/day/122.png Assets/weather/64x64/day/143.png Assets/weather/64x64/day/176.png Assets/weather/64x64/day/179.png Assets/weather/64x64/day/182.png Assets/weather/64x64/day/185.png Assets/weather/64x64/day/200.png Assets/weather/64x64/day/227.png Assets/weather/64x64/day/230.png Assets/weather/64x64/day/248.png Assets/weather/64x64/day/260.png Assets/weather/64x64/day/263.png Assets/weather/64x64/day/266.png Assets/weather/64x64/day/281.png Assets/weather/64x64/day/284.png Assets/weather/64x64/day/293.png Assets/weather/64x64/day/296.png Assets/weather/64x64/day/299.png Assets/weather/64x64/day/302.png Assets/weather/64x64/day/305.png Assets/weather/64x64/day/308.png Assets/weather/64x64/day/311.png Assets/weather/64x64/day/314.png Assets/weather/64x64/day/317.png Assets/weather/64x64/day/320.png Assets/weather/64x64/day/323.png Assets/weather/64x64/day/326.png Assets/weather/64x64/day/329.png Assets/weather/64x64/day/332.png Assets/weather/64x64/day/335.png Assets/weather/64x64/day/338.png Assets/weather/64x64/day/350.png Assets/weather/64x64/day/353.png Assets/weather/64x64/day/356.png Assets/weather/64x64/day/359.png Assets/weather/64x64/day/362.png Assets/weather/64x64/day/365.png Assets/weather/64x64/day/368.png Assets/weather/64x64/day/371.png Assets/weather/64x64/day/374.png Assets/weather/64x64/day/377.png Assets/weather/64x64/day/386.png Assets/weather/64x64/day/389.png Assets/weather/64x64/day/392.png Assets/weather/64x64/day/395.png Assets/weather/64x64/night/113.png Assets/weather/64x64/night/116.png Assets/weather/64x64/night/119.png Assets/weather/64x64/night/122.png Assets/weather/64x64/night/143.png Assets/weather/64x64/night/176.png Assets/weather/64x64/night/179.png Assets/weather/64x64/night/182.png Assets/weather/64x64/night/185.png Assets/weather/64x64/night/200.png Assets/weather/64x64/night/227.png Assets/weather/64x64/night/230.png Assets/weather/64x64/night/248.png Assets/weather/64x64/night/260.png Assets/weather/64x64/night/263.png Assets/weather/64x64/night/266.png Assets/weather/64x64/night/281.png Assets/weather/64x64/night/284.png Assets/weather/64x64/night/293.png Assets/weather/64x64/night/296.png Assets/weather/64x64/night/299.png Assets/weather/64x64/night/302.png Assets/weather/64x64/night/305.png Assets/weather/64x64/night/308.png Assets/weather/64x64/night/311.png Assets/weather/64x64/night/314.png Assets/weather/64x64/night/317.png Assets/weather/64x64/night/320.png Assets/weather/64x64/night/323.png Assets/weather/64x64/night/326.png Assets/weather/64x64/night/329.png Assets/weather/64x64/night/332.png Assets/weather/64x64/night/335.png Assets/weather/64x64/night/338.png Assets/weather/64x64/night/350.png Assets/weather/64x64/night/353.png Assets/weather/64x64/night/356.png Assets/weather/64x64/night/359.png Assets/weather/64x64/night/362.png Assets/weather/64x64/night/365.png Assets/weather/64x64/night/368.png Assets/weather/64x64/night/371.png Assets/weather/64x64/night/374.png Assets/weather/64x64/night/377.png Assets/weather/64x64/night/386.png Assets/weather/64x64/night/389.png Assets/weather/64x64/night/392.png Assets/weather/64x64/night/395.png
        SOURCES wheather.h wheather.cpp
        RESOURCES Assets/music/heart.png Assets/music/playpause.svg Assets/music/spotify.svg Assets/music/track.svg Assets/music/volume.png Assets/Settings/light/display.svg Assets/Settings/light/gear.svg Assets/Settings/light/lights.svg Assets/Settings/light/lock.svg Assets/Settings/light/model3-icon-small.svg Assets/Settings/light/quickcontrols.svg Assets/Settings/light/safetyandsecurity.svg Assets/Settings/light/service.svg Assets/Settings/light/steering-wheel-small.svg Assets/Settings/display.svg Assets/Settings/gear.svg Assets/Settings/lights.svg Assets/Settings/lock.svg Assets/Settings/model3-icon-small.svg Assets/Settings/quickcontrols.svg Assets/Settings/safetyandsecurity.svg Assets/Settings/service.svg Assets/Settings/steering-wheel-small.svg
        QML_FILES Settings.qml/Autopilot.qml Settings.qml/Display.qml Settings.qml/Driving.qml Settings.qml/Light.qml Settings.qml/Lock.qml Settings.qml/QuickControls.qml Settings.qml/Saftey.qml Settings.qml/Security.qml
        QML_FILES Car.qml
        QML_FILES LabelButton.qml
        SOURCES themes.h themes.cpp
        QML_FILES IconButton2.qml
        QML_FILES Settings.qml/LabelButton.qml Settings.qml/LabelSelector.qml Settings.qml/ToggleButton.qml Settings.qml/TSlider.qml
        RESOURCES Assets/Settings/adjustments.svg Assets/Settings/headlights-small.svg Assets/Settings/increase.png Assets/Settings/mirror.svg Assets/Settings/Parking_Brake_Icon_dark.svg Assets/Settings/reduce.png
        RESOURCES Assets/music/track_backward.svg
        RESOURCES Assets/Settings/light/adjustments_dark.svg Assets/Settings/light/headlights-small_dark.svg Assets/Settings/light/increase.png Assets/Settings/light/mirror_dark.svg Assets/Settings/light/Parking_Brake_Icon.svg Assets/Settings/light/reduce.png
        QML_FILES Themes.qml
        RESOURCES Assets/custom/dark/Group.png Assets/custom/dark/minus.svg Assets/custom/dark/plus.svg Assets/custom/dark/scale.svg Assets/custom/light/Group.png Assets/custom/light/minus.svg Assets/custom/light/plus.svg Assets/custom/light/scale.svg Assets/custom/Vector.svg
        RESOURCES Assets/Cars/headlights.png Assets/Cars/Model3-1.svg Assets/Cars/model3-1_new.svg Assets/Cars/Model3-2.svg Assets/Cars/Model3-2_new.svg Assets/Cars/Model3.svg Assets/Cars/model3_new.svg
        RESOURCES Assets/Cars/Model3-2.png
        RESOURCES Assets/clouds.png
        RESOURCES Assets/music/heatwaves.jpg
        RESOURCES Assets/nav/compass.svg Assets/nav/map-zoom.svg
        RESOURCES Assets/nav/marker.svg
        RESOURCES Assets/nav/navigate-button.svg

)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appinfortainment PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appinfortainment
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appinfortainment
    PRIVATE Qt6::Quick Qt6::Location Qt6::Positioning
)

include(GNUInstallDirs)
install(TARGETS appinfortainment
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

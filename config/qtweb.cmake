function(AddQtWebSupport addonName)

    
    # execute_process(COMMAND node -p "require('@nodegui/qode').qtHome"
    #     WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    #     OUTPUT_VARIABLE QT_HOME_DIR
    # )
    # string(REPLACE "\n" "" QT_HOME_DIR "${QT_HOME_DIR}")
    # string(REPLACE "\"" "" QT_HOME_DIR "${QT_HOME_DIR}")

    set(QT_WEB_HOME_DIR "/Users/atulr/Tools/qt/5.13.0/clang_64")
    target_include_directories(${addonName} PRIVATE
        "${QT_WEB_HOME_DIR}/include"
        "${QT_WEB_HOME_DIR}/lib/QtWebEngineWidgets.framework/Versions/5/Headers"
    )
    target_link_libraries(${addonName} PRIVATE
        "${QT_WEB_HOME_DIR}/lib/QtWebEngineWidgets.framework/Versions/5/QtWebEngineWidgets"
    )

    # if (APPLE) 
    #     target_include_directories(${addonName} PRIVATE
    #         "${QT_HOME_DIR}/include"
    #         "${QT_HOME_DIR}/lib/QtCore.framework/Versions/5/Headers"
    #         "${QT_HOME_DIR}/lib/QtGui.framework/Versions/5/Headers"
    #         "${QT_HOME_DIR}/lib/QtWidgets.framework/Versions/5/Headers"
    #     )
    #     target_link_libraries(${addonName} PRIVATE
    #         "${QT_HOME_DIR}/lib/QtCore.framework/Versions/5/QtCore"
    #         "${QT_HOME_DIR}/lib/QtGui.framework/Versions/5/QtGui"
    #         "${QT_HOME_DIR}/lib/QtWidgets.framework/Versions/5/QtWidgets"
    #     )
    # endif()

    # if (WIN32)       
    #     target_include_directories(${addonName} PRIVATE
    #         "${QT_HOME_DIR}\\include"
    #         "${QT_HOME_DIR}\\include\\QtCore"
    #         "${QT_HOME_DIR}\\include\\QtGui"
    #         "${QT_HOME_DIR}\\include\\QtWidgets"
    #     )
    #     target_link_libraries(${addonName} PRIVATE
    #         "${QT_HOME_DIR}\\lib\\Qt5Core.lib"
    #         "${QT_HOME_DIR}\\lib\\Qt5Gui.lib"
    #         "${QT_HOME_DIR}\\lib\\Qt5Widgets.lib"
    #     )
    # endif()

    # if(UNIX AND NOT APPLE)
    #     set(LINUX TRUE)
    # endif()

    # if(LINUX)
    #     target_include_directories(${addonName} PRIVATE
    #         "${QT_HOME_DIR}/include"
    #         "${QT_HOME_DIR}/include/QtCore"
    #         "${QT_HOME_DIR}/include/QtGui"
    #         "${QT_HOME_DIR}/include/QtWidgets"
    #     )
    #     target_link_libraries(${addonName} PRIVATE
    #         "${QT_HOME_DIR}/lib/libQt5Core.so"
    #         "${QT_HOME_DIR}/lib/libQt5Gui.so"
    #         "${QT_HOME_DIR}/lib/libQt5Widgets.so"
    #     )
    # endif()    

  
endfunction(AddQtWebSupport addonName)
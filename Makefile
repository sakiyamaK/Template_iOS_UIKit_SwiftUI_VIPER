setup:
	./script/setup.sh
	open Template_iOS_UIKit_SwiftUI_VIPER.xcworkspace
.PHONY: setup

clean:
	./script/clean.sh
.PHONY: clean

component-swiftui:
ifdef name
	mint run pui component VIPER-SwiftUI ${name}
else
	@echo "make component-swiftui name=<component name>"
endif
.PHONY: component-swiftui

component-uikit:
ifdef name
	mint run pui component VIPER-UIKit ${name}
else
	@echo "make component-uikit name=<component name>"
endif
.PHONY: component-swiftui
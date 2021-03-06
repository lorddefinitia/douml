TEMPLATE    = app
TARGET        = gxmi
CONFIG        += debug warn_on qt
DEFINES        = WITHCPP WITHJAVA WITHIDL
HEADERS        = ./UmlBaseFinalState.h \
          ./UmlBaseAttribute.h \
          ./UmlEntryPointPseudoState.h \
          ./UmlSettings.h \
          ./UmlBaseExitPointPseudoState.h \
          ./UmlBaseInitialPseudoState.h \
          ./UmlBaseTerminatePseudoState.h \
          ./PackageGlobalCmd.h \
          ./UmlClassMember.h \
          ./IdlSettingsCmd.h \
          ./UmlBaseClassDiagram.h \
          ./UmlDiagram.h \
          ./UmlStereotype.h \
          ./UmlBaseTransition.h \
          ./UmlStateItem.h \
          ./UmlBaseClassView.h \
          ./UmlAttribute.h \
          ./UmlExitPointPseudoState.h \
          ./UmlExtraClassMember.h \
          ./aVisibility.h \
          ./UmlItem.h \
          ./UmlBaseClassItem.h \
          ./UmlSettingsCmd.h \
          ./JavaSettings.h \
          ./Language.h \
          ./UmlTerminatePseudoState.h \
          ./UmlBaseForkPseudoState.h \
          ./UmlNode.h \
          ./UmlBaseNcRelation.h \
          ./UmlBaseRegion.h \
          ./UmlBaseDiagram.h \
          ./UmlBaseFormalParameter.h \
          ./CmdFamily.h \
          ./UmlJoinPseudoState.h \
          ./UmlUseCaseDiagram.h \
          ./aRelationKind.h \
          ./UmlBaseComponent.h \
          ./UmlBaseUseCaseView.h \
          ./SmallPushButton.h \
          ./UmlBaseDeploymentDiagram.h \
          ./CppSettingsCmd.h \
          ./UmlBaseOperation.h \
          ./UmlClassView.h \
          ./UmlTypeSpec.h \
          ./UmlClass.h \
          ./UmlBaseStateAction.h \
          ./UmlBaseState.h \
          ./UmlBaseCollaborationDiagram.h \
          ./UmlBaseArtifact.h \
          ./anItemKind.h \
          ./UmlBaseDeploymentView.h \
          ./UmlBaseComponentDiagram.h \
          ./UmlBaseNode.h \
          ./UmlBaseRelation.h \
          ./UmlChoicePseudoState.h \
          ./UmlCom.h \
          ./UmlRelation.h \
          ./UmlBaseEntryPointPseudoState.h \
          ./OnInstanceCmd.h \
          ./IdlSettings.h \
          ./UmlArtifact.h \
          ./UmlNcRelation.h \
          ./UmlForkPseudoState.h \
          ./UmlBaseUseCaseDiagram.h \
          ./UmlComponentDiagram.h \
          ./UmlBaseJunctionPseudoState.h \
          ./UmlPackage.h \
          ./UmlDeploymentDiagram.h \
          ./UmlBaseDeepHistoryPseudoState.h \
          ./UmlBaseDeployment.h \
          ./UmlStateAction.h \
          ./UmlSequenceDiagram.h \
          ./UmlDeepHistoryPseudoState.h \
          ./UmlBaseClassMember.h \
          ./UmlCollaborationDiagram.h \
          ./StateBehavior.h \
          ./UmlComponentView.h \
          ./UmlStateDiagram.h \
          ./MiscGlobalCmd.h \
          ./UmlDeploymentView.h \
          ./UmlInitialPseudoState.h \
          ./UmlBaseStateDiagram.h \
          ./FileOut.h \
          ./JavaSettingsCmd.h \
          ./UmlUseCaseView.h \
          ./UmlBaseJoinPseudoState.h \
          ./UmlBaseExtraClassMember.h \
          ./UmlFormalParameter.h \
          ./UmlTransition.h \
          ./UmlActualParameter.h \
          ./UmlBaseSequenceDiagram.h \
          ./UmlUseCase.h \
          ./UmlState.h \
          ./ClassGlobalCmd.h \
          ./UmlJunctionPseudoState.h \
          ./UmlFinalState.h \
          ./UmlClassItem.h \
          ./UmlRegion.h \
          ./UmlBaseUseCase.h \
          ./aDirection.h \
          ./CppSettings.h \
          ./UmlClassDiagram.h \
          ./UmlBaseComponentView.h \
          ./UmlBaseActualParameter.h \
          ./UmlComponent.h \
          ./TransitionBehavior.h \
          ./UmlBaseChoicePseudoState.h \
          ./UmlPseudoState.h \
          ./UmlBaseClass.h \
          ./UmlBaseShallowHistoryPseudoState.h \
          ./UmlShallowHistoryPseudoState.h \
          ./UmlBaseItem.h \
          ./Dialog.h \
          ./UmlBasePackage.h \
          ./UmlOperation.h
SOURCES        = ./UmlBaseFinalState.cpp \
          ./UmlBaseAttribute.cpp \
          ./UmlEntryPointPseudoState.cpp \
          ./UmlSettings.cpp \
          ./UmlBaseExitPointPseudoState.cpp \
          ./UmlBaseInitialPseudoState.cpp \
          ./UmlBaseTerminatePseudoState.cpp \
          ./PackageGlobalCmd.cpp \
          ./UmlClassMember.cpp \
          ./IdlSettingsCmd.cpp \
          ./UmlBaseClassDiagram.cpp \
          ./UmlDiagram.cpp \
          ./UmlStereotype.cpp \
          ./UmlBaseTransition.cpp \
          ./UmlStateItem.cpp \
          ./UmlBaseClassView.cpp \
          ./UmlAttribute.cpp \
          ./UmlExitPointPseudoState.cpp \
          ./UmlExtraClassMember.cpp \
          ./aVisibility.cpp \
          ./UmlItem.cpp \
          ./UmlBaseClassItem.cpp \
          ./UmlSettingsCmd.cpp \
          ./JavaSettings.cpp \
          ./Language.cpp \
          ./UmlTerminatePseudoState.cpp \
          ./UmlBaseForkPseudoState.cpp \
          ./UmlNode.cpp \
          ./UmlBaseNcRelation.cpp \
          ./UmlBaseRegion.cpp \
          ./Main.cpp \
          ./UmlBaseDiagram.cpp \
          ./UmlBaseFormalParameter.cpp \
          ./CmdFamily.cpp \
          ./UmlJoinPseudoState.cpp \
          ./UmlUseCaseDiagram.cpp \
          ./aRelationKind.cpp \
          ./UmlBaseComponent.cpp \
          ./UmlBaseUseCaseView.cpp \
          ./SmallPushButton.cpp \
          ./UmlBaseDeploymentDiagram.cpp \
          ./CppSettingsCmd.cpp \
          ./UmlBaseOperation.cpp \
          ./UmlClassView.cpp \
          ./UmlTypeSpec.cpp \
          ./UmlClass.cpp \
          ./UmlBaseStateAction.cpp \
          ./UmlBaseState.cpp \
          ./UmlBaseCollaborationDiagram.cpp \
          ./UmlBaseArtifact.cpp \
          ./anItemKind.cpp \
          ./UmlBaseDeploymentView.cpp \
          ./UmlBaseComponentDiagram.cpp \
          ./UmlBaseNode.cpp \
          ./UmlBaseRelation.cpp \
          ./UmlChoicePseudoState.cpp \
          ./UmlCom.cpp \
          ./UmlRelation.cpp \
          ./UmlBaseEntryPointPseudoState.cpp \
          ./OnInstanceCmd.cpp \
          ./IdlSettings.cpp \
          ./UmlArtifact.cpp \
          ./UmlNcRelation.cpp \
          ./UmlForkPseudoState.cpp \
          ./UmlBaseUseCaseDiagram.cpp \
          ./UmlComponentDiagram.cpp \
          ./UmlBaseJunctionPseudoState.cpp \
          ./UmlPackage.cpp \
          ./UmlDeploymentDiagram.cpp \
          ./UmlBaseDeepHistoryPseudoState.cpp \
          ./UmlBaseDeployment.cpp \
          ./UmlStateAction.cpp \
          ./UmlSequenceDiagram.cpp \
          ./UmlDeepHistoryPseudoState.cpp \
          ./UmlBaseClassMember.cpp \
          ./UmlCollaborationDiagram.cpp \
          ./StateBehavior.cpp \
          ./UmlComponentView.cpp \
          ./UmlStateDiagram.cpp \
          ./MiscGlobalCmd.cpp \
          ./UmlDeploymentView.cpp \
          ./UmlInitialPseudoState.cpp \
          ./UmlBaseStateDiagram.cpp \
          ./FileOut.cpp \
          ./JavaSettingsCmd.cpp \
          ./UmlUseCaseView.cpp \
          ./UmlBaseJoinPseudoState.cpp \
          ./UmlBaseExtraClassMember.cpp \
          ./UmlFormalParameter.cpp \
          ./UmlTransition.cpp \
          ./UmlActualParameter.cpp \
          ./UmlBaseSequenceDiagram.cpp \
          ./UmlUseCase.cpp \
          ./UmlState.cpp \
          ./ClassGlobalCmd.cpp \
          ./UmlJunctionPseudoState.cpp \
          ./UmlFinalState.cpp \
          ./UmlClassItem.cpp \
          ./UmlRegion.cpp \
          ./UmlBaseUseCase.cpp \
          ./aDirection.cpp \
          ./CppSettings.cpp \
          ./UmlClassDiagram.cpp \
          ./UmlBaseComponentView.cpp \
          ./UmlBaseActualParameter.cpp \
          ./UmlComponent.cpp \
          ./TransitionBehavior.cpp \
          ./UmlBaseChoicePseudoState.cpp \
          ./UmlPseudoState.cpp \
          ./UmlBaseClass.cpp \
          ./UmlBaseShallowHistoryPseudoState.cpp \
          ./UmlShallowHistoryPseudoState.cpp \
          ./UmlBaseItem.cpp \
          ./Dialog.cpp \
          ./UmlBasePackage.cpp \
          ./UmlOperation.cpp
#The following line was inserted by qt3to4
QT += network  qt3support 

INCLUDEPATH += ../../src
CONFIG += qtestlib
Release{


    MOC_DIR = bin/douml/xmi/MOC_release
    OBJECTS_DIR = bin/douml/xmi/Obj_release
}

Debug{
    MOC_DIR = bin/douml/xmi/MOC_Debug
    OBJECTS_DIR = bin/douml/xmi/Obj_Debug

}
    UI_DIR = src/ui
    DESTDIR = ../../bin

QMAKE_CXXFLAGS += -std=gnu++11

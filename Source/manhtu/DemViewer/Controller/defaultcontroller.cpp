#include "defaultcontroller.h"

DefaultController::DefaultController()
{
    demObject = NULL;
}

void DefaultController::initGraphics()
{        
    window.setActionPerform(actionListener);
    window.setMainGraphics(&window);
}

void DefaultController::initActions()
{
    actionListener = new ActionListener();
    actionListener->setDemObject(demObject);
}

void DefaultController::initModules()
{
    modules = new ModuleController();
    modules->setActionListener(actionListener);
    modules->setGraphics(&window);
    modules->loadModules();
}

void DefaultController::start()
{
    window.initial();
    window.show();
}

DefaultController::~DefaultController()
{

}

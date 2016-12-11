#include <QtWidgets/QApplication>

#include <nodes/NodeData>
#include <nodes/FlowScene>
#include <nodes/FlowView>
#include <nodes/DataModelRegistry>

int main(int argc, char **argv){
    QApplication app(argc, argv);
  
    FlowScene scene(registerDataModels());
    FlowView view(&scene);
  
    view.setWindowTitle("Node-based flow editor");
    view.resize(800, 600);
    view.show();

	return app.exec();
}

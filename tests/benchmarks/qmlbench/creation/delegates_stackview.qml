import QtQuick
import QmlBench
import QtQuick.Controls

CreationBenchmark {
    id: root
    count: 20
    staticCount: 2000
    delegate: StackView {
        x: QmlBench.getRandom() * root.width - width
        y: QmlBench.getRandom() * root.height - height
        width: 100
        height: 100
        initialItem: Item {
            focus: StackView.status === StackView.Active
        }
    }
}

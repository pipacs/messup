#include <QtGui/QApplication>
#include <QMessageManager>
#include <QMessageService>
#include <QMessageAccount>
#include <QMessageAccountId>
#include <QDebug>

#include "qmlapplicationviewer.h"

QTM_USE_NAMESPACE

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/messup/main.qml"));

    QMessageManager *m = new QMessageManager(&viewer);
    QMessageAccountIdList accounts = m->queryAccounts();
    qDebug() << "Accounts:";
    foreach (const QMessageAccountId &id, accounts) {
        qDebug() << " Id:" << id.toString();
        QMessageAccount account(id);
        qDebug() << " Name:" << account.name();
    }

    viewer.showExpanded();
    return app->exec();
}

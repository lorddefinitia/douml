// *************************************************************************
//
// Copyright 2004-2010 Bruno PAGES  .
// Copyright 2012-2013 Nikolai Marchenko.
// Copyright 2012-2013 Leonardo Guilherme.
//
// This file is part of the DOUML Uml Toolkit.
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License Version 3.0 as published by
// the Free Software Foundation and appearing in the file LICENSE.GPL included in the
//  packaging of this file.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License Version 3.0 for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
//
// e-mail : doumleditor@gmail.com
// home   : http://sourceforge.net/projects/douml
//
// *************************************************************************





#include <stdlib.h>

#include <qapplication.h>
#include <qmessagebox.h>
#include <QTextStream>
#include <qdir.h>

#include "ControlWindow.h"
#include "Pixmap.h"
#include "myio.h"

#include <QDesktopWidget>

int main(int argc, char ** argv)
{
    QApplication * app = new QApplication(argc, argv);

    int uid = -1;
    // note : QFile fp(QDir::home().absFilePath(".doumlrc")) doesn't work
    // if the path contains non latin1 characters, for instance cyrillic !
    QDir homeDir = QDir::home();
    QString s = homeDir.absFilePath(".doumlrc");
    FILE * fp = fopen((const char *) s, "r");


















    int cx = -1;
    int cy = -1;
    int w = QApplication::desktop()->width();
    int h = QApplication::desktop()->height();

    if (fp != 0) {
        char line[512];

        while (fgets(line, sizeof(line) - 1, fp) != 0) {
            remove_crlf(line);

            if (!strncmp(line, "ID ", 3)) {
                sscanf(line + 3, "%d", &uid);
                break;
            }
            else if (!strncmp(line, "DESKTOP ", 8)) {
                int l, t, r, b;

                if (sscanf(line + 8, "%d %d %d %d", &l, &t, &r, &b) == 4) {
                    if (!((r == 0) && (t == 0) && (r == 0) && (b == 0)) &&
                        !((r < 0) || (t < 0) || (r < 0) || (b < 0)) &&
                        !((r <= l) || (b <= t))) {
                        cx = (r + l) / 2;
                        cy = (t + b) / 2;
                        w = r - l;
                        h = b - t;
                    }
                }
            }
        }

        fclose(fp);
    }

    if (uid == -1)
        QMessageBox::critical(0, "Control project", "Own identifier not defined");
    else if ((uid < 2) || (uid > 127))
        QMessageBox::critical(0, "Control project", "invalid Identifier");
    else {
        set_user_id(uid, homeDir.dirName());
        app->connect(app, SIGNAL(lastWindowClosed()), SLOT(quit()));
        init_pixmaps();

        ControlWindow * ww = new ControlWindow(homeDir);

        ww->resize((w * 3) / 5, (h * 3) / 5);

        if (cx != -1)
            ww->move(ww->x() + cx - (ww->x() + ww->width() / 2),
                     ww->y() + cy - (ww->y() + ww->height() / 2));

        ww->show();

        app->exec();
    }

    return 0;
}

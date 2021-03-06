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

#ifndef UMLPACKAGE_H
#define UMLPACKAGE_H

#include "UmlBasePackage.h"
//Added by qt3to4:
#include "misc/mystr.h"
#include <Q3PtrList>

class UmlClassView;
#ifdef REVERSE
class UmlDeploymentView;
# ifdef ROUNDTRIP
class Package;
class ClassContainer;
# endif
#endif

class UmlPackage : public UmlBasePackage
{
public:
    UmlPackage(void * id, const WrapperStr & n);

    UmlClassView * get_classview();
#ifdef REVERSE
    UmlDeploymentView * get_deploymentview();
# ifdef ROUNDTRIP
    void init(Package *);
    virtual void upload(ClassContainer *);
    virtual bool set_roundtrip_expected();
    virtual void mark_useless(Q3PtrList<UmlItem> & l);
    virtual void scan_it(int & n);
    virtual void send_it(int n);
    Package * get_package() const {
        return package;
    }
    int count_roundtriped();
# endif
#endif

private:
    UmlClassView * classview;
#ifdef REVERSE
    UmlDeploymentView * deploymentview;
# ifdef ROUNDTRIP
    Package * package;
# endif
#endif
};

#endif

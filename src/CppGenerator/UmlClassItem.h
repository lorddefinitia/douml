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

#ifndef UMLCLASSITEM_H
#define UMLCLASSITEM_H

#include <q3ptrlist.h>
//Added by qt3to4:
#include "misc/mystr.h"
#include <QTextStream>
#include <Q3PtrList>

#include "UmlBaseClassItem.h"

class QTextStream;
class UmlTypeSpec;
class CppRefType;

class UmlClassItem : public UmlBaseClassItem
{
public:
    UmlClassItem(void * id, const WrapperStr & n)
        : UmlBaseClassItem(id, n) {
    };

    virtual void compute_dependency(Q3PtrList<CppRefType> & dependency,
                                    const WrapperStr & cl_stereotype,
                                    bool all_in_h) = 0;

    virtual void generate_decl(aVisibility & current_visibility,
                               QTextStream & f_h,
                               const WrapperStr & cl_stereotype,
                               WrapperStr indent,
                               BooL & first, bool last) = 0;

    virtual void generate_def(QTextStream & f, WrapperStr indent, bool h,
                              WrapperStr templates, WrapperStr cl_names,
                              WrapperStr templates_tmplop,
                              WrapperStr cl_names_tmplop) = 0;
};

#endif

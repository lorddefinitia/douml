#ifndef _UMLREGION_H
#define _UMLREGION_H


#include "UmlBaseRegion.h"
#include "UmlStateItem.h"
#include "misc/mystr.h"

class UmlRegion : public UmlBaseRegion, public UmlStateItem
{
public:
    //  the constructor, do not call it yourself !!!!!!!!!!
    UmlRegion(void * id, const WrapperStr & s) : UmlBaseRegion(id, s) {
    }

};

#endif

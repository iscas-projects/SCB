(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2653 0)
(declare-sort var542 0)
(declare-sort var681 0)
(declare-sort var1698 0)
(declare-sort var1988 0)
(declare-sort var3432 0)
(declare-sort var532 0)
(declare-sort var3279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getXmlObject/1604345417 (var2653) var1698)
(declare-fun var1698_isSetMaster/-886491006 (var1698) Bool)
(declare-fun var1698_getMaster/56185346 (var1698) Int)
(declare-fun getMasterById/437576698 (var542 Int) var1988)
(declare-fun _master/-2042998275 (var2653) var1988)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var532_error/-1684474683 (String var3279) var3432)
(declare-fun cast-from-var2653-to-var3279 (var2653) var3279)
(declare-const null-var2653 var2653)
(declare-const null-var542 var542)
(declare-const null-var681 var681)
(declare-const null-var1988 var1988)
(declare-const var1380 var2653) ; Statement: r0 := @this: org.apache.poi.xdgf.usermodel.XDGFShape 
(assert (not (= var1380 null-var2653)))
(declare-const var2183 var542) ; Statement: r5 := @parameter0: org.apache.poi.xdgf.usermodel.XDGFPageContents 
(assert (not (= var2183 null-var542)))
(declare-const var1702 var681) ; Statement: r8 := @parameter1: org.apache.poi.xdgf.usermodel.XDGFMasterContents 
(assert (not (= var1702 null-var681)))
(assert true)
(define-const var1870 var1698 (getXmlObject/1604345417 var1380)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xdgf.usermodel.XDGFShape: com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType getXmlObject()>() 
(define-const var3789 Bool (var1698_isSetMaster/-886491006 var1870)) ; Statement: $z0 = interfaceinvoke r1.<com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType: boolean isSetMaster()>() 
 ; Statement: if $z0 == 0 goto $z1 = interfaceinvoke r1.<com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType: boolean isSetMasterShape()>() 
(assert (not (= (ite var3789 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var503 Int (var1698_getMaster/56185346 var1870)) ; Statement: $l2 = interfaceinvoke r1.<com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType: long getMaster()>() 
(assert true)
(define-const var3598 var1988 (getMasterById/437576698 var2183 var503)) ; Statement: $r15 = virtualinvoke r5.<org.apache.poi.xdgf.usermodel.XDGFPageContents: org.apache.poi.xdgf.usermodel.XDGFMaster getMasterById(long)>($l2) 
(declare-const var1380!1 var2653)
(assert (not (= var1380!1 null-var2653)))
(assert (= (_master/-2042998275 var1380!1) var3598)) ; Statement: r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFMaster _master> = $r15 
(define-const var3604 var1988 (_master/-2042998275 var1380!1)) ; Statement: $r16 = r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFMaster _master> 
 ; Statement: if $r16 != null goto $r17 = r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFMaster _master> 
(assert (not (not (= var3604 null-var1988)))) ; Negate: Cond: $r16 != null  
(define-const var1241 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1241)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1241!1 String)
(assert (= var1241!1 ""))
(assert true)
(define-const var2892 String (append/672562846 var1241!1 "refers to non-existant master ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("refers to non-existant master ") 
(declare-const var1241!2 String)
(assert (= var1241!2 (str.++ var1241!1 "refers to non-existant master ")))
(define-const var938 Int (var1698_getMaster/56185346 var1870)) ; Statement: $l4 = interfaceinvoke r1.<com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType: long getMaster()>() 
(assert true)
(define-const var1407 String (append/-901862667 var2892 var938)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var2892!1 String)
(assert (str.prefixof var2892 var2892!1))
(assert true)
(define-const var154 String (toString/-2075883882 var1407)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3528 var3432 (var532_error/-1684474683 var154 (cast-from-var2653-to-var3279 var1380!1))) ; Statement: $r32 = staticinvoke <org.apache.poi.xdgf.exceptions.XDGFException: org.apache.poi.ooxml.POIXMLException error(java.lang.String,java.lang.Object)>($r31, r0) 
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {getXmlObject/1604345417=([org.apache.poi.xdgf.usermodel.XDGFShape], com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType), var1698_isSetMaster/-886491006=([com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType], boolean), var1698_getMaster/56185346=([com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType], long), getMasterById/437576698=([org.apache.poi.xdgf.usermodel.XDGFPageContents, long], org.apache.poi.xdgf.usermodel.XDGFMaster), _master/-2042998275=([org.apache.poi.xdgf.usermodel.XDGFShape], org.apache.poi.xdgf.usermodel.XDGFMaster), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var532_error/-1684474683=([java.lang.String, java.lang.Object], org.apache.poi.ooxml.POIXMLException), cast-from-var2653-to-var3279=([org.apache.poi.xdgf.usermodel.XDGFShape], java.lang.Object)}
; {var2653=org.apache.poi.xdgf.usermodel.XDGFShape, var1380=r0, var542=org.apache.poi.xdgf.usermodel.XDGFPageContents, var2183=r5, var681=org.apache.poi.xdgf.usermodel.XDGFMasterContents, var1702=r8, var1698=com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType, var1870=r1, var3789=$z0, var503=$l2, var1988=org.apache.poi.xdgf.usermodel.XDGFMaster, var3598=$r15, var3604=$r16, var1241=$r28, var2892=$r29, var938=$l4, var1407=$r30, var154=$r31, var3432=org.apache.poi.ooxml.POIXMLException, var532=org.apache.poi.xdgf.exceptions.XDGFException, var3279=java.lang.Object, var3528=$r32}
; {org.apache.poi.xdgf.usermodel.XDGFShape=var2653, r0=var1380, org.apache.poi.xdgf.usermodel.XDGFPageContents=var542, r5=var2183, org.apache.poi.xdgf.usermodel.XDGFMasterContents=var681, r8=var1702, com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType=var1698, r1=var1870, $z0=var3789, $l2=var503, org.apache.poi.xdgf.usermodel.XDGFMaster=var1988, $r15=var3598, $r16=var3604, $r28=var1241, $r29=var2892, $l4=var938, $r30=var1407, $r31=var154, org.apache.poi.ooxml.POIXMLException=var3432, org.apache.poi.xdgf.exceptions.XDGFException=var532, java.lang.Object=var3279, $r32=var3528}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xdgf.usermodel.XDGFShape;	r5 := @parameter0: org.apache.poi.xdgf.usermodel.XDGFPageContents;	r8 := @parameter1: org.apache.poi.xdgf.usermodel.XDGFMasterContents;	r1 = virtualinvoke r0.<org.apache.poi.xdgf.usermodel.XDGFShape: com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType getXmlObject()>();	$z0 = interfaceinvoke r1.<com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType: boolean isSetMaster()>();	if $z0 == 0 goto $z1 = interfaceinvoke r1.<com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType: boolean isSetMasterShape()>();	$l2 = interfaceinvoke r1.<com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType: long getMaster()>();	$r15 = virtualinvoke r5.<org.apache.poi.xdgf.usermodel.XDGFPageContents: org.apache.poi.xdgf.usermodel.XDGFMaster getMasterById(long)>($l2);	r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFMaster _master> = $r15;	$r16 = r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFMaster _master>;	if $r16 != null goto $r17 = r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFMaster _master>;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("refers to non-existant master ");	$l4 = interfaceinvoke r1.<com.microsoft.schemas.office.visio.x2012.main.ShapeSheetType: long getMaster()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	$r32 = staticinvoke <org.apache.poi.xdgf.exceptions.XDGFException: org.apache.poi.ooxml.POIXMLException error(java.lang.String,java.lang.Object)>($r31, r0);	throw $r32
;block_num 3
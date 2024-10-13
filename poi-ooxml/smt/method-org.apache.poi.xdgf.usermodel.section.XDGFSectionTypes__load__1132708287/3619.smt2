(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3170 0)
(declare-sort var449 0)
(declare-sort var1323 0)
(declare-sort var3031 0)
(declare-sort var1748 0)
(declare-sort var1845 0)
(declare-sort var202 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3170_getN/136693350 (var3170) String)
(declare-fun var1323_get/1088891777 (var1323 var1748) var1748)
(declare-fun cast-from-String-to-var1748 (String) var1748)
(declare-fun cast-from-var1748-to-var3031 (var1748) var3031)
(declare-fun constructor/1592455585 (var3031) var1845)
(declare-fun var1845_apply/1513947321 (var1845 var1748 var1748) var1748)
(declare-fun cast-from-var3170-to-var1748 (var3170) var1748)
(declare-fun cast-from-var449-to-var1748 (var449) var1748)
(declare-fun cast-from-var1748-to-var202 (var1748) var202)
(declare-const null-var3170 var3170)
(declare-const null-var449 var449)
(declare-const var3031-LOOKUP var1323)
(declare-const null-var3031 var3031)
(declare-const var1948 var3170) ; Statement: r0 := @parameter0: com.microsoft.schemas.office.visio.x2012.main.SectionType 
(assert (not (= var1948 null-var3170)))
(declare-const var2751 var449) ; Statement: r5 := @parameter1: org.apache.poi.xdgf.usermodel.XDGFSheet 
(assert (not (= var2751 null-var449)))
(define-const var3216 String (var3170_getN/136693350 var1948)) ; Statement: r1 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.SectionType: java.lang.String getN()>() 
(define-const var1494 var1323 var3031-LOOKUP) ; Statement: $r2 = <org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes: java.util.Map LOOKUP> 
(define-const var3485 var1748 (var1323_get/1088891777 var1494 (cast-from-String-to-var1748 var3216))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3656 var3031 (cast-from-var1748-to-var3031 var3485)) ; Statement: r4 = (org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes) $r3 
 ; Statement: if r4 != null goto $r6 = r4.<org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes: java.util.function.BiFunction constructor> 
(assert (not (= var3656 null-var3031))) ; Cond: r4 != null 
(define-const var3913 var1845 (constructor/1592455585 var3656)) ; Statement: $r6 = r4.<org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes: java.util.function.BiFunction constructor> 
(define-const var1688 var1748 (var1845_apply/1513947321 var3913 (cast-from-var3170-to-var1748 var1948) (cast-from-var449-to-var1748 var2751))) ; Statement: $r7 = interfaceinvoke $r6.<java.util.function.BiFunction: java.lang.Object apply(java.lang.Object,java.lang.Object)>(r0, r5) 
(define-const var394 var202 (cast-from-var1748-to-var202 var1688)) ; Statement: $r8 = (org.apache.poi.xdgf.usermodel.section.XDGFSection) $r7 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3170_getN/136693350=([com.microsoft.schemas.office.visio.x2012.main.SectionType], java.lang.String), var1323_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1748=([java.lang.String], java.lang.Object), cast-from-var1748-to-var3031=([java.lang.Object], org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes), constructor/1592455585=([org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes], java.util.function.BiFunction), var1845_apply/1513947321=([java.util.function.BiFunction, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3170-to-var1748=([com.microsoft.schemas.office.visio.x2012.main.SectionType], java.lang.Object), cast-from-var449-to-var1748=([org.apache.poi.xdgf.usermodel.XDGFSheet], java.lang.Object), cast-from-var1748-to-var202=([java.lang.Object], org.apache.poi.xdgf.usermodel.section.XDGFSection)}
; {var3170=com.microsoft.schemas.office.visio.x2012.main.SectionType, var1948=r0, var449=org.apache.poi.xdgf.usermodel.XDGFSheet, var2751=r5, var3216=r1, var1323=java.util.Map, var3031=org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes, var1494=$r2, var1748=java.lang.Object, var3485=$r3, var3656=r4, var1845=java.util.function.BiFunction, var3913=$r6, var1688=$r7, var202=org.apache.poi.xdgf.usermodel.section.XDGFSection, var394=$r8}
; {com.microsoft.schemas.office.visio.x2012.main.SectionType=var3170, r0=var1948, org.apache.poi.xdgf.usermodel.XDGFSheet=var449, r5=var2751, r1=var3216, java.util.Map=var1323, org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes=var3031, $r2=var1494, java.lang.Object=var1748, $r3=var3485, r4=var3656, java.util.function.BiFunction=var1845, $r6=var3913, $r7=var1688, org.apache.poi.xdgf.usermodel.section.XDGFSection=var202, $r8=var394}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.microsoft.schemas.office.visio.x2012.main.SectionType;	r5 := @parameter1: org.apache.poi.xdgf.usermodel.XDGFSheet;	r1 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.SectionType: java.lang.String getN()>();	$r2 = <org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes: java.util.Map LOOKUP>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes) $r3;	if r4 != null goto $r6 = r4.<org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes: java.util.function.BiFunction constructor>;	$r6 = r4.<org.apache.poi.xdgf.usermodel.section.XDGFSectionTypes: java.util.function.BiFunction constructor>;	$r7 = interfaceinvoke $r6.<java.util.function.BiFunction: java.lang.Object apply(java.lang.Object,java.lang.Object)>(r0, r5);	$r8 = (org.apache.poi.xdgf.usermodel.section.XDGFSection) $r7;	return $r8
;block_num 2
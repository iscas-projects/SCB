(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2481 0)
(declare-sort var3878 0)
(declare-sort var726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formatAsString/-460987888 (var3878) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ctTable/-1100062582 (var2481) var726)
(declare-fun var726_setRef/532090429 (var726 String) void)
(declare-fun var726_isSetAutoFilter/866186414 (var726) Bool)
(declare-fun updateReferences/1320687988 (var2481) void)
(declare-fun updateHeaders/-1442636584 (var2481) void)
(declare-const null-var2481 var2481)
(declare-const null-var3878 var3878)
(declare-const var1432 var2481) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFTable 
(assert (not (= var1432 null-var2481)))
(declare-const var551 var3878) ; Statement: r0 := @parameter0: org.apache.poi.ss.util.AreaReference 
(assert (not (= var551 null-var3878)))
(assert true)
(define-const var3459 String (formatAsString/-460987888 var551)) ; Statement: r14 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: java.lang.String formatAsString()>() 
(assert true)
(define-const var1124 Int (indexOf/-1037706067 var3459 33)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(33) 
(define-const var38 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i0 == $i10 goto $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable ctTable> 
(assert (= var1124 var38)) ; Cond: $i0 == $i10 
(define-const var3186 var726 (ctTable/-1100062582 var1432)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable ctTable> 
;(assert (var726_setRef/532090429 var3186 var3459)) ; Statement: interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable: void setRef(java.lang.String)>(r14) 

(declare-const var3186!1 var726)
(declare-const var3459!1 String)
(define-const var2881 var726 (ctTable/-1100062582 var1432)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable ctTable> 
(define-const var3622 Bool (var726_isSetAutoFilter/866186414 var2881)) ; Statement: $z0 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable: boolean isSetAutoFilter()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTable: void updateReferences()>() 
(assert (= (ite var3622 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (updateReferences/1320687988 var1432)) ; Statement: virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTable: void updateReferences()>() 

(declare-const var1432!1 var2481)
(assert true)
;(assert (updateHeaders/-1442636584 var1432!1)) ; Statement: virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTable: void updateHeaders()>() 

(declare-const var1432!2 var2481)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {formatAsString/-460987888=([org.apache.poi.ss.util.AreaReference], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), ctTable/-1100062582=([org.apache.poi.xssf.usermodel.XSSFTable], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable), var726_setRef/532090429=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable, java.lang.String], void), var726_isSetAutoFilter/866186414=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable], boolean), updateReferences/1320687988=([org.apache.poi.xssf.usermodel.XSSFTable], void), updateHeaders/-1442636584=([org.apache.poi.xssf.usermodel.XSSFTable], void)}
; {var2481=org.apache.poi.xssf.usermodel.XSSFTable, var1432=r1, var3878=org.apache.poi.ss.util.AreaReference, var551=r0, var3459=r14, var1124=$i0, var38=$i10, var726=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable, var3186=$r2, var2881=$r3, var3622=$z0}
; {org.apache.poi.xssf.usermodel.XSSFTable=var2481, r1=var1432, org.apache.poi.ss.util.AreaReference=var3878, r0=var551, r14=var3459, $i0=var1124, $i10=var38, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable=var726, $r2=var3186, $r3=var2881, $z0=var3622}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFTable;	r0 := @parameter0: org.apache.poi.ss.util.AreaReference;	r14 = virtualinvoke r0.<org.apache.poi.ss.util.AreaReference: java.lang.String formatAsString()>();	$i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(33);	$i10 = (int) -1;	if $i0 == $i10 goto $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable ctTable>;	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable ctTable>;	interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable: void setRef(java.lang.String)>(r14);	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable ctTable>;	$z0 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable: boolean isSetAutoFilter()>();	if $z0 == 0 goto virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTable: void updateReferences()>();	virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTable: void updateReferences()>();	virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTable: void updateHeaders()>();	return
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3402 0)
(declare-sort var1514 0)
(declare-sort var1160 0)
(declare-sort var2212 0)
(declare-sort var3624 0)
(declare-sort var1568 0)
(declare-sort var833 0)
(declare-sort var1268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1160-init () var1160)
(declare-fun <init>/-578871546 (var1160 var1514 var3402) void)
(declare-fun namedRanges/-433134786 (var3402) var2212)
(declare-fun var2212_add/328494887 (var2212 var3624) Bool)
(declare-fun cast-from-var1160-to-var3624 (var1160) var3624)
(declare-fun namedRangesByName/-433134786 (var3402) var1568)
(declare-fun var1514_getName/-1675940103 (var1514) String)
(declare-fun toLowerCase/1946809429 (String var1268) String)
(declare-fun var1568_put/1446408686 (var1568 var3624 var3624) Bool)
(declare-fun cast-from-String-to-var3624 (String) var3624)
(declare-const null-var3402 var3402)
(declare-const null-var1514 var1514)
(declare-const null-String String)
(declare-const var1268-ENGLISH var1268)
(declare-const var1974 var3402) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var1974 null-var3402)))
(declare-const var272 var1514) ; Statement: r1 := @parameter0: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName 
(assert (not (= var272 null-var1514)))
(define-const var2045 var1160 var1160-init) ; Statement: $r0 = new org.apache.poi.xssf.usermodel.XSSFName 
(assert true)
;(assert (<init>/-578871546 var2045 var272 var1974)) ; Statement: specialinvoke $r0.<org.apache.poi.xssf.usermodel.XSSFName: void <init>(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName,org.apache.poi.xssf.usermodel.XSSFWorkbook)>(r1, r2) 

(declare-const var2045!1 var1160)
(declare-const var272!1 var1514)
(declare-const var1974!1 var3402)
(define-const var2625 var2212 (namedRanges/-433134786 var1974!1)) ; Statement: $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List namedRanges> 
;(assert (var2212_add/328494887 var2625 (cast-from-var1160-to-var3624 var2045!1))) ; Statement: interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>($r0) 

(declare-const var2625!1 var2212)
(declare-const var2045!2 var1160)
(define-const var690 var1568 (namedRangesByName/-433134786 var1974!1)) ; Statement: $r4 = r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName> 
(define-const var643 String (var1514_getName/-1675940103 var272!1)) ; Statement: $r5 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: java.lang.String getName()>() 
 ; Statement: if $r5 != null goto $r7 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: java.lang.String getName()>() 
(assert (not (= var643 null-String))) ; Cond: $r5 != null 
(define-const var3111 String (var1514_getName/-1675940103 var272!1)) ; Statement: $r7 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: java.lang.String getName()>() 
(define-const var3447 var1268 var1268-ENGLISH) ; Statement: $r6 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var493 String (toLowerCase/1946809429 var3111 var3447)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r6) 
(assert true) ; Non Conditional
;(assert (var1568_put/1446408686 var690 (cast-from-String-to-var3624 var493) (cast-from-var1160-to-var3624 var2045!2))) ; Statement: interfaceinvoke $r4.<org.apache.commons.collections4.ListValuedMap: boolean put(java.lang.Object,java.lang.Object)>($r8, $r0) 

(declare-const var690!1 var1568)
(declare-const var493!1 String)
(declare-const var2045!3 var1160)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1160-init=([], org.apache.poi.xssf.usermodel.XSSFName), <init>/-578871546=([org.apache.poi.xssf.usermodel.XSSFName, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, org.apache.poi.xssf.usermodel.XSSFWorkbook], void), namedRanges/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], java.util.List), var2212_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1160-to-var3624=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.Object), namedRangesByName/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.apache.commons.collections4.ListValuedMap), var1514_getName/-1675940103=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1568_put/1446408686=([org.apache.commons.collections4.ListValuedMap, java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var3624=([java.lang.String], java.lang.Object)}
; {var3402=org.apache.poi.xssf.usermodel.XSSFWorkbook, var1974=r2, var1514=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, var272=r1, var1160=org.apache.poi.xssf.usermodel.XSSFName, var2045=$r0, var2212=java.util.List, var2625=$r3, var3624=java.lang.Object, var1568=org.apache.commons.collections4.ListValuedMap, var690=$r4, var643=$r5, var833=null_type, var3111=$r7, var1268=java.util.Locale, var3447=$r6, var493=$r8}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var3402, r2=var1974, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName=var1514, r1=var272, org.apache.poi.xssf.usermodel.XSSFName=var1160, $r0=var2045, java.util.List=var2212, $r3=var2625, java.lang.Object=var3624, org.apache.commons.collections4.ListValuedMap=var1568, $r4=var690, $r5=var643, null_type=var833, $r7=var3111, java.util.Locale=var1268, $r6=var3447, $r8=var493}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r1 := @parameter0: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName;	$r0 = new org.apache.poi.xssf.usermodel.XSSFName;	specialinvoke $r0.<org.apache.poi.xssf.usermodel.XSSFName: void <init>(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName,org.apache.poi.xssf.usermodel.XSSFWorkbook)>(r1, r2);	$r3 = r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List namedRanges>;	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>($r0);	$r4 = r2.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName>;	$r5 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: java.lang.String getName()>();	if $r5 != null goto $r7 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: java.lang.String getName()>();	$r7 = interfaceinvoke r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: java.lang.String getName()>();	$r6 = <java.util.Locale: java.util.Locale ENGLISH>;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r6);	interfaceinvoke $r4.<org.apache.commons.collections4.ListValuedMap: boolean put(java.lang.Object,java.lang.Object)>($r8, $r0);	return $r0
;block_num 3
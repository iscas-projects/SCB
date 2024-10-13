(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2231 0)
(declare-sort var1360 0)
(declare-sort var716 0)
(declare-sort var1536 0)
(declare-sort var3498 0)
(declare-sort var822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedRangesByName/-433134786 (var2231) var1536)
(declare-fun toLowerCase/1946809429 (String var3498) String)
(declare-fun var1536_removeMapping/1769990537 (var1536 var822 var822) Bool)
(declare-fun cast-from-String-to-var822 (String) var822)
(declare-fun cast-from-var1360-to-var822 (var1360) var822)
(declare-fun getNameName/-677978693 (var1360) String)
(declare-fun var1536_put/1446408686 (var1536 var822 var822) Bool)
(declare-const null-var2231 var2231)
(declare-const null-var1360 var1360)
(declare-const null-String String)
(declare-const var3498-ENGLISH var3498)
(declare-const var1809 var2231) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var1809 null-var2231)))
(declare-const var691 var1360) ; Statement: r4 := @parameter0: org.apache.poi.xssf.usermodel.XSSFName 
(assert (not (= var691 null-var1360)))
(declare-const var345 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var345 null-String)))
(define-const var3289 var1536 (namedRangesByName/-433134786 var1809)) ; Statement: $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName> 
(define-const var3751 var3498 var3498-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var710 String (toLowerCase/1946809429 var345 var3751)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var3768 Bool (var1536_removeMapping/1769990537 var3289 (cast-from-String-to-var822 var710) (cast-from-var1360-to-var822 var691))) ; Statement: $z0 = interfaceinvoke $r3.<org.apache.commons.collections4.ListValuedMap: boolean removeMapping(java.lang.Object,java.lang.Object)>($r5, r4) 
 ; Statement: if $z0 != 0 goto $r6 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName> 
(assert (not (= (ite var3768 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1519 var1536 (namedRangesByName/-433134786 var1809)) ; Statement: $r6 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName> 
(assert true)
(define-const var610 String (getNameName/-677978693 var691)) ; Statement: $r8 = virtualinvoke r4.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getNameName()>() 
(define-const var836 var3498 var3498-ENGLISH) ; Statement: $r7 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var306 String (toLowerCase/1946809429 var610 var836)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r7) 
;(assert (var1536_put/1446408686 var1519 (cast-from-String-to-var822 var306) (cast-from-var1360-to-var822 var691))) ; Statement: interfaceinvoke $r6.<org.apache.commons.collections4.ListValuedMap: boolean put(java.lang.Object,java.lang.Object)>($r9, r4) 

(declare-const var1519!1 var1536)
(declare-const var306!1 String)
(declare-const var691!1 var1360)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {namedRangesByName/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.apache.commons.collections4.ListValuedMap), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1536_removeMapping/1769990537=([org.apache.commons.collections4.ListValuedMap, java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var822=([java.lang.String], java.lang.Object), cast-from-var1360-to-var822=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.Object), getNameName/-677978693=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.String), var1536_put/1446408686=([org.apache.commons.collections4.ListValuedMap, java.lang.Object, java.lang.Object], boolean)}
; {var2231=org.apache.poi.xssf.usermodel.XSSFWorkbook, var1809=r0, var1360=org.apache.poi.xssf.usermodel.XSSFName, var691=r4, var345=r1, var716=null_type, var1536=org.apache.commons.collections4.ListValuedMap, var3289=$r3, var3498=java.util.Locale, var3751=$r2, var710=$r5, var822=java.lang.Object, var3768=$z0, var1519=$r6, var610=$r8, var836=$r7, var306=$r9}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var2231, r0=var1809, org.apache.poi.xssf.usermodel.XSSFName=var1360, r4=var691, r1=var345, null_type=var716, org.apache.commons.collections4.ListValuedMap=var1536, $r3=var3289, java.util.Locale=var3498, $r2=var3751, $r5=var710, java.lang.Object=var822, $z0=var3768, $r6=var1519, $r8=var610, $r7=var836, $r9=var306}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 2}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r4 := @parameter0: org.apache.poi.xssf.usermodel.XSSFName;	r1 := @parameter1: java.lang.String;	$r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$z0 = interfaceinvoke $r3.<org.apache.commons.collections4.ListValuedMap: boolean removeMapping(java.lang.Object,java.lang.Object)>($r5, r4);	if $z0 != 0 goto $r6 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName>;	$r6 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName>;	$r8 = virtualinvoke r4.<org.apache.poi.xssf.usermodel.XSSFName: java.lang.String getNameName()>();	$r7 = <java.util.Locale: java.util.Locale ENGLISH>;	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r7);	interfaceinvoke $r6.<org.apache.commons.collections4.ListValuedMap: boolean put(java.lang.Object,java.lang.Object)>($r9, r4);	return
;block_num 2
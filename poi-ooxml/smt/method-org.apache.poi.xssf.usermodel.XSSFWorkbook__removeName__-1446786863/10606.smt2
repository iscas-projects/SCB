(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var409 0)
(declare-sort var2571 0)
(declare-sort var57 0)
(declare-sort var2762 0)
(declare-sort var3551 0)
(declare-sort var1415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedRangesByName/-433134786 (var409) var57)
(declare-fun var2571_getNameName/-1315772965 (var2571) String)
(declare-fun toLowerCase/1946809429 (String var2762) String)
(declare-fun var57_removeMapping/1769990537 (var57 var3551 var3551) Bool)
(declare-fun cast-from-String-to-var3551 (String) var3551)
(declare-fun cast-from-var2571-to-var3551 (var2571) var3551)
(declare-fun var1415-init () var1415)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3551) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1415 String) void)
(declare-const null-var409 var409)
(declare-const null-var2571 var2571)
(declare-const var2762-ENGLISH var2762)
(declare-const var675 var409) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var675 null-var409)))
(declare-const var2132 var2571) ; Statement: r1 := @parameter0: org.apache.poi.ss.usermodel.Name 
(assert (not (= var2132 null-var2571)))
(define-const var2963 var57 (namedRangesByName/-433134786 var675)) ; Statement: $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName> 
(define-const var3152 String (var2571_getNameName/-1315772965 var2132)) ; Statement: $r4 = interfaceinvoke r1.<org.apache.poi.ss.usermodel.Name: java.lang.String getNameName()>() 
(define-const var2398 var2762 var2762-ENGLISH) ; Statement: $r3 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2802 String (toLowerCase/1946809429 var3152 var2398)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(define-const var898 Bool (var57_removeMapping/1769990537 var2963 (cast-from-String-to-var3551 var2802) (cast-from-var2571-to-var3551 var2132))) ; Statement: $z0 = interfaceinvoke $r2.<org.apache.commons.collections4.ListValuedMap: boolean removeMapping(java.lang.Object,java.lang.Object)>($r5, r1) 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.IllegalArgumentException 
(assert (= (ite var898 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2746 var1415 var1415-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var3965 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3965)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3965!1 String)
(assert (= var3965!1 ""))
(assert true)
(define-const var2682 String (append/672562846 var3965!1 "Name was not found: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name was not found: ") 
(declare-const var3965!2 String)
(assert (= var3965!2 (str.++ var3965!1 "Name was not found: ")))
(assert true)
(define-const var862 String (append/-1031950772 var2682 (cast-from-var2571-to-var3551 var2132))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2682!1 String)
(assert (str.prefixof var2682 var2682!1))
(assert true)
(define-const var176 String (toString/-2075883882 var862)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2746 var176)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2746!1 var1415)
(declare-const var176!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {namedRangesByName/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.apache.commons.collections4.ListValuedMap), var2571_getNameName/-1315772965=([org.apache.poi.ss.usermodel.Name], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var57_removeMapping/1769990537=([org.apache.commons.collections4.ListValuedMap, java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var3551=([java.lang.String], java.lang.Object), cast-from-var2571-to-var3551=([org.apache.poi.ss.usermodel.Name], java.lang.Object), var1415-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var409=org.apache.poi.xssf.usermodel.XSSFWorkbook, var675=r0, var2571=org.apache.poi.ss.usermodel.Name, var2132=r1, var57=org.apache.commons.collections4.ListValuedMap, var2963=$r2, var3152=$r4, var2762=java.util.Locale, var2398=$r3, var2802=$r5, var3551=java.lang.Object, var898=$z0, var1415=java.lang.IllegalArgumentException, var2746=$r6, var3965=$r7, var2682=$r8, var862=$r9, var176=$r10}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var409, r0=var675, org.apache.poi.ss.usermodel.Name=var2571, r1=var2132, org.apache.commons.collections4.ListValuedMap=var57, $r2=var2963, $r4=var3152, java.util.Locale=var2762, $r3=var2398, $r5=var2802, java.lang.Object=var3551, $z0=var898, java.lang.IllegalArgumentException=var1415, $r6=var2746, $r7=var3965, $r8=var2682, $r9=var862, $r10=var176}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r1 := @parameter0: org.apache.poi.ss.usermodel.Name;	$r2 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName>;	$r4 = interfaceinvoke r1.<org.apache.poi.ss.usermodel.Name: java.lang.String getNameName()>();	$r3 = <java.util.Locale: java.util.Locale ENGLISH>;	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	$z0 = interfaceinvoke $r2.<org.apache.commons.collections4.ListValuedMap: boolean removeMapping(java.lang.Object,java.lang.Object)>($r5, r1);	if $z0 == 0 goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name was not found: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1396 0)
(declare-sort var2230 0)
(declare-sort var4 0)
(declare-sort var2041 0)
(declare-sort var680 0)
(declare-sort var2636 0)
(declare-sort var2861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedRangesByName/-433134786 (var1396) var2041)
(declare-fun toLowerCase/1946809429 (String var680) String)
(declare-fun var2041_removeMapping/1769990537 (var2041 var2636 var2636) Bool)
(declare-fun cast-from-String-to-var2636 (String) var2636)
(declare-fun cast-from-var2230-to-var2636 (var2230) var2636)
(declare-fun var2861-init () var2861)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2636) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2861 String) void)
(declare-const null-var1396 var1396)
(declare-const null-var2230 var2230)
(declare-const null-String String)
(declare-const var680-ENGLISH var680)
(declare-const var147 var1396) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var147 null-var1396)))
(declare-const var3953 var2230) ; Statement: r4 := @parameter0: org.apache.poi.xssf.usermodel.XSSFName 
(assert (not (= var3953 null-var2230)))
(declare-const var490 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var490 null-String)))
(define-const var1077 var2041 (namedRangesByName/-433134786 var147)) ; Statement: $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName> 
(define-const var1923 var680 var680-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3999 String (toLowerCase/1946809429 var490 var1923)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var1330 Bool (var2041_removeMapping/1769990537 var1077 (cast-from-String-to-var2636 var3999) (cast-from-var2230-to-var2636 var3953))) ; Statement: $z0 = interfaceinvoke $r3.<org.apache.commons.collections4.ListValuedMap: boolean removeMapping(java.lang.Object,java.lang.Object)>($r5, r4) 
 ; Statement: if $z0 != 0 goto $r6 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName> 
(assert (not (not (= (ite var1330 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2149 var2861 var2861-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var394 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var394)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var394!1 String)
(assert (= var394!1 ""))
(assert true)
(define-const var2287 String (append/672562846 var394!1 "Name was not found: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name was not found: ") 
(declare-const var394!2 String)
(assert (= var394!2 (str.++ var394!1 "Name was not found: ")))
(assert true)
(define-const var1593 String (append/-1031950772 var2287 (cast-from-var2230-to-var2636 var3953))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2287!1 String)
(assert (str.prefixof var2287 var2287!1))
(assert true)
(define-const var973 String (toString/-2075883882 var1593)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2149 var973)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var2149!1 var2861)
(declare-const var973!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {namedRangesByName/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.apache.commons.collections4.ListValuedMap), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var2041_removeMapping/1769990537=([org.apache.commons.collections4.ListValuedMap, java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var2636=([java.lang.String], java.lang.Object), cast-from-var2230-to-var2636=([org.apache.poi.xssf.usermodel.XSSFName], java.lang.Object), var2861-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1396=org.apache.poi.xssf.usermodel.XSSFWorkbook, var147=r0, var2230=org.apache.poi.xssf.usermodel.XSSFName, var3953=r4, var490=r1, var4=null_type, var2041=org.apache.commons.collections4.ListValuedMap, var1077=$r3, var680=java.util.Locale, var1923=$r2, var3999=$r5, var2636=java.lang.Object, var1330=$z0, var2861=java.lang.IllegalArgumentException, var2149=$r10, var394=$r11, var2287=$r12, var1593=$r13, var973=$r14}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var1396, r0=var147, org.apache.poi.xssf.usermodel.XSSFName=var2230, r4=var3953, r1=var490, null_type=var4, org.apache.commons.collections4.ListValuedMap=var2041, $r3=var1077, java.util.Locale=var680, $r2=var1923, $r5=var3999, java.lang.Object=var2636, $z0=var1330, java.lang.IllegalArgumentException=var2861, $r10=var2149, $r11=var394, $r12=var2287, $r13=var1593, $r14=var973}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r4 := @parameter0: org.apache.poi.xssf.usermodel.XSSFName;	r1 := @parameter1: java.lang.String;	$r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$z0 = interfaceinvoke $r3.<org.apache.commons.collections4.ListValuedMap: boolean removeMapping(java.lang.Object,java.lang.Object)>($r5, r4);	if $z0 != 0 goto $r6 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.commons.collections4.ListValuedMap namedRangesByName>;	$r10 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name was not found: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r10
;block_num 2
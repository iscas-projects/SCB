(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1287 0)
(declare-sort var3462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun internal_name/-1632124174 (var3462) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1287 var1287)
(declare-const null-var3462 var3462)
(declare-const var240 var1287) ; Statement: r9 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var240 null-var1287)))
(declare-const var3075 var3462) ; Statement: r0 := @parameter0: org.javacc.parser.Expansion 
(assert (not (= var3075 null-var3462)))
(define-const var2489 String (internal_name/-1632124174 var3075)) ; Statement: $r1 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var3106 Bool (startsWith/-1785782452 var2489 "jj_scan_token")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("jj_scan_token") 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var3106 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2071 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2071)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2071!1 String)
(assert (= var2071!1 ""))
(assert true)
(define-const var3959 String (append/672562846 var2071!1 "jj_3")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jj_3") 
(declare-const var2071!2 String)
(assert (= var2071!2 (str.++ var2071!1 "jj_3")))
(define-const var281 String (internal_name/-1632124174 var3075)) ; Statement: $r3 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var856 String (append/672562846 var3959 var281)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3959!1 String)
(assert (= var3959!1 (str.++ var3959 var281)))
(assert true)
(define-const var2356 String (append/672562846 var856 "()")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var856!1 String)
(assert (= var856!1 (str.++ var856 "()")))
(assert true)
(define-const var2590 String (toString/-2075883882 var2356)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {internal_name/-1632124174=([org.javacc.parser.Expansion], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1287=org.javacc.parser.ParseEngine, var240=r9, var3462=org.javacc.parser.Expansion, var3075=r0, var2489=$r1, var3106=$z0, var2071=$r2, var3959=$r4, var281=$r3, var856=$r5, var2356=$r6, var2590=$r7}
; {org.javacc.parser.ParseEngine=var1287, r9=var240, org.javacc.parser.Expansion=var3462, r0=var3075, $r1=var2489, $z0=var3106, $r2=var2071, $r4=var3959, $r3=var281, $r5=var856, $r6=var2356, $r7=var2590}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: org.javacc.parser.Expansion;	$r1 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("jj_scan_token");	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jj_3");	$r3 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2
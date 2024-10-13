(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var35 0)
(declare-sort var449 0)
(declare-sort var1038 0)
(declare-sort var2840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var449-init () var449)
(declare-fun var1038_isNotBlank/-1148504278 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1758919186 (var449 String) void)
(declare-fun cast-from-var449-to-var2840 (var449) var2840)
(declare-const null-String String)
(declare-const var3421 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3421 null-String)))
(define-const var2448 var449 var449-init) ; Statement: $r7 = new org.opentest4j.TestAbortedException 
(define-const var2237 Bool (var1038_isNotBlank/-1148504278 var3421)) ; Statement: $z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $r5 = "Assumption failed" 
(assert (not (= (ite var2237 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2779 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2779)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2779!1 String)
(assert (= var2779!1 ""))
(assert true)
(define-const var2428 String (append/672562846 var2779!1 "Assumption failed: ")) ; Statement: $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Assumption failed: ") 
(declare-const var2779!2 String)
(assert (= var2779!2 (str.++ var2779!1 "Assumption failed: ")))
(assert true)
(define-const var1605 String (append/672562846 var2428 var3421)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2428!1 String)
(assert (= var2428!1 (str.++ var2428 var3421)))
(assert true)
(define-const var2148 String (toString/-2075883882 var1605)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= specialinvoke $r7.<org.opentest4j.TestAbortedException: void <init>(java.lang.String)>($r5)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1758919186 var2448 var2148)) ; Statement: specialinvoke $r7.<org.opentest4j.TestAbortedException: void <init>(java.lang.String)>($r5) 

(declare-const var2448!1 var449)
(declare-const var2148!1 String)
(define-const var2520 var2840 (cast-from-var449-to-var2840 var2448!1)) ; Statement: $r8 = (java.lang.Throwable) $r7 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var449-init=([], org.opentest4j.TestAbortedException), var1038_isNotBlank/-1148504278=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1758919186=([org.opentest4j.TestAbortedException, java.lang.String], void), cast-from-var449-to-var2840=([org.opentest4j.TestAbortedException], java.lang.Throwable)}
; {var3421=r1, var35=null_type, var449=org.opentest4j.TestAbortedException, var2448=$r7, var1038=org.junit.platform.commons.util.StringUtils, var2237=$z0, var2779=$r6, var2428=$r3, var1605=$r4, var2148=$r5, var2840=java.lang.Throwable, var2520=$r8}
; {r1=var3421, null_type=var35, org.opentest4j.TestAbortedException=var449, $r7=var2448, org.junit.platform.commons.util.StringUtils=var1038, $z0=var2237, $r6=var2779, $r3=var2428, $r4=var1605, $r5=var2148, java.lang.Throwable=var2840, $r8=var2520}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r7 = new org.opentest4j.TestAbortedException;	$z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r1);	if $z0 == 0 goto $r5 = "Assumption failed";	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Assumption failed: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= specialinvoke $r7.<org.opentest4j.TestAbortedException: void <init>(java.lang.String)>($r5)];	specialinvoke $r7.<org.opentest4j.TestAbortedException: void <init>(java.lang.String)>($r5);	$r8 = (java.lang.Throwable) $r7;	throw $r8
;block_num 3
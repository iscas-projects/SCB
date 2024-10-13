(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2026 0)
(declare-sort var1088 0)
(declare-sort var3682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1088) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/7803314 (var3682 String) void)
(declare-fun cast-from-var2026-to-var3682 (var2026) var3682)
(declare-fun value/1075412829 (var2026) var1088)
(declare-const null-var2026 var2026)
(declare-const null-var1088 var1088)
(declare-const var2511 var2026) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering$IncomparableValueException 
(assert (not (= var2511 null-var2026)))
(declare-const var3103 var1088) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3103 null-var1088)))
(define-const var3892 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3892)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3892!1 String)
(assert (= var3892!1 ""))
(assert true)
(define-const var2725 String (append/672562846 var3892!1 "Cannot compare value: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot compare value: ") 
(declare-const var3892!2 String)
(assert (= var3892!2 (str.++ var3892!1 "Cannot compare value: ")))
(assert true)
(define-const var2994 String (append/-1031950772 var2725 var3103)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2725!1 String)
(assert (str.prefixof var2725 var2725!1))
(assert true)
(define-const var3061 String (toString/-2075883882 var2994)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/7803314 (cast-from-var2026-to-var3682 var2511) var3061)) ; Statement: specialinvoke r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r5) 

(declare-const var2511!1 var2026)
(declare-const var3061!1 String)
(declare-const var2511!2 var2026)
(assert (not (= var2511!2 null-var2026)))
(assert (= (value/1075412829 var2511!2) var3103)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering$IncomparableValueException: java.lang.Object value> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void), cast-from-var2026-to-var3682=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering$IncomparableValueException], java.lang.ClassCastException), value/1075412829=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering$IncomparableValueException], java.lang.Object)}
; {var2026=com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering$IncomparableValueException, var2511=r0, var1088=java.lang.Object, var3103=r2, var3892=$r1, var2725=$r3, var2994=$r4, var3061=$r5, var3682=java.lang.ClassCastException}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering$IncomparableValueException=var2026, r0=var2511, java.lang.Object=var1088, r2=var3103, $r1=var3892, $r3=var2725, $r4=var2994, $r5=var3061, java.lang.ClassCastException=var3682}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering$IncomparableValueException;	r2 := @parameter0: java.lang.Object;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot compare value: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r5);	r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering$IncomparableValueException: java.lang.Object value> = r2;	return
;block_num 1
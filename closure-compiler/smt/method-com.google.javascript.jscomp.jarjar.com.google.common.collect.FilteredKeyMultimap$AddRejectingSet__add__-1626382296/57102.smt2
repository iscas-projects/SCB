(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1157 0)
(declare-sort var177 0)
(declare-sort var3348 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3348-init () var3348)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/1677369175 (var1157) var177)
(declare-fun append/-1031950772 (String var177) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3348 String) void)
(declare-const null-var1157 var1157)
(declare-const null-var177 var177)
(declare-const var2231 var1157) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet 
(assert (not (= var2231 null-var1157)))
(declare-const var2159 var177) ; Statement: r7 := @parameter0: java.lang.Object 
(assert (not (= var2159 null-var177)))
(define-const var1529 var3348 var3348-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3906 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3906)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3906!1 String)
(assert (= var3906!1 ""))
(assert true)
(define-const var630 String (append/672562846 var3906!1 "Key does not satisfy predicate: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key does not satisfy predicate: ") 
(declare-const var3906!2 String)
(assert (= var3906!2 (str.++ var3906!1 "Key does not satisfy predicate: ")))
(define-const var2260 var177 (key/1677369175 var2231)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet: java.lang.Object key> 
(assert true)
(define-const var570 String (append/-1031950772 var630 var2260)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var630!1 String)
(assert (str.prefixof var630 var630!1))
(assert true)
(define-const var3771 String (toString/-2075883882 var570)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1529 var3771)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var1529!1 var3348)
(declare-const var3771!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3348-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/1677369175=([com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1157=com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet, var2231=r2, var177=java.lang.Object, var2159=r7, var3348=java.lang.IllegalArgumentException, var1529=$r0, var3906=$r1, var630=$r4, var2260=$r3, var570=$r5, var3771=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet=var1157, r2=var2231, java.lang.Object=var177, r7=var2159, java.lang.IllegalArgumentException=var3348, $r0=var1529, $r1=var3906, $r4=var630, $r3=var2260, $r5=var570, $r6=var3771}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet;	r7 := @parameter0: java.lang.Object;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key does not satisfy predicate: ");	$r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.FilteredKeyMultimap$AddRejectingSet: java.lang.Object key>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1
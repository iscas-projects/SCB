(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var414 0)
(declare-sort var2225 0)
(declare-sort var2183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2225-init () var2225)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2183) String)
(declare-fun cast-from-var414-to-var2183 (var414) var2183)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2225 String) void)
(declare-const null-var414 var414)
(declare-const var663 var414) ; Statement: r0 := @parameter0: java.net.URI 
(assert (not (= var663 null-var414)))
(declare-const var3262 var414) ; Statement: r6 := @parameter1: java.net.URI 
(assert (not (= var3262 null-var414)))
 ; Statement: if r0 == null goto $r1 = new java.lang.IllegalArgumentException 
(assert (= var663 null-var414)) ; Cond: r0 == null 
(define-const var2334 var2225 var2225-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var3770 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3770)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3770!1 String)
(assert (= var3770!1 ""))
(assert true)
(define-const var3511 String (append/672562846 var3770!1 "sourcePartUri invalid - ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("sourcePartUri invalid - ") 
(declare-const var3770!2 String)
(assert (= var3770!2 (str.++ var3770!1 "sourcePartUri invalid - ")))
(assert true)
(define-const var429 String (append/-1031950772 var3511 (cast-from-var414-to-var2183 var663))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3511!1 String)
(assert (str.prefixof var3511 var3511!1))
(assert true)
(define-const var1057 String (toString/-2075883882 var429)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2334 var1057)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2334!1 var2225)
(declare-const var1057!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2225-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var414-to-var2183=([java.net.URI], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var414=java.net.URI, var663=r0, var3262=r6, var2225=java.lang.IllegalArgumentException, var2334=$r1, var3770=$r2, var3511=$r3, var2183=java.lang.Object, var429=$r4, var1057=$r5}
; {java.net.URI=var414, r0=var663, r6=var3262, java.lang.IllegalArgumentException=var2225, $r1=var2334, $r2=var3770, $r3=var3511, java.lang.Object=var2183, $r4=var429, $r5=var1057}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URI;	r6 := @parameter1: java.net.URI;	if r0 == null goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("sourcePartUri invalid - ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2
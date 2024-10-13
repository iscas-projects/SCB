(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isEmpty/-1359255117 (var3411) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3411 var3411)
(declare-const var3136 var3411) ; Statement: r2 := @this: com.google.javascript.rhino.HamtPMap 
(assert (not (= var3136 null-var3411)))
(define-const var275 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var275)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var275!1 String)
(assert (= var275!1 ""))
(assert true)
(define-const var669 String (append/672562846 var275!1 "{")) ; Statement: r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var275!2 String)
(assert (= var275!2 (str.++ var275!1 "{")))
(assert true)
(define-const var2290 Bool (isEmpty/-1359255117 var3136)) ; Statement: $z0 = virtualinvoke r2.<com.google.javascript.rhino.HamtPMap: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (not (= (ite var2290 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var942 String (append/672562846 var669 "}")) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var669!1 String)
(assert (= var669!1 (str.++ var669 "}")))
(assert true)
(define-const var3760 String (toString/-2075883882 var942)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isEmpty/-1359255117=([com.google.javascript.rhino.HamtPMap], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3411=com.google.javascript.rhino.HamtPMap, var3136=r2, var275=$r0, var669=r1, var2290=$z0, var942=$r3, var3760=$r4}
; {com.google.javascript.rhino.HamtPMap=var3411, r2=var3136, $r0=var275, r1=var669, $z0=var2290, $r3=var942, $r4=var3760}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.rhino.HamtPMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$z0 = virtualinvoke r2.<com.google.javascript.rhino.HamtPMap: boolean isEmpty()>();	if $z0 != 0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2
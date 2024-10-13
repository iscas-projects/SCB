(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3092 0)
(declare-sort var187 0)
(declare-sort var2674 0)
(declare-sort var1643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toInt/-1916557473 (var187) Int)
(declare-fun var2674-init () var2674)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1643) String)
(declare-fun cast-from-var187-to-var1643 (var187) var1643)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2674 String) void)
(declare-const null-var3092 var3092)
(declare-const null-var187 var187)
(declare-const var3934 var3092) ; Statement: r1 := @this: org.slf4j.Logger 
(assert (not (= var3934 null-var3092)))
(declare-const var2668 var187) ; Statement: r0 := @parameter0: org.slf4j.event.Level 
(assert (not (= var2668 null-var187)))
(assert true)
(define-const var1175 Int (toInt/-1916557473 var2668)) ; Statement: i0 = virtualinvoke r0.<org.slf4j.event.Level: int toInt()>() 
 ; Statement: lookupswitch(i0) {     case 0: goto $z4 = interfaceinvoke r1.<org.slf4j.Logger: boolean isTraceEnabled()>();     case 10: goto $z3 = interfaceinvoke r1.<org.slf4j.Logger: boolean isDebugEnabled()>();     case 20: goto $z2 = interfaceinvoke r1.<org.slf4j.Logger: boolean isInfoEnabled()>();     case 30: goto $z1 = interfaceinvoke r1.<org.slf4j.Logger: boolean isWarnEnabled()>();     case 40: goto $z0 = interfaceinvoke r1.<org.slf4j.Logger: boolean isErrorEnabled()>();     default: goto $r2 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1175 40)) (and (not (= var1175 30)) (and (not (= var1175 20)) (and (not (= var1175 10)) (and (not (= var1175 0)) true)))))) ; Intersect: Negate: Cond: i0 == 40   and Intersect: Negate: Cond: i0 == 30   and Intersect: Negate: Cond: i0 == 20   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 0   and Non Conditional     
(define-const var442 var2674 var2674-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var3708 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3708)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3708!1 String)
(assert (= var3708!1 ""))
(assert true)
(define-const var3008 String (append/672562846 var3708!1 "Level [")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Level [") 
(declare-const var3708!2 String)
(assert (= var3708!2 (str.++ var3708!1 "Level [")))
(assert true)
(define-const var3252 String (append/-1031950772 var3008 (cast-from-var187-to-var1643 var2668))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3008!1 String)
(assert (str.prefixof var3008 var3008!1))
(assert true)
(define-const var695 String (append/672562846 var3252 "] not recognized.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not recognized.") 
(declare-const var3252!1 String)
(assert (= var3252!1 (str.++ var3252 "] not recognized.")))
(assert true)
(define-const var2680 String (toString/-2075883882 var695)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var442 var2680)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var442!1 var2674)
(declare-const var2680!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toInt/-1916557473=([org.slf4j.event.Level], int), var2674-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var187-to-var1643=([org.slf4j.event.Level], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3092=org.slf4j.Logger, var3934=r1, var187=org.slf4j.event.Level, var2668=r0, var1175=i0, var2674=java.lang.IllegalArgumentException, var442=$r2, var3708=$r3, var3008=$r4, var1643=java.lang.Object, var3252=$r5, var695=$r6, var2680=$r7}
; {org.slf4j.Logger=var3092, r1=var3934, org.slf4j.event.Level=var187, r0=var2668, i0=var1175, java.lang.IllegalArgumentException=var2674, $r2=var442, $r3=var3708, $r4=var3008, java.lang.Object=var1643, $r5=var3252, $r6=var695, $r7=var2680}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.slf4j.Logger;	r0 := @parameter0: org.slf4j.event.Level;	i0 = virtualinvoke r0.<org.slf4j.event.Level: int toInt()>();	lookupswitch(i0) {     case 0: goto $z4 = interfaceinvoke r1.<org.slf4j.Logger: boolean isTraceEnabled()>();     case 10: goto $z3 = interfaceinvoke r1.<org.slf4j.Logger: boolean isDebugEnabled()>();     case 20: goto $z2 = interfaceinvoke r1.<org.slf4j.Logger: boolean isInfoEnabled()>();     case 30: goto $z1 = interfaceinvoke r1.<org.slf4j.Logger: boolean isWarnEnabled()>();     case 40: goto $z0 = interfaceinvoke r1.<org.slf4j.Logger: boolean isErrorEnabled()>();     default: goto $r2 = new java.lang.IllegalArgumentException; };	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Level [");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not recognized.");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 2
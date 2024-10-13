(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var930 0)
(declare-sort var1087 0)
(declare-sort var128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var128_err/-1643834807 (String) void)
(declare-const null-var930 var930)
(declare-const null-var1087 var1087)
(declare-const var2405 var930) ; Statement: r14 := @parameter0: jdk.nashorn.internal.runtime.logging.DebugLogger 
(assert (not (= var2405 null-var930)))
(declare-const var3555 var1087) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var3555 null-var1087)))
(define-const var2715 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2715)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2715!1 String)
(assert (= var2715!1 ""))
(assert true)
(define-const var546 String (append/672562846 var2715!1 "    return")) ; Statement: $r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    return") 
(declare-const var2715!2 String)
(assert (= var2715!2 (str.++ var2715!1 "    return")))
(define-const var2213 String "[VOID]") ; Statement: $r2 = "[VOID]" 
(assert true)
(define-const var2741 Bool false) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var2741 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1164 String ";") ; Statement: $r17 = ";" 
 ; Statement: goto [?= $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3013 String (append/672562846 var546 var1164)) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var546!1 String)
(assert (= var546!1 (str.++ var546 var1164)))
(assert true)
(define-const var3743 String (toString/-2075883882 var3013)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if r14 != null goto $z1 = virtualinvoke r14.<jdk.nashorn.internal.runtime.logging.DebugLogger: boolean isEnabled()>() 
(assert (not (not (= var2405 null-var930)))) ; Negate: Cond: r14 != null  
;(assert (var128_err/-1643834807 var3743)) ; Statement: staticinvoke <jdk.nashorn.internal.lookup.MethodHandleFactory: void err(java.lang.String)>($r20) 

(declare-const var3743!1 String)
 ; Statement: goto [?= return r1] 
(assert true) ; Non Conditional
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var128_err/-1643834807=([java.lang.String], void)}
; {var930=jdk.nashorn.internal.runtime.logging.DebugLogger, var2405=r14, var1087=java.lang.Object, var3555=r1, var2715=$r0, var546=$r16, var2213=$r2, var2741=$z0, var1164=$r17, var3013=$r19, var3743=$r20, var128=jdk.nashorn.internal.lookup.MethodHandleFactory}
; {jdk.nashorn.internal.runtime.logging.DebugLogger=var930, r14=var2405, java.lang.Object=var1087, r1=var3555, $r0=var2715, $r16=var546, $r2=var2213, $z0=var2741, $r17=var1164, $r19=var3013, $r20=var3743, jdk.nashorn.internal.lookup.MethodHandleFactory=var128}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @parameter0: jdk.nashorn.internal.runtime.logging.DebugLogger;	r1 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    return");	$r2 = "[VOID]";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r17 = ";";	goto [?= $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)];	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	if r14 != null goto $z1 = virtualinvoke r14.<jdk.nashorn.internal.runtime.logging.DebugLogger: boolean isEnabled()>();	staticinvoke <jdk.nashorn.internal.lookup.MethodHandleFactory: void err(java.lang.String)>($r20);	goto [?= return r1];	return r1
;block_num 5
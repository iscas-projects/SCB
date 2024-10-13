(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2968 0)
(declare-sort var1608 0)
(declare-sort var1806 0)
(declare-sort var2865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-1028337540 (var2968) var1608)
(declare-fun cast-from-var1608-to-var1806 (var1608) var1806)
(declare-fun future/-1065397635 (var1806) var2865)
(declare-fun appendUserObject/1349734228 (var2968 String var1608) void)
(declare-fun cast-from-var2865-to-var1608 (var2865) var1608)
(declare-fun isDone/166279675 (var2968) Bool)
(declare-const null-var2968 var2968)
(declare-const null-String String)
(declare-const var2767 var2968) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture 
(assert (not (= var2767 null-var2968)))
(declare-const var1271 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1271 null-String)))
(assert true)
(define-const var1987 Int (length/-171891354 var1271)) ; Statement: i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert true)
;(assert (append/672562846 var1271 "PENDING")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PENDING") 
(declare-const var1271!1 String)
(assert (= var1271!1 (str.++ var1271 "PENDING")))
(define-const var2690 var1608 (value/-1028337540 var2767)) ; Statement: r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: java.lang.Object value> 
(define-const var1430 Bool false) ; Statement: $z0 = r2 instanceof com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture$SetFuture 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: java.lang.String pendingToString()>() 
(assert (not (= (ite var1430 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/672562846 var1271!1 ", setFuture=[")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", setFuture=[") 
(declare-const var1271!2 String)
(assert (= var1271!2 (str.++ var1271!1 ", setFuture=[")))
(define-const var3792 var1806 (cast-from-var1608-to-var1806 var2690)) ; Statement: $r6 = (com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture$SetFuture) r2 
(define-const var2275 var2865 (future/-1065397635 var3792)) ; Statement: $r7 = $r6.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture$SetFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture future> 
(assert true)
;(assert (appendUserObject/1349734228 var2767 var1271!2 (cast-from-var2865-to-var1608 var2275))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: void appendUserObject(java.lang.StringBuilder,java.lang.Object)>(r0, $r7) 

(declare-const var2767!1 var2968)
(declare-const var1271!3 String)
(declare-const var2275!1 var2865)
(assert true)
;(assert (append/672562846 var1271!3 "]")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1271!4 String)
(assert (= var1271!4 (str.++ var1271!3 "]")))
 ; Statement: goto [?= $z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isDone()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var364 Bool (isDone/166279675 var2767!1)) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isDone()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var364 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-1028337540=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], java.lang.Object), cast-from-var1608-to-var1806=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture$SetFuture), future/-1065397635=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture$SetFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture), appendUserObject/1349734228=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, java.lang.StringBuilder, java.lang.Object], void), cast-from-var2865-to-var1608=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture], java.lang.Object), isDone/166279675=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], boolean)}
; {var2968=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var2767=r1, var1271=r0, var1987=i0, var1608=java.lang.Object, var2690=r2, var1430=$z0, var1806=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture$SetFuture, var3792=$r6, var2865=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture, var2275=$r7, var364=$z1}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var2968, r1=var2767, r0=var1271, i0=var1987, java.lang.Object=var1608, r2=var2690, $z0=var1430, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture$SetFuture=var1806, $r6=var3792, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture=var2865, $r7=var2275, $z1=var364}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture;	r0 := @parameter0: java.lang.StringBuilder;	i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PENDING");	r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: java.lang.Object value>;	$z0 = r2 instanceof com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture$SetFuture;	if $z0 == 0 goto $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: java.lang.String pendingToString()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", setFuture=[");	$r6 = (com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture$SetFuture) r2;	$r7 = $r6.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture$SetFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture future>;	specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: void appendUserObject(java.lang.StringBuilder,java.lang.Object)>(r0, $r7);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	goto [?= $z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isDone()>()];	$z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isDone()>();	if $z1 == 0 goto return;	return
;block_num 4
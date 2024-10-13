(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2370 0)
(declare-sort var1956 0)
(declare-sort var2611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1956_requireNonNull/1378936425 (var2611 String) var2611)
(declare-fun cast-from-var2370-to-var2611 (var2370) var2611)
(declare-fun exists/1072868559 (var2370) Bool)
(declare-const null-var2370 var2370)
(declare-const var175 var2370) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var175 null-var2370)))
(declare-const var2443 var2370) ; Statement: r1 := @parameter1: java.io.File 
(assert (not (= var2443 null-var2370)))
;(assert (var1956_requireNonNull/1378936425 (cast-from-var2370-to-var2611 var175) "source")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "source") 

(declare-const var175!1 var2370)
(declare-const var3539 String)
;(assert (var1956_requireNonNull/1378936425 (cast-from-var2370-to-var2611 var2443) "destination")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "destination") 

(declare-const var2443!1 var2370)
(declare-const var112 String)
(assert true)
(define-const var1206 Bool (exists/1072868559 var175!1)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1206 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1956_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var2370-to-var2611=([java.io.File], java.lang.Object), exists/1072868559=([java.io.File], boolean)}
; {var2370=java.io.File, var175=r0, var2443=r1, var1956=java.util.Objects, var2611=java.lang.Object, var3539="source", var112="destination", var1206=$z0}
; {java.io.File=var2370, r0=var175, r1=var2443, java.util.Objects=var1956, java.lang.Object=var2611, "source"=var3539, "destination"=var112, $z0=var1206}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.File;	r1 := @parameter1: java.io.File;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "source");	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "destination");	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto return;	return
;block_num 2
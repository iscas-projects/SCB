(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1277 0)
(declare-sort var3044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1277_getKey/-33423493 (var1277) var3044)
(declare-fun cast-from-var3044-to-String (var3044) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1277 var1277)
(declare-const var3378 var1277) ; Statement: r0 := @parameter0: java.util.Map$Entry 
(assert (not (= var3378 null-var1277)))
(define-const var3903 var3044 (var1277_getKey/-33423493 var3378)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var556 String (cast-from-var3044-to-String var3903)) ; Statement: $r4 = (java.lang.String) $r1 
(define-const var1200 var3044 (var1277_getKey/-33423493 var3378)) ; Statement: $r2 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var2160 String (cast-from-var3044-to-String var1200)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
(define-const var1473 Int (lastIndexOf/-1292097097 var2160 58)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int lastIndexOf(int)>(58) 
(define-const var1994 Int (+ var1473 1)) ; Statement: $i1 = $i0 + 1 
(assert (not (and true (and (>= var1994 0) (>= (str.len var556) var1994)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1277_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var3044-to-String=([java.lang.Object], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1277=java.util.Map$Entry, var3378=r0, var3044=java.lang.Object, var3903=$r1, var556=$r4, var1200=$r2, var2160=$r3, var1473=$i0, var1994=$i1, var1374=$r5}
; {java.util.Map$Entry=var1277, r0=var3378, java.lang.Object=var3044, $r1=var3903, $r4=var556, $r2=var1200, $r3=var2160, $i0=var1473, $i1=var1994, $r5=var1374}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.util.Map$Entry;	$r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getKey()>();	$r4 = (java.lang.String) $r1;	$r2 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getKey()>();	$r3 = (java.lang.String) $r2;	$i0 = virtualinvoke $r3.<java.lang.String: int lastIndexOf(int)>(58);	$i1 = $i0 + 1;	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int)>($i1);	return $r5
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-785660172 (var2420) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2420 var2420)
(declare-const var1509 var2420) ; Statement: r0 := @this: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var1509 null-var2420)))
(declare-const var3835 var2420) ; Statement: r1 := @parameter0: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var3835 null-var2420)))
(define-const var1899 String (name/-785660172 var1509)) ; Statement: $r3 = r0.<jdk.nashorn.internal.ir.Symbol: java.lang.String name> 
(define-const var1825 String (name/-785660172 var3835)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String name> 
(assert true)
(define-const var690 Int (compareTo/1411385946 var1899 var1825)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var1899 var1825)) (this<=other (str.<= var1899 var1825)) (compareRes (compareTo/1411385946 var1899 var1825))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-785660172=([jdk.nashorn.internal.ir.Symbol], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2420=jdk.nashorn.internal.ir.Symbol, var1509=r0, var3835=r1, var1899=$r3, var1825=$r2, var690=$i0}
; {jdk.nashorn.internal.ir.Symbol=var2420, r0=var1509, r1=var3835, $r3=var1899, $r2=var1825, $i0=var690}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.Symbol;	r1 := @parameter0: jdk.nashorn.internal.ir.Symbol;	$r3 = r0.<jdk.nashorn.internal.ir.Symbol: java.lang.String name>;	$r2 = r1.<jdk.nashorn.internal.ir.Symbol: java.lang.String name>;	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1
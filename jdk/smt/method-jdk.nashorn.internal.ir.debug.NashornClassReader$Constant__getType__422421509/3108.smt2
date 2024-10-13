(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3530 0)
(declare-sort var989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var989_access$000/-102013243 () (Array Int String))
(declare-fun tag/-1593354951 (var3530) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3530 var3530)
(declare-const var2243 var3530) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.NashornClassReader$Constant 
(assert (not (= var2243 null-var3530)))
(define-const var2872 (Array Int String) var989_access$000/-102013243) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.ir.debug.NashornClassReader: java.lang.String[] access$000()>() 
(define-const var2327 Int (tag/-1593354951 var2243)) ; Statement: $i0 = r0.<jdk.nashorn.internal.ir.debug.NashornClassReader$Constant: int tag> 
(define-const var110 String (select var2872 var2327)) ; Statement: r5 = $r1[$i0] 
(assert true) ; Non Conditional
(assert true)
(define-const var3597 Int (length/-134980193 var110)) ; Statement: $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
 ; Statement: if $i1 >= 16 goto return r5 
(assert (>= var3597 16)) ; Cond: $i1 >= 16 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var989_access$000/-102013243=([], java.lang.String[]), tag/-1593354951=([jdk.nashorn.internal.ir.debug.NashornClassReader$Constant], int), length/-134980193=([java.lang.String], int)}
; {var3530=jdk.nashorn.internal.ir.debug.NashornClassReader$Constant, var2243=r0, var989=jdk.nashorn.internal.ir.debug.NashornClassReader, var2872=$r1, var2327=$i0, var110=r5, var3597=$i1}
; {jdk.nashorn.internal.ir.debug.NashornClassReader$Constant=var3530, r0=var2243, jdk.nashorn.internal.ir.debug.NashornClassReader=var989, $r1=var2872, $i0=var2327, r5=var110, $i1=var3597}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.NashornClassReader$Constant;	$r1 = staticinvoke <jdk.nashorn.internal.ir.debug.NashornClassReader: java.lang.String[] access$000()>();	$i0 = r0.<jdk.nashorn.internal.ir.debug.NashornClassReader$Constant: int tag>;	r5 = $r1[$i0];	$i1 = virtualinvoke r5.<java.lang.String: int length()>();	if $i1 >= 16 goto return r5;	return r5
;block_num 3
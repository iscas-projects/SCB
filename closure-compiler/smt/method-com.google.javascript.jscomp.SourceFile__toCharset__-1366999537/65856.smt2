(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var529 0)
(declare-sort var1267 0)
(declare-sort var3123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var3123-UTF_8 var1267)
(declare-const var3754 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3754 null-String)))
(assert true)
(define-const var3152 Bool (isEmpty/-1285796103 var3754)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset forName(java.lang.String)>(r0) 
(assert (not (= (ite var3152 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3055 var1267 var3123-UTF_8) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3754=r0, var529=null_type, var3152=$z0, var1267=java.nio.charset.Charset, var3123=java.nio.charset.StandardCharsets, var3055=$r2}
; {r0=var3754, null_type=var529, $z0=var3152, java.nio.charset.Charset=var1267, java.nio.charset.StandardCharsets=var3123, $r2=var3055}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset forName(java.lang.String)>(r0);	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	return $r2
;block_num 2
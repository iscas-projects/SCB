(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1997898014 (var3631) String)
(declare-fun length/-171891354 (String) Int)
(declare-const null-var3631 var3631)
(declare-const var1978 var3631) ; Statement: r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer 
(assert (not (= var1978 null-var3631)))
(define-const var1845 String (buffer/1997898014 var1978)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer> 
(assert true)
(define-const var809 Int (length/-171891354 var1845)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1997898014=([com.github.jknack.handlebars.Options$InMemoryBuffer], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var3631=com.github.jknack.handlebars.Options$InMemoryBuffer, var1978=r0, var1845=$r1, var809=$i0}
; {com.github.jknack.handlebars.Options$InMemoryBuffer=var3631, r0=var1978, $r1=var1845, $i0=var809}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer;	$r1 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	return $i0
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$buf/-431562381 (var1734) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1734 var1734)
(declare-const null-Int Int)
(declare-const var1251 var1734) ; Statement: r0 := @this: cn.hutool.log.dialect.slf4j.Slf4jLogFactory$1 
(assert (not (= var1251 null-var1734)))
(declare-const var1229 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1229 null-Int)))
(define-const var2124 String (val$buf/-431562381 var1251)) ; Statement: $r1 = r0.<cn.hutool.log.dialect.slf4j.Slf4jLogFactory$1: java.lang.StringBuilder val$buf> 
(define-const var292 Int (cast-from-Int-to-Int var1229)) ; Statement: $c1 = (char) i0 
(assert true)
;(assert (append/-1166366385 var2124 var292)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2124!1 String)
(assert (str.prefixof var2124 var2124!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {val$buf/-431562381=([cn.hutool.log.dialect.slf4j.Slf4jLogFactory$1], java.lang.StringBuilder), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1734=cn.hutool.log.dialect.slf4j.Slf4jLogFactory$1, var1251=r0, var1229=i0, var2124=$r1, var292=$c1}
; {cn.hutool.log.dialect.slf4j.Slf4jLogFactory$1=var1734, r0=var1251, i0=var1229, $r1=var2124, $c1=var292}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: cn.hutool.log.dialect.slf4j.Slf4jLogFactory$1;	i0 := @parameter0: int;	$r1 = r0.<cn.hutool.log.dialect.slf4j.Slf4jLogFactory$1: java.lang.StringBuilder val$buf>;	$c1 = (char) i0;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	return
;block_num 1
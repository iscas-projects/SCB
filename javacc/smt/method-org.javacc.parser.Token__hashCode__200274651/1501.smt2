(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/197050796 (var1279) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1279 var1279)
(declare-const var2446 var1279) ; Statement: r0 := @this: org.javacc.parser.Token 
(assert (not (= var2446 null-var1279)))
(define-const var1086 String (image/197050796 var2446)) ; Statement: $r1 = r0.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var2002 Int (hashCode/-467973558 var1086)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {image/197050796=([org.javacc.parser.Token], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1279=org.javacc.parser.Token, var2446=r0, var1086=$r1, var2002=$i0}
; {org.javacc.parser.Token=var1279, r0=var2446, $r1=var1086, $i0=var2002}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.javacc.parser.Token;	$r1 = r0.<org.javacc.parser.Token: java.lang.String image>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1
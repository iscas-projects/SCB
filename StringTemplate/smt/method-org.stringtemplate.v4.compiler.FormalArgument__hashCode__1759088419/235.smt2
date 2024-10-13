(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2815 0)
(declare-sort var2203 0)
(declare-sort var3288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-597608604 (var2815) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun defaultValueToken/-597608604 (var2815) var2203)
(declare-fun hashCode/1739917532 (var3288) Int)
(declare-fun cast-from-var2203-to-var3288 (var2203) var3288)
(declare-const null-var2815 var2815)
(declare-const var2940 var2815) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.FormalArgument 
(assert (not (= var2940 null-var2815)))
(define-const var3047 String (name/-597608604 var2940)) ; Statement: $r1 = r0.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name> 
(assert true)
(define-const var3549 Int (hashCode/-467973558 var3047)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var342 var2203 (defaultValueToken/-597608604 var2940)) ; Statement: $r2 = r0.<org.stringtemplate.v4.compiler.FormalArgument: org.antlr.runtime.Token defaultValueToken> 
(assert true)
(define-const var1188 Int (hashCode/1739917532 (cast-from-var2203-to-var3288 var342))) ; Statement: $i0 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(define-const var2406 Int (+ var3549 var1188)) ; Statement: $i2 = $i1 + $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-597608604=([org.stringtemplate.v4.compiler.FormalArgument], java.lang.String), hashCode/-467973558=([java.lang.String], int), defaultValueToken/-597608604=([org.stringtemplate.v4.compiler.FormalArgument], org.antlr.runtime.Token), hashCode/1739917532=([java.lang.Object], int), cast-from-var2203-to-var3288=([org.antlr.runtime.Token], java.lang.Object)}
; {var2815=org.stringtemplate.v4.compiler.FormalArgument, var2940=r0, var3047=$r1, var3549=$i1, var2203=org.antlr.runtime.Token, var342=$r2, var3288=java.lang.Object, var1188=$i0, var2406=$i2}
; {org.stringtemplate.v4.compiler.FormalArgument=var2815, r0=var2940, $r1=var3047, $i1=var3549, org.antlr.runtime.Token=var2203, $r2=var342, java.lang.Object=var3288, $i0=var1188, $i2=var2406}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.FormalArgument;	$r1 = r0.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name>;	$i1 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<org.stringtemplate.v4.compiler.FormalArgument: org.antlr.runtime.Token defaultValueToken>;	$i0 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	$i2 = $i1 + $i0;	return $i2
;block_num 1
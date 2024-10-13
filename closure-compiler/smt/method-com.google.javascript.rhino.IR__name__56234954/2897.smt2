(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3054 0)
(declare-sort var2952 0)
(declare-sort var3160 0)
(declare-sort var3952 0)
(declare-sort var247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2952_checkState/1095365836 (Bool String var3160) void)
(declare-fun cast-from-String-to-var3160 (String) var3160)
(declare-fun var247_newString/674291083 (var3952 String) var247)
(declare-const null-String String)
(declare-const var3952-NAME var3952)
(declare-const var1262 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1262 null-String)))
(assert true)
(define-const var1329 Int (indexOf/-1037706067 var1262 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var3981 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $z0 = 0 
(assert (not (= var1329 var3981))) ; Cond: $i0 != $i2 
(define-const var1619 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var2952_checkState/1095365836 var1619 "Invalid name \u0027%s\u0027. Did you mean to use NodeUtil.newQName?" (cast-from-String-to-var3160 var1262))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z0, "Invalid name \'%s\'. Did you mean to use NodeUtil.newQName?", r0) 

(declare-const var1619!1 Bool)
(declare-const var3752 String)
(declare-const var1262!1 String)
(define-const var3862 var3952 var3952-NAME) ; Statement: $r1 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NAME> 
(define-const var2605 var247 (var247_newString/674291083 var3862 var1262!1)) ; Statement: $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(com.google.javascript.rhino.Token,java.lang.String)>($r1, r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var2952_checkState/1095365836=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var3160=([java.lang.String], java.lang.Object), var247_newString/674291083=([com.google.javascript.rhino.Token, java.lang.String], com.google.javascript.rhino.Node)}
; {var1262=r0, var3054=null_type, var1329=$i0, var3981=$i2, var1619=$z0, var2952=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3160=java.lang.Object, var3752="Invalid name \'%s\'. Did you mean to use NodeUtil.newQName?", var3952=com.google.javascript.rhino.Token, var3862=$r1, var247=com.google.javascript.rhino.Node, var2605=$r2}
; {r0=var1262, null_type=var3054, $i0=var1329, $i2=var3981, $z0=var1619, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2952, java.lang.Object=var3160, "Invalid name \'%s\'. Did you mean to use NodeUtil.newQName?"=var3752, com.google.javascript.rhino.Token=var3952, $r1=var3862, com.google.javascript.rhino.Node=var247, $r2=var2605}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if $i0 != $i2 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z0, "Invalid name \'%s\'. Did you mean to use NodeUtil.newQName?", r0);	$r1 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NAME>;	$r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(com.google.javascript.rhino.Token,java.lang.String)>($r1, r0);	return $r2
;block_num 3
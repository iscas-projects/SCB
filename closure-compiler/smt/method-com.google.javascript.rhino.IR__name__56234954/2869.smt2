(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var592 0)
(declare-sort var2022 0)
(declare-sort var1028 0)
(declare-sort var613 0)
(declare-sort var314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2022_checkState/1095365836 (Bool String var1028) void)
(declare-fun cast-from-String-to-var1028 (String) var1028)
(declare-fun var314_newString/674291083 (var613 String) var314)
(declare-const null-String String)
(declare-const var613-NAME var613)
(declare-const var2075 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2075 null-String)))
(assert true)
(define-const var186 Int (indexOf/-1037706067 var2075 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var1732 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $z0 = 0 
(assert (not (not (= var186 var1732)))) ; Negate: Cond: $i0 != $i2  
(define-const var1299 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z0, "Invalid name \'%s\'. Did you mean to use NodeUtil.newQName?", r0)] 
(assert true) ; Non Conditional
;(assert (var2022_checkState/1095365836 var1299 "Invalid name \u0027%s\u0027. Did you mean to use NodeUtil.newQName?" (cast-from-String-to-var1028 var2075))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z0, "Invalid name \'%s\'. Did you mean to use NodeUtil.newQName?", r0) 

(declare-const var1299!1 Bool)
(declare-const var2920 String)
(declare-const var2075!1 String)
(define-const var2407 var613 var613-NAME) ; Statement: $r1 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NAME> 
(define-const var3057 var314 (var314_newString/674291083 var2407 var2075!1)) ; Statement: $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(com.google.javascript.rhino.Token,java.lang.String)>($r1, r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var2022_checkState/1095365836=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var1028=([java.lang.String], java.lang.Object), var314_newString/674291083=([com.google.javascript.rhino.Token, java.lang.String], com.google.javascript.rhino.Node)}
; {var2075=r0, var592=null_type, var186=$i0, var1732=$i2, var1299=$z0, var2022=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1028=java.lang.Object, var2920="Invalid name \'%s\'. Did you mean to use NodeUtil.newQName?", var613=com.google.javascript.rhino.Token, var2407=$r1, var314=com.google.javascript.rhino.Node, var3057=$r2}
; {r0=var2075, null_type=var592, $i0=var186, $i2=var1732, $z0=var1299, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2022, java.lang.Object=var1028, "Invalid name \'%s\'. Did you mean to use NodeUtil.newQName?"=var2920, com.google.javascript.rhino.Token=var613, $r1=var2407, com.google.javascript.rhino.Node=var314, $r2=var3057}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if $i0 != $i2 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z0, "Invalid name \'%s\'. Did you mean to use NodeUtil.newQName?", r0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z0, "Invalid name \'%s\'. Did you mean to use NodeUtil.newQName?", r0);	$r1 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NAME>;	$r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(com.google.javascript.rhino.Token,java.lang.String)>($r1, r0);	return $r2
;block_num 3
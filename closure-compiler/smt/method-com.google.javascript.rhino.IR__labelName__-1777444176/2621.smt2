(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1017 0)
(declare-sort var2803 0)
(declare-sort var3544 0)
(declare-sort var280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2803_checkState/1431124798 (Bool) void)
(declare-fun var280_newString/674291083 (var3544 String) var280)
(declare-const null-String String)
(declare-const var3544-LABEL_NAME var3544)
(declare-const var754 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var754 null-String)))
(assert true)
(define-const var1139 Bool (isEmpty/-1285796103 var754)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1139 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3163 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var2803_checkState/1431124798 var3163)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var3163!1 Bool)
(define-const var1599 var3544 var3544-LABEL_NAME) ; Statement: $r1 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LABEL_NAME> 
(define-const var1977 var280 (var280_newString/674291083 var1599 var754)) ; Statement: $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(com.google.javascript.rhino.Token,java.lang.String)>($r1, r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var2803_checkState/1431124798=([boolean], void), var280_newString/674291083=([com.google.javascript.rhino.Token, java.lang.String], com.google.javascript.rhino.Node)}
; {var754=r0, var1017=null_type, var1139=$z0, var3163=$z1, var2803=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3544=com.google.javascript.rhino.Token, var1599=$r1, var280=com.google.javascript.rhino.Node, var1977=$r2}
; {r0=var754, null_type=var1017, $z0=var1139, $z1=var3163, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2803, com.google.javascript.rhino.Token=var3544, $r1=var1599, com.google.javascript.rhino.Node=var280, $r2=var1977}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r1 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LABEL_NAME>;	$r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(com.google.javascript.rhino.Token,java.lang.String)>($r1, r0);	return $r2
;block_num 3
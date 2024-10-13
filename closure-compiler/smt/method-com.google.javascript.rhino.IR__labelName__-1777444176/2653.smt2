(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var765 0)
(declare-sort var753 0)
(declare-sort var3304 0)
(declare-sort var3794 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var753_checkState/1431124798 (Bool) void)
(declare-fun var3794_newString/674291083 (var3304 String) var3794)
(declare-const null-String String)
(declare-const var3304-LABEL_NAME var3304)
(declare-const var2149 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2149 null-String)))
(assert true)
(define-const var3434 Bool (isEmpty/-1285796103 var2149)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var3434 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1396 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var753_checkState/1431124798 var1396)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var1396!1 Bool)
(define-const var2959 var3304 var3304-LABEL_NAME) ; Statement: $r1 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LABEL_NAME> 
(define-const var3314 var3794 (var3794_newString/674291083 var2959 var2149)) ; Statement: $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(com.google.javascript.rhino.Token,java.lang.String)>($r1, r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var753_checkState/1431124798=([boolean], void), var3794_newString/674291083=([com.google.javascript.rhino.Token, java.lang.String], com.google.javascript.rhino.Node)}
; {var2149=r0, var765=null_type, var3434=$z0, var1396=$z1, var753=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3304=com.google.javascript.rhino.Token, var2959=$r1, var3794=com.google.javascript.rhino.Node, var3314=$r2}
; {r0=var2149, null_type=var765, $z0=var3434, $z1=var1396, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var753, com.google.javascript.rhino.Token=var3304, $r1=var2959, com.google.javascript.rhino.Node=var3794, $r2=var3314}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r1 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LABEL_NAME>;	$r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(com.google.javascript.rhino.Token,java.lang.String)>($r1, r0);	return $r2
;block_num 3
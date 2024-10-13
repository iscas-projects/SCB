(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2893 0)
(declare-sort var1128 0)
(declare-sort var3542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var1128_get/-1216255739 (var1128 Int) var3542)
(declare-fun var2893_bind/192296063 (var2893 String var3542) var3542)
(declare-const null-var2893 var2893)
(declare-const null-var1128 var1128)
(declare-const null-Int Int)
(declare-const var1145 var2893) ; Statement: r0 := @this: com.mysql.cj.xdevapi.Statement 
(assert (not (= var1145 null-var2893)))
(declare-const var666 var1128) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var666 null-var1128)))
(declare-const var1549 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1549 null-Int)))
(define-const var1119 String (String_valueOf/1240665136 var1549)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(define-const var1474 var3542 (var1128_get/-1216255739 var666 var1549)) ; Statement: $r2 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(i0) 
;(assert (var2893_bind/192296063 var1145 var1119 var1474)) ; Statement: interfaceinvoke r0.<com.mysql.cj.xdevapi.Statement: java.lang.Object bind(java.lang.String,java.lang.Object)>($r3, $r2) 

(declare-const var1145!1 var2893)
(declare-const var1119!1 String)
(declare-const var1474!1 var3542)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), var1128_get/-1216255739=([java.util.List, int], java.lang.Object), var2893_bind/192296063=([com.mysql.cj.xdevapi.Statement, java.lang.String, java.lang.Object], java.lang.Object)}
; {var2893=com.mysql.cj.xdevapi.Statement, var1145=r0, var1128=java.util.List, var666=r1, var1549=i0, var1119=$r3, var3542=java.lang.Object, var1474=$r2}
; {com.mysql.cj.xdevapi.Statement=var2893, r0=var1145, java.util.List=var1128, r1=var666, i0=var1549, $r3=var1119, java.lang.Object=var3542, $r2=var1474}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.Statement;	r1 := @parameter0: java.util.List;	i0 := @parameter1: int;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r2 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(i0);	interfaceinvoke r0.<com.mysql.cj.xdevapi.Statement: java.lang.Object bind(java.lang.String,java.lang.Object)>($r3, $r2);	return
;block_num 1
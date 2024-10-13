(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1878 0)
(declare-sort var2861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1878 var1878)
(declare-const null-String String)
(declare-const var3625 var1878) ; Statement: r2 := @this: org.apache.log4j.lf5.util.LogFileParser 
(assert (not (= var3625 null-var1878)))
(declare-const var3634 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3634 null-String)))
(declare-const var3466 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3466 null-String)))
(assert true)
(define-const var3985 Int (indexOf/-1209756239 var3466 var3634)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(define-const var1246 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r3 = specialinvoke r2.<org.apache.log4j.lf5.util.LogFileParser: java.lang.String getAttribute(int,java.lang.String)>(i0, r0) 
(assert (not (not (= var3985 var1246)))) ; Negate: Cond: i0 != $i2  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var1878=org.apache.log4j.lf5.util.LogFileParser, var3625=r2, var3634=r1, var2861=null_type, var3466=r0, var3985=i0, var1246=$i2}
; {org.apache.log4j.lf5.util.LogFileParser=var1878, r2=var3625, r1=var3634, null_type=var2861, r0=var3466, i0=var3985, $i2=var1246}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.log4j.lf5.util.LogFileParser;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	$i2 = (int) -1;	if i0 != $i2 goto $r3 = specialinvoke r2.<org.apache.log4j.lf5.util.LogFileParser: java.lang.String getAttribute(int,java.lang.String)>(i0, r0);	return null
;block_num 2
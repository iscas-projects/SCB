(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var881 0)
(declare-sort var436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getAttribute/-226365736 (var881 Int String) String)
(declare-const null-var881 var881)
(declare-const null-String String)
(declare-const var3969 var881) ; Statement: r2 := @this: org.apache.log4j.lf5.util.LogFileParser 
(assert (not (= var3969 null-var881)))
(declare-const var76 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var76 null-String)))
(declare-const var64 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var64 null-String)))
(assert true)
(define-const var3407 Int (indexOf/-1209756239 var64 var76)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(define-const var147 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r3 = specialinvoke r2.<org.apache.log4j.lf5.util.LogFileParser: java.lang.String getAttribute(int,java.lang.String)>(i0, r0) 
(assert (not (= var3407 var147))) ; Cond: i0 != $i2 
(assert true)
(define-const var800 String (getAttribute/-226365736 var3969 var3407 var64)) ; Statement: $r3 = specialinvoke r2.<org.apache.log4j.lf5.util.LogFileParser: java.lang.String getAttribute(int,java.lang.String)>(i0, r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), getAttribute/-226365736=([org.apache.log4j.lf5.util.LogFileParser, int, java.lang.String], java.lang.String)}
; {var881=org.apache.log4j.lf5.util.LogFileParser, var3969=r2, var76=r1, var436=null_type, var64=r0, var3407=i0, var147=$i2, var800=$r3}
; {org.apache.log4j.lf5.util.LogFileParser=var881, r2=var3969, r1=var76, null_type=var436, r0=var64, i0=var3407, $i2=var147, $r3=var800}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.log4j.lf5.util.LogFileParser;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	$i2 = (int) -1;	if i0 != $i2 goto $r3 = specialinvoke r2.<org.apache.log4j.lf5.util.LogFileParser: java.lang.String getAttribute(int,java.lang.String)>(i0, r0);	$r3 = specialinvoke r2.<org.apache.log4j.lf5.util.LogFileParser: java.lang.String getAttribute(int,java.lang.String)>(i0, r0);	return $r3
;block_num 2
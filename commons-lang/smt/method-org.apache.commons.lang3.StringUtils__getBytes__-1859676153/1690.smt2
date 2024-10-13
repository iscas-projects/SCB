(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1263 0)
(declare-sort var3501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3501_toCharsetName/-419498293 (String) String)
(declare-fun getBytes/-343950658 (String String) (Array Int Int))
(declare-const null-String String)
(declare-const var3422 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3422 null-String)))
(declare-const var1913 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1913 null-String)))
 ; Statement: if r0 != null goto $r2 = staticinvoke <org.apache.commons.lang3.Charsets: java.lang.String toCharsetName(java.lang.String)>(r1) 
(assert (not (= var3422 null-String))) ; Cond: r0 != null 
(define-const var1039 String (var3501_toCharsetName/-419498293 var1913)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.Charsets: java.lang.String toCharsetName(java.lang.String)>(r1) 
(assert true)
(define-const var3480 (Array Int Int) (getBytes/-343950658 var3422 var1039)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.lang.String)>($r2) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3501_toCharsetName/-419498293=([java.lang.String], java.lang.String), getBytes/-343950658=([java.lang.String, java.lang.String], byte[])}
; {var3422=r0, var1263=null_type, var1913=r1, var3501=org.apache.commons.lang3.Charsets, var1039=$r2, var3480=$r3}
; {r0=var3422, null_type=var1263, r1=var1913, org.apache.commons.lang3.Charsets=var3501, $r2=var1039, $r3=var3480}
;seq <java.lang.String: byte[] getBytes(java.lang.String)>
;cnt {"<java.lang.String: byte[] getBytes(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	if r0 != null goto $r2 = staticinvoke <org.apache.commons.lang3.Charsets: java.lang.String toCharsetName(java.lang.String)>(r1);	$r2 = staticinvoke <org.apache.commons.lang3.Charsets: java.lang.String toCharsetName(java.lang.String)>(r1);	$r3 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.lang.String)>($r2);	return $r3
;block_num 3
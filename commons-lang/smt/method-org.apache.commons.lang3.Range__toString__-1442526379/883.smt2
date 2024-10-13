(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var907 0)
(declare-sort var3482 0)
(declare-sort var1496 0)
(declare-sort var271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1496-init () (Array Int var1496))
(declare-fun minimum/1162290584 (var907) var1496)
(declare-fun maximum/1162290584 (var907) var1496)
(declare-fun comparator/1162290584 (var907) var271)
(declare-fun cast-from-var271-to-var1496 (var271) var1496)
(declare-fun String_format/1339386452 (String (Array Int var1496)) String)
(declare-const null-var907 var907)
(declare-const null-String String)
(declare-const null-__Array__Int__var1496__ (Array Int var1496))
(declare-const var2001 var907) ; Statement: r2 := @this: org.apache.commons.lang3.Range 
(assert (not (= var2001 null-var907)))
(declare-const var2051 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2051 null-String)))
(define-const var415 (Array Int var1496) arr-var1496-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(define-const var3469 var1496 (minimum/1162290584 var2001)) ; Statement: $r3 = r2.<org.apache.commons.lang3.Range: java.lang.Object minimum> 
(declare-const var415!1 (Array Int var1496))
(assert (not (= var415!1 null-__Array__Int__var1496__)))
(assert (= (select var415!1 0) var3469)) ; Statement: $r1[0] = $r3 
(define-const var2298 var1496 (maximum/1162290584 var2001)) ; Statement: $r4 = r2.<org.apache.commons.lang3.Range: java.lang.Object maximum> 
(declare-const var415!2 (Array Int var1496))
(assert (not (= var415!2 null-__Array__Int__var1496__)))
(assert (= (select var415!2 1) var2298)) ; Statement: $r1[1] = $r4 
(define-const var1944 var271 (comparator/1162290584 var2001)) ; Statement: $r5 = r2.<org.apache.commons.lang3.Range: java.util.Comparator comparator> 
(declare-const var415!3 (Array Int var1496))
(assert (not (= var415!3 null-__Array__Int__var1496__)))
(assert (= (select var415!3 2) (cast-from-var271-to-var1496 var1944))) ; Statement: $r1[2] = $r5 
(define-const var2502 String (String_format/1339386452 var2051 var415!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, $r1) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1496-init=([], java.lang.Object[]), minimum/1162290584=([org.apache.commons.lang3.Range], java.lang.Object), maximum/1162290584=([org.apache.commons.lang3.Range], java.lang.Object), comparator/1162290584=([org.apache.commons.lang3.Range], java.util.Comparator), cast-from-var271-to-var1496=([java.util.Comparator], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var907=org.apache.commons.lang3.Range, var2001=r2, var2051=r0, var3482=null_type, var1496=java.lang.Object, var415=$r1, var3469=$r3, var2298=$r4, var271=java.util.Comparator, var1944=$r5, var2502=$r6}
; {org.apache.commons.lang3.Range=var907, r2=var2001, r0=var2051, null_type=var3482, java.lang.Object=var1496, $r1=var415, $r3=var3469, $r4=var2298, java.util.Comparator=var271, $r5=var1944, $r6=var2502}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.apache.commons.lang3.Range;	r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.Object)[3];	$r3 = r2.<org.apache.commons.lang3.Range: java.lang.Object minimum>;	$r1[0] = $r3;	$r4 = r2.<org.apache.commons.lang3.Range: java.lang.Object maximum>;	$r1[1] = $r4;	$r5 = r2.<org.apache.commons.lang3.Range: java.util.Comparator comparator>;	$r1[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, $r1);	return $r6
;block_num 1
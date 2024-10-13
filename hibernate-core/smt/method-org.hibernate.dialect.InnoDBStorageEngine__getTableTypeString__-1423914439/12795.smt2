(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2665 0)
(declare-sort var1307 0)
(declare-sort var563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var563-init () (Array Int var563))
(declare-fun cast-from-String-to-var563 (String) var563)
(declare-fun String_format/1339386452 (String (Array Int var563)) String)
(declare-const null-var2665 var2665)
(declare-const null-String String)
(declare-const null-__Array__Int__var563__ (Array Int var563))
(declare-const var2781 var2665) ; Statement: r3 := @this: org.hibernate.dialect.InnoDBStorageEngine 
(assert (not (= var2781 null-var2665)))
(declare-const var3080 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3080 null-String)))
(define-const var248 (Array Int var563) arr-var563-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var248!1 (Array Int var563))
(assert (not (= var248!1 null-__Array__Int__var563__)))
(assert (= (select var248!1 0) (cast-from-String-to-var563 var3080))) ; Statement: $r0[0] = r1 
(define-const var2679 String (String_format/1339386452 " %s=InnoDB" var248!1)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" %s=InnoDB", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var563-init=([], java.lang.Object[]), cast-from-String-to-var563=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2665=org.hibernate.dialect.InnoDBStorageEngine, var2781=r3, var3080=r1, var1307=null_type, var563=java.lang.Object, var248=$r0, var2679=$r2}
; {org.hibernate.dialect.InnoDBStorageEngine=var2665, r3=var2781, r1=var3080, null_type=var1307, java.lang.Object=var563, $r0=var248, $r2=var2679}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r3 := @this: org.hibernate.dialect.InnoDBStorageEngine;	r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" %s=InnoDB", $r0);	return $r2
;block_num 1
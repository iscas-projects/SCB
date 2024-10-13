(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3696 0)
(declare-sort var2726 0)
(declare-sort var1572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1572-init () (Array Int var1572))
(declare-fun cast-from-String-to-var1572 (String) var1572)
(declare-fun String_format/1339386452 (String (Array Int var1572)) String)
(declare-const null-var3696 var3696)
(declare-const null-String String)
(declare-const null-__Array__Int__var1572__ (Array Int var1572))
(declare-const var2630 var3696) ; Statement: r3 := @this: org.hibernate.dialect.MyISAMStorageEngine 
(assert (not (= var2630 null-var3696)))
(declare-const var2410 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2410 null-String)))
(define-const var1329 (Array Int var1572) arr-var1572-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var1329!1 (Array Int var1572))
(assert (not (= var1329!1 null-__Array__Int__var1572__)))
(assert (= (select var1329!1 0) (cast-from-String-to-var1572 var2410))) ; Statement: $r0[0] = r1 
(define-const var3863 String (String_format/1339386452 " %s=MyISAM" var1329!1)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" %s=MyISAM", $r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1572-init=([], java.lang.Object[]), cast-from-String-to-var1572=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3696=org.hibernate.dialect.MyISAMStorageEngine, var2630=r3, var2410=r1, var2726=null_type, var1572=java.lang.Object, var1329=$r0, var3863=$r2}
; {org.hibernate.dialect.MyISAMStorageEngine=var3696, r3=var2630, r1=var2410, null_type=var2726, java.lang.Object=var1572, $r0=var1329, $r2=var3863}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r3 := @this: org.hibernate.dialect.MyISAMStorageEngine;	r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" %s=MyISAM", $r0);	return $r2
;block_num 1
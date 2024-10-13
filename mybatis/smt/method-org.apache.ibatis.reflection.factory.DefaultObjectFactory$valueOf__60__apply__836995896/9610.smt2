(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1644 0)
(declare-sort var3749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var3749) String)
(declare-const null-var1644 var1644)
(declare-const null-var3749 var3749)
(declare-const var1700 var1644) ; Statement: $r0 := @this: org.apache.ibatis.reflection.factory.DefaultObjectFactory$valueOf__60 
(assert (not (= var1700 null-var1644)))
(declare-const var1198 var3749) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var1198 null-var3749)))
(define-const var3930 String (String_valueOf/-333372740 var1198)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var1644=org.apache.ibatis.reflection.factory.DefaultObjectFactory$valueOf__60, var1700=$r0, var3749=java.lang.Object, var1198=$r1, var3930=$r2}
; {org.apache.ibatis.reflection.factory.DefaultObjectFactory$valueOf__60=var1644, $r0=var1700, java.lang.Object=var3749, $r1=var1198, $r2=var3930}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts $r0 := @this: org.apache.ibatis.reflection.factory.DefaultObjectFactory$valueOf__60;	$r1 := @parameter0: java.lang.Object;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r2
;block_num 1
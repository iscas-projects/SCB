(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3807 0)
(declare-sort var2034 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2034) void)
(declare-fun cast-from-var3807-to-var2034 (var3807) var2034)
(declare-fun String_valueOf/-333372740 (var2034) String)
(declare-fun value/-837944943 (var3807) String)
(declare-const null-var3807 var3807)
(declare-const null-var2034 var2034)
(declare-const var1445 var3807) ; Statement: r0 := @this: org.junit.internal.SerializableValueDescription 
(assert (not (= var1445 null-var3807)))
(declare-const var2852 var2034) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2852 null-var2034)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3807-to-var2034 var1445))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1445!1 var3807)
(define-const var2061 String (String_valueOf/-333372740 var2852)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(declare-const var1445!2 var3807)
(assert (not (= var1445!2 null-var3807)))
(assert (= (value/-837944943 var1445!2) var2061)) ; Statement: r0.<org.junit.internal.SerializableValueDescription: java.lang.String value> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3807-to-var2034=([org.junit.internal.SerializableValueDescription], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), value/-837944943=([org.junit.internal.SerializableValueDescription], java.lang.String)}
; {var3807=org.junit.internal.SerializableValueDescription, var1445=r0, var2034=java.lang.Object, var2852=r1, var2061=$r2}
; {org.junit.internal.SerializableValueDescription=var3807, r0=var1445, java.lang.Object=var2034, r1=var2852, $r2=var2061}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.junit.internal.SerializableValueDescription;	r1 := @parameter0: java.lang.Object;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	r0.<org.junit.internal.SerializableValueDescription: java.lang.String value> = $r2;	return
;block_num 1
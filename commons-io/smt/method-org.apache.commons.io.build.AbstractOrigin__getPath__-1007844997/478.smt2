(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1694 0)
(declare-sort var3242 0)
(declare-sort var2249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3242-init () var3242)
(declare-fun arr-var2249-init () (Array Int var2249))
(declare-fun getSimpleName/603853551 (var1694) String)
(declare-fun cast-from-String-to-var2249 (String) var2249)
(declare-fun origin/-439761164 (var1694) var2249)
(declare-fun getClass/1258963082 (var2249) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun String_format/1339386452 (String (Array Int var2249)) String)
(declare-fun <init>/-630064361 (var3242 String) void)
(declare-const null-var1694 var1694)
(declare-const null-__Array__Int__var2249__ (Array Int var2249))
(declare-const var2088 var1694) ; Statement: r2 := @this: org.apache.commons.io.build.AbstractOrigin 
(assert (not (= var2088 null-var1694)))
(define-const var3618 var3242 var3242-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1221 (Array Int var2249) arr-var2249-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var3758 String (getSimpleName/603853551 var2088)) ; Statement: $r3 = specialinvoke r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.String getSimpleName()>() 
(declare-const var1221!1 (Array Int var2249))
(assert (not (= var1221!1 null-__Array__Int__var2249__)))
(assert (= (select var1221!1 0) (cast-from-String-to-var2249 var3758))) ; Statement: $r1[0] = $r3 
(define-const var2947 var2249 (origin/-439761164 var2088)) ; Statement: $r4 = r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.Object origin> 
(assert true)
(define-const var292 ClassObject (getClass/1258963082 var2947)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3511 String (getSimpleName/-390194377 var292)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var1221!2 (Array Int var2249))
(assert (not (= var1221!2 null-__Array__Int__var2249__)))
(assert (= (select var1221!2 1) (cast-from-String-to-var2249 var3511))) ; Statement: $r1[1] = $r6 
(define-const var2610 var2249 (origin/-439761164 var2088)) ; Statement: $r7 = r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.Object origin> 
(declare-const var1221!3 (Array Int var2249))
(assert (not (= var1221!3 null-__Array__Int__var2249__)))
(assert (= (select var1221!3 2) var2610)) ; Statement: $r1[2] = $r7 
(define-const var1543 String (String_format/1339386452 "%s#getPath() for %s origin %s" var1221!3)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s#getPath() for %s origin %s", $r1) 
(assert true)
;(assert (<init>/-630064361 var3618 var1543)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r8) 

(declare-const var3618!1 var3242)
(declare-const var1543!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3242-init=([], java.lang.UnsupportedOperationException), arr-var2249-init=([], java.lang.Object[]), getSimpleName/603853551=([org.apache.commons.io.build.AbstractOrigin], java.lang.String), cast-from-String-to-var2249=([java.lang.String], java.lang.Object), origin/-439761164=([org.apache.commons.io.build.AbstractOrigin], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1694=org.apache.commons.io.build.AbstractOrigin, var2088=r2, var3242=java.lang.UnsupportedOperationException, var3618=$r0, var2249=java.lang.Object, var1221=$r1, var3758=$r3, var2947=$r4, var292=$r5, var3511=$r6, var2610=$r7, var1543=$r8}
; {org.apache.commons.io.build.AbstractOrigin=var1694, r2=var2088, java.lang.UnsupportedOperationException=var3242, $r0=var3618, java.lang.Object=var2249, $r1=var1221, $r3=var3758, $r4=var2947, $r5=var292, $r6=var3511, $r7=var2610, $r8=var1543}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.apache.commons.io.build.AbstractOrigin;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = newarray (java.lang.Object)[3];	$r3 = specialinvoke r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.String getSimpleName()>();	$r1[0] = $r3;	$r4 = r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.Object origin>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>();	$r1[1] = $r6;	$r7 = r2.<org.apache.commons.io.build.AbstractOrigin: java.lang.Object origin>;	$r1[2] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s#getPath() for %s origin %s", $r1);	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 1
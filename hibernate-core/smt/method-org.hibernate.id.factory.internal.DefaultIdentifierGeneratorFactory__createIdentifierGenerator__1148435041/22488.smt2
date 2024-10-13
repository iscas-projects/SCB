(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1889 0)
(declare-sort var1876 0)
(declare-sort var324 0)
(declare-sort var1001 0)
(declare-sort var165 0)
(declare-sort var3080 0)
(declare-sort var250 0)
(declare-sort var930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/1391780669 (var1001 String) String)
(declare-fun var3080-init () var3080)
(declare-fun arr-var250-init () (Array Int var250))
(declare-fun cast-from-String-to-var250 (String) var250)
(declare-fun String_format/1339386452 (String (Array Int var250)) String)
(declare-fun <init>/796187277 (var3080 String var930) void)
(declare-fun cast-from-var165-to-var930 (var165) var930)
(declare-fun cast-from-var3080-to-var930 (var3080) var930)
(declare-const null-var1889 var1889)
(declare-const null-String String)
(declare-const null-var324 var324)
(declare-const null-var1001 var1001)
(declare-const null-var165 var165)
(declare-const null-__Array__Int__var250__ (Array Int var250))
(declare-const var3329 var1889) ; Statement: r0 := @this: org.hibernate.id.factory.internal.DefaultIdentifierGeneratorFactory 
(assert (not (= var3329 null-var1889)))
(declare-const var370 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var370 null-String)))
(declare-const var1358 var324) ; Statement: r4 := @parameter1: org.hibernate.type.Type 
(assert (not (= var1358 null-var324)))
(declare-const var1632 var1001) ; Statement: r5 := @parameter2: java.util.Properties 
(assert (not (= var1632 null-var1001)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1465 var165) ; Statement: $r13 := @caughtexception 
(assert (not (= var1465 null-var165)))
(assert true)
(define-const var1004 String (getProperty/1391780669 var1632 "entity_name")) ; Statement: r19 = virtualinvoke r5.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("entity_name") 
(define-const var504 var3080 var3080-init) ; Statement: $r21 = new org.hibernate.MappingException 
(define-const var3394 (Array Int var250) arr-var250-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(declare-const var3394!1 (Array Int var250))
(assert (not (= var3394!1 null-__Array__Int__var250__)))
(assert (= (select var3394!1 0) (cast-from-String-to-var250 var1004))) ; Statement: $r15[0] = r19 
(define-const var1670 String (String_format/1339386452 "Could not instantiate id generator [entity-name=%s]" var3394!1)) ; Statement: $r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not instantiate id generator [entity-name=%s]", $r15) 
(assert true)
;(assert (<init>/796187277 var504 var1670 (cast-from-var165-to-var930 var1465))) ; Statement: specialinvoke $r21.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r13) 

(declare-const var504!1 var3080)
(declare-const var1670!1 String)
(declare-const var1465!1 var165)
(define-const var2747 var930 (cast-from-var3080-to-var930 var504!1)) ; Statement: $r22 = (java.lang.Throwable) $r21 
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String), var3080-init=([], org.hibernate.MappingException), arr-var250-init=([], java.lang.Object[]), cast-from-String-to-var250=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/796187277=([org.hibernate.MappingException, java.lang.String, java.lang.Throwable], void), cast-from-var165-to-var930=([java.lang.Exception], java.lang.Throwable), cast-from-var3080-to-var930=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1889=org.hibernate.id.factory.internal.DefaultIdentifierGeneratorFactory, var3329=r0, var370=r1, var1876=null_type, var324=org.hibernate.type.Type, var1358=r4, var1001=java.util.Properties, var1632=r5, var165=java.lang.Exception, var1465=$r13, var1004=r19, var3080=org.hibernate.MappingException, var504=$r21, var250=java.lang.Object, var3394=$r15, var1670=$r16, var930=java.lang.Throwable, var2747=$r22}
; {org.hibernate.id.factory.internal.DefaultIdentifierGeneratorFactory=var1889, r0=var3329, r1=var370, null_type=var1876, org.hibernate.type.Type=var324, r4=var1358, java.util.Properties=var1001, r5=var1632, java.lang.Exception=var165, $r13=var1465, r19=var1004, org.hibernate.MappingException=var3080, $r21=var504, java.lang.Object=var250, $r15=var3394, $r16=var1670, java.lang.Throwable=var930, $r22=var2747}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.id.factory.internal.DefaultIdentifierGeneratorFactory;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: org.hibernate.type.Type;	r5 := @parameter2: java.util.Properties;	$r13 := @caughtexception;	r19 = virtualinvoke r5.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("entity_name");	$r21 = new org.hibernate.MappingException;	$r15 = newarray (java.lang.Object)[1];	$r15[0] = r19;	$r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not instantiate id generator [entity-name=%s]", $r15);	specialinvoke $r21.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r13);	$r22 = (java.lang.Throwable) $r21;	throw $r22
;block_num 2
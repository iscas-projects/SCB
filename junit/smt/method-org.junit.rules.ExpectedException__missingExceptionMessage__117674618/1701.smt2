(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1423 0)
(declare-sort var1111 0)
(declare-sort var312 0)
(declare-sort var2464 0)
(declare-sort var3180 0)
(declare-sort var1073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcherBuilder/55273622 (var1423) var1111)
(declare-fun build/647720597 (var1111) var312)
(declare-fun cast-from-var312-to-var2464 (var312) var2464)
(declare-fun var3180_toString/665301789 (var2464) String)
(declare-fun missingExceptionMessage/55273622 (var1423) String)
(declare-fun arr-var1073-init () (Array Int var1073))
(declare-fun cast-from-String-to-var1073 (String) var1073)
(declare-fun String_format/1339386452 (String (Array Int var1073)) String)
(declare-const null-var1423 var1423)
(declare-const null-__Array__Int__var1073__ (Array Int var1073))
(declare-const var2345 var1423) ; Statement: r0 := @this: org.junit.rules.ExpectedException 
(assert (not (= var2345 null-var1423)))
(define-const var3382 var1111 (matcherBuilder/55273622 var2345)) ; Statement: $r1 = r0.<org.junit.rules.ExpectedException: org.junit.rules.ExpectedExceptionMatcherBuilder matcherBuilder> 
(assert true)
(define-const var829 var312 (build/647720597 var3382)) ; Statement: $r2 = virtualinvoke $r1.<org.junit.rules.ExpectedExceptionMatcherBuilder: org.hamcrest.Matcher build()>() 
(define-const var172 var2464 (cast-from-var312-to-var2464 var829)) ; Statement: $r7 = (org.hamcrest.SelfDescribing) $r2 
(define-const var558 String (var3180_toString/665301789 var172)) ; Statement: r3 = staticinvoke <org.hamcrest.StringDescription: java.lang.String toString(org.hamcrest.SelfDescribing)>($r7) 
(define-const var536 String (missingExceptionMessage/55273622 var2345)) ; Statement: $r5 = r0.<org.junit.rules.ExpectedException: java.lang.String missingExceptionMessage> 
(define-const var1601 (Array Int var1073) arr-var1073-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(declare-const var1601!1 (Array Int var1073))
(assert (not (= var1601!1 null-__Array__Int__var1073__)))
(assert (= (select var1601!1 0) (cast-from-String-to-var1073 var558))) ; Statement: $r4[0] = r3 
(define-const var1183 String (String_format/1339386452 var536 var1601!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r5, $r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {matcherBuilder/55273622=([org.junit.rules.ExpectedException], org.junit.rules.ExpectedExceptionMatcherBuilder), build/647720597=([org.junit.rules.ExpectedExceptionMatcherBuilder], org.hamcrest.Matcher), cast-from-var312-to-var2464=([org.hamcrest.Matcher], org.hamcrest.SelfDescribing), var3180_toString/665301789=([org.hamcrest.SelfDescribing], java.lang.String), missingExceptionMessage/55273622=([org.junit.rules.ExpectedException], java.lang.String), arr-var1073-init=([], java.lang.Object[]), cast-from-String-to-var1073=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1423=org.junit.rules.ExpectedException, var2345=r0, var1111=org.junit.rules.ExpectedExceptionMatcherBuilder, var3382=$r1, var312=org.hamcrest.Matcher, var829=$r2, var2464=org.hamcrest.SelfDescribing, var172=$r7, var3180=org.hamcrest.StringDescription, var558=r3, var536=$r5, var1073=java.lang.Object, var1601=$r4, var1183=$r6}
; {org.junit.rules.ExpectedException=var1423, r0=var2345, org.junit.rules.ExpectedExceptionMatcherBuilder=var1111, $r1=var3382, org.hamcrest.Matcher=var312, $r2=var829, org.hamcrest.SelfDescribing=var2464, $r7=var172, org.hamcrest.StringDescription=var3180, r3=var558, $r5=var536, java.lang.Object=var1073, $r4=var1601, $r6=var1183}
;seq <org.hamcrest.StringDescription: java.lang.String toString(org.hamcrest.SelfDescribing)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.junit.rules.ExpectedException;	$r1 = r0.<org.junit.rules.ExpectedException: org.junit.rules.ExpectedExceptionMatcherBuilder matcherBuilder>;	$r2 = virtualinvoke $r1.<org.junit.rules.ExpectedExceptionMatcherBuilder: org.hamcrest.Matcher build()>();	$r7 = (org.hamcrest.SelfDescribing) $r2;	r3 = staticinvoke <org.hamcrest.StringDescription: java.lang.String toString(org.hamcrest.SelfDescribing)>($r7);	$r5 = r0.<org.junit.rules.ExpectedException: java.lang.String missingExceptionMessage>;	$r4 = newarray (java.lang.Object)[1];	$r4[0] = r3;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r5, $r4);	return $r6
;block_num 1
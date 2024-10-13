(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2332 0)
(declare-sort var463 0)
(declare-sort var1566 0)
(declare-sort var3312 0)
(declare-sort var2858 0)
(declare-sort var1752 0)
(declare-sort var2432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3312_lineSeparator/-342590142 () String)
(declare-fun var2858_assertionFailure/-1766832277 () var2858)
(declare-fun messageOrSupplier/539725692 (var2332) var1566)
(declare-fun message/-1182943533 (var2858 var1566) var2858)
(declare-fun String_format/1339386452 (String (Array Int var1566)) String)
(declare-fun reason/-554335116 (var2858 String) var2858)
(declare-fun expectedLines/539725692 (var2332) var1752)
(declare-fun String_join/1594745010 (String var2432) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var1752-to-var2432 (var1752) var2432)
(declare-fun expected/127684014 (var2858 var1566) var2858)
(declare-fun cast-from-String-to-var1566 (String) var1566)
(declare-fun actualLines/539725692 (var2332) var1752)
(declare-fun actual/-918735720 (var2858 var1566) var2858)
(declare-fun includeValuesInMessage/678605591 (var2858 Bool) var2858)
(declare-fun buildAndThrow/-910448578 (var2858) void)
(declare-const null-var2332 var2332)
(declare-const null-String String)
(declare-const null-__Array__Int__var1566__ (Array Int var1566))
(declare-const var1533 var2332) ; Statement: r1 := @this: org.junit.jupiter.api.AssertLinesMatch$LinesMatcher 
(assert (not (= var1533 null-var2332)))
(declare-const var1330 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1330 null-String)))
(declare-const var732 (Array Int var1566)) ; Statement: r5 := @parameter1: java.lang.Object[] 
(assert (not (= var732 null-__Array__Int__var1566__)))
(define-const var2896 String var3312_lineSeparator/-342590142) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(define-const var2964 var2858 var2858_assertionFailure/-1766832277) ; Statement: $r3 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>() 
(define-const var3079 var1566 (messageOrSupplier/539725692 var1533)) ; Statement: $r2 = r1.<org.junit.jupiter.api.AssertLinesMatch$LinesMatcher: java.lang.Object messageOrSupplier> 
(assert true)
(define-const var3933 var2858 (message/-1182943533 var2964 var3079)) ; Statement: $r7 = virtualinvoke $r3.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>($r2) 
(define-const var2727 String (String_format/1339386452 var1330 var732)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r4, r5) 
(assert true)
(define-const var840 var2858 (reason/-554335116 var3933 var2727)) ; Statement: $r10 = virtualinvoke $r7.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r6) 
(define-const var2203 var1752 (expectedLines/539725692 var1533)) ; Statement: $r8 = r1.<org.junit.jupiter.api.AssertLinesMatch$LinesMatcher: java.util.List expectedLines> 
(define-const var1209 String (String_join/1594745010 (cast-from-String-to-String var2896) (cast-from-var1752-to-var2432 var2203))) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(r0, $r8) 
(assert true)
(define-const var2141 var2858 (expected/127684014 var840 (cast-from-String-to-var1566 var1209))) ; Statement: $r13 = virtualinvoke $r10.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder expected(java.lang.Object)>($r9) 
(define-const var2884 var1752 (actualLines/539725692 var1533)) ; Statement: $r11 = r1.<org.junit.jupiter.api.AssertLinesMatch$LinesMatcher: java.util.List actualLines> 
(define-const var2411 String (String_join/1594745010 (cast-from-String-to-String var2896) (cast-from-var1752-to-var2432 var2884))) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(r0, $r11) 
(assert true)
(define-const var1802 var2858 (actual/-918735720 var2141 (cast-from-String-to-var1566 var2411))) ; Statement: $r14 = virtualinvoke $r13.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder actual(java.lang.Object)>($r12) 
(assert true)
(define-const var1763 var2858 (includeValuesInMessage/678605591 var1802 (ite (= 1 0) true false))) ; Statement: $r15 = virtualinvoke $r14.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder includeValuesInMessage(boolean)>(0) 
(assert true)
;(assert (buildAndThrow/-910448578 var1763)) ; Statement: virtualinvoke $r15.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>() 

(declare-const var1763!1 var2858)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3312_lineSeparator/-342590142=([], java.lang.String), var2858_assertionFailure/-1766832277=([], org.junit.jupiter.api.AssertionFailureBuilder), messageOrSupplier/539725692=([org.junit.jupiter.api.AssertLinesMatch$LinesMatcher], java.lang.Object), message/-1182943533=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), reason/-554335116=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.String], org.junit.jupiter.api.AssertionFailureBuilder), expectedLines/539725692=([org.junit.jupiter.api.AssertLinesMatch$LinesMatcher], java.util.List), String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var1752-to-var2432=([java.util.List], java.lang.Iterable), expected/127684014=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), cast-from-String-to-var1566=([java.lang.String], java.lang.Object), actualLines/539725692=([org.junit.jupiter.api.AssertLinesMatch$LinesMatcher], java.util.List), actual/-918735720=([org.junit.jupiter.api.AssertionFailureBuilder, java.lang.Object], org.junit.jupiter.api.AssertionFailureBuilder), includeValuesInMessage/678605591=([org.junit.jupiter.api.AssertionFailureBuilder, boolean], org.junit.jupiter.api.AssertionFailureBuilder), buildAndThrow/-910448578=([org.junit.jupiter.api.AssertionFailureBuilder], void)}
; {var2332=org.junit.jupiter.api.AssertLinesMatch$LinesMatcher, var1533=r1, var1330=r4, var463=null_type, var1566=java.lang.Object, var732=r5, var3312=java.lang.System, var2896=r0, var2858=org.junit.jupiter.api.AssertionFailureBuilder, var2964=$r3, var3079=$r2, var3933=$r7, var2727=$r6, var840=$r10, var1752=java.util.List, var2203=$r8, var2432=java.lang.Iterable, var1209=$r9, var2141=$r13, var2884=$r11, var2411=$r12, var1802=$r14, var1763=$r15}
; {org.junit.jupiter.api.AssertLinesMatch$LinesMatcher=var2332, r1=var1533, r4=var1330, null_type=var463, java.lang.Object=var1566, r5=var732, java.lang.System=var3312, r0=var2896, org.junit.jupiter.api.AssertionFailureBuilder=var2858, $r3=var2964, $r2=var3079, $r7=var3933, $r6=var2727, $r10=var840, java.util.List=var1752, $r8=var2203, java.lang.Iterable=var2432, $r9=var1209, $r13=var2141, $r11=var2884, $r12=var2411, $r14=var1802, $r15=var1763}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 2}
;stmts r1 := @this: org.junit.jupiter.api.AssertLinesMatch$LinesMatcher;	r4 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Object[];	r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r3 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder assertionFailure()>();	$r2 = r1.<org.junit.jupiter.api.AssertLinesMatch$LinesMatcher: java.lang.Object messageOrSupplier>;	$r7 = virtualinvoke $r3.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder message(java.lang.Object)>($r2);	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r4, r5);	$r10 = virtualinvoke $r7.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder reason(java.lang.String)>($r6);	$r8 = r1.<org.junit.jupiter.api.AssertLinesMatch$LinesMatcher: java.util.List expectedLines>;	$r9 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(r0, $r8);	$r13 = virtualinvoke $r10.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder expected(java.lang.Object)>($r9);	$r11 = r1.<org.junit.jupiter.api.AssertLinesMatch$LinesMatcher: java.util.List actualLines>;	$r12 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(r0, $r11);	$r14 = virtualinvoke $r13.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder actual(java.lang.Object)>($r12);	$r15 = virtualinvoke $r14.<org.junit.jupiter.api.AssertionFailureBuilder: org.junit.jupiter.api.AssertionFailureBuilder includeValuesInMessage(boolean)>(0);	virtualinvoke $r15.<org.junit.jupiter.api.AssertionFailureBuilder: void buildAndThrow()>();	return
;block_num 1
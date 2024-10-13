(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var406 0)
(declare-sort var1489 0)
(declare-sort var96 0)
(declare-sort var135 0)
(declare-sort var1680 0)
(declare-sort var670 0)
(declare-sort var3105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRunner/1917988848 (var406) var96)
(declare-fun getDescription/-594252467 (var96) var135)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1680-init () var1680)
(declare-fun <init>/629683790 (var1680 var135 String) void)
(declare-fun var3105_createFilter/-1880227495 (String var1680) var670)
(declare-const null-var406 var406)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1931 var406) ; Statement: r0 := @parameter0: org.junit.runner.Request 
(assert (not (= var1931 null-var406)))
(declare-const var1791 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1791 null-String)))
(assert true)
(define-const var667 var96 (getRunner/1917988848 var1931)) ; Statement: $r1 = virtualinvoke r0.<org.junit.runner.Request: org.junit.runner.Runner getRunner()>() 
(assert true)
(define-const var924 var135 (getDescription/-594252467 var667)) ; Statement: r2 = virtualinvoke $r1.<org.junit.runner.Runner: org.junit.runner.Description getDescription()>() 
(assert true)
(define-const var3085 Bool (contains/1009244746 var1791 (cast-from-String-to-String "="))) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean contains(java.lang.CharSequence)>("=") 
 ; Statement: if $z0 == 0 goto $r4 = newarray (java.lang.String)[2] 
(assert (= (ite var3085 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2103 (Array Int String) arr-String-init) ; Statement: $r4 = newarray (java.lang.String)[2] 
(declare-const var2103!1 (Array Int String))
(assert (not (= var2103!1 null-__Array__Int__String__)))
(assert (= (select var2103!1 0) var1791)) ; Statement: $r4[0] = r3 
(declare-const var2103!2 (Array Int String))
(assert (not (= var2103!2 null-__Array__Int__String__)))
(assert (= (select var2103!2 1) "")) ; Statement: $r4[1] = "" 
(define-const var698 (Array Int String) var2103!2) ; Statement: r9 = $r4 
(assert true) ; Non Conditional
(define-const var2665 String (select var698 0)) ; Statement: $r7 = r9[0] 
(define-const var1786 var1680 var1680-init) ; Statement: $r5 = new org.junit.runner.FilterFactoryParams 
(define-const var1379 String (select var698 1)) ; Statement: $r6 = r9[1] 
(assert true)
;(assert (<init>/629683790 var1786 var924 var1379)) ; Statement: specialinvoke $r5.<org.junit.runner.FilterFactoryParams: void <init>(org.junit.runner.Description,java.lang.String)>(r2, $r6) 

(declare-const var1786!1 var1680)
(declare-const var924!1 var135)
(declare-const var1379!1 String)
(define-const var2553 var670 (var3105_createFilter/-1880227495 var2665 var1786!1)) ; Statement: $r8 = staticinvoke <org.junit.runner.FilterFactories: org.junit.runner.manipulation.Filter createFilter(java.lang.String,org.junit.runner.FilterFactoryParams)>($r7, $r5) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getRunner/1917988848=([org.junit.runner.Request], org.junit.runner.Runner), getDescription/-594252467=([org.junit.runner.Runner], org.junit.runner.Description), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), arr-String-init=([], java.lang.String[]), var1680-init=([], org.junit.runner.FilterFactoryParams), <init>/629683790=([org.junit.runner.FilterFactoryParams, org.junit.runner.Description, java.lang.String], void), var3105_createFilter/-1880227495=([java.lang.String, org.junit.runner.FilterFactoryParams], org.junit.runner.manipulation.Filter)}
; {var406=org.junit.runner.Request, var1931=r0, var1791=r3, var1489=null_type, var96=org.junit.runner.Runner, var667=$r1, var135=org.junit.runner.Description, var924=r2, var3085=$z0, var2103=$r4, var698=r9, var2665=$r7, var1680=org.junit.runner.FilterFactoryParams, var1786=$r5, var1379=$r6, var670=org.junit.runner.manipulation.Filter, var3105=org.junit.runner.FilterFactories, var2553=$r8}
; {org.junit.runner.Request=var406, r0=var1931, r3=var1791, null_type=var1489, org.junit.runner.Runner=var96, $r1=var667, org.junit.runner.Description=var135, r2=var924, $z0=var3085, $r4=var2103, r9=var698, $r7=var2665, org.junit.runner.FilterFactoryParams=var1680, $r5=var1786, $r6=var1379, org.junit.runner.manipulation.Filter=var670, org.junit.runner.FilterFactories=var3105, $r8=var2553}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: org.junit.runner.Request;	r3 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<org.junit.runner.Request: org.junit.runner.Runner getRunner()>();	r2 = virtualinvoke $r1.<org.junit.runner.Runner: org.junit.runner.Description getDescription()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean contains(java.lang.CharSequence)>("=");	if $z0 == 0 goto $r4 = newarray (java.lang.String)[2];	$r4 = newarray (java.lang.String)[2];	$r4[0] = r3;	$r4[1] = "";	r9 = $r4;	$r7 = r9[0];	$r5 = new org.junit.runner.FilterFactoryParams;	$r6 = r9[1];	specialinvoke $r5.<org.junit.runner.FilterFactoryParams: void <init>(org.junit.runner.Description,java.lang.String)>(r2, $r6);	$r8 = staticinvoke <org.junit.runner.FilterFactories: org.junit.runner.manipulation.Filter createFilter(java.lang.String,org.junit.runner.FilterFactoryParams)>($r7, $r5);	return $r8
;block_num 3
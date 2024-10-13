(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var57 0)
(declare-sort var378 0)
(declare-sort var578 0)
(declare-sort var3395 0)
(declare-sort var2665 0)
(declare-sort var2952 0)
(declare-sort var615 0)
(declare-sort var870 0)
(declare-sort var3471 0)
(declare-sort var3247 0)
(declare-sort var1038 0)
(declare-sort var1120 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun var578_of/184955601 ((Array Int var3395)) var578)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3395__ ((Array Int String)) (Array Int var3395))
(declare-fun var2952_bootstrap$/-117753389 () var2665)
(declare-fun var578_map/130902797 (var578 var2665) var578)
(declare-fun var870_bootstrap$/2046461170 () var615)
(declare-fun var578_filter/320182972 (var578 var615) var578)
(declare-fun targets/1698865961 (var57) var3471)
(declare-fun var3247_requireNonNull/-961817614 (var3395) var3395)
(declare-fun cast-from-var3471-to-var3395 (var3471) var3395)
(declare-fun var1120_bootstrap$/934391742 (var3471) var1038)
(declare-fun var578_forEach/1037804367 (var578 var1038) void)
(declare-const null-var57 var57)
(declare-const null-String String)
(declare-const var851 var57) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets 
(assert (not (= var851 null-var57)))
(declare-const var3834 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3834 null-String)))
(assert true)
(define-const var2375 (Array Int String) (split/-636890950 var3834 ",")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3834 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var2534 var578 (var578_of/184955601 (cast-from-__Array__Int__String__-to-__Array__Int__var3395__ var2375))) ; Statement: $r3 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r1) 
(define-const var1292 var2665 var2952_bootstrap$/-117753389) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$trim__566: java.util.function.Function bootstrap$()>() 
(define-const var127 var578 (var578_map/130902797 var2534 var1292)) ; Statement: $r5 = interfaceinvoke $r3.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r2) 
(define-const var2758 var615 var870_bootstrap$/2046461170) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$lambda_setTargets_0__567: java.util.function.Predicate bootstrap$()>() 
(define-const var2067 var578 (var578_filter/320182972 var127 var2758)) ; Statement: $r9 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r4) 
(define-const var2135 var3471 (targets/1698865961 var851)) ; Statement: $r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets: java.util.List targets> 
;(assert (var3247_requireNonNull/-961817614 (cast-from-var3471-to-var3395 var2135))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r7) 

(declare-const var2135!1 var3471)
(define-const var335 var1038 (var1120_bootstrap$/934391742 var2135!1)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$add__568: java.util.function.Consumer bootstrap$(java.util.List)>($r7) 
;(assert (var578_forEach/1037804367 var2067 var335)) ; Statement: interfaceinvoke $r9.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r8) 

(declare-const var2067!1 var578)
(declare-const var335!1 var1038)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), var578_of/184955601=([java.lang.Object[]], java.util.stream.Stream), cast-from-__Array__Int__String__-to-__Array__Int__var3395__=([java.lang.String[]], java.lang.Object[]), var2952_bootstrap$/-117753389=([], java.util.function.Function), var578_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var870_bootstrap$/2046461170=([], java.util.function.Predicate), var578_filter/320182972=([java.util.stream.Stream, java.util.function.Predicate], java.util.stream.Stream), targets/1698865961=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets], java.util.List), var3247_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-var3471-to-var3395=([java.util.List], java.lang.Object), var1120_bootstrap$/934391742=([java.util.List], java.util.function.Consumer), var578_forEach/1037804367=([java.util.stream.Stream, java.util.function.Consumer], void)}
; {var57=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets, var851=r6, var3834=r0, var378=null_type, var2375=$r1, var578=java.util.stream.Stream, var3395=java.lang.Object, var2534=$r3, var2665=java.util.function.Function, var2952=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$trim__566, var1292=$r2, var127=$r5, var615=java.util.function.Predicate, var870=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$lambda_setTargets_0__567, var2758=$r4, var2067=$r9, var3471=java.util.List, var2135=$r7, var3247=java.util.Objects, var1038=java.util.function.Consumer, var1120=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$add__568, var335=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets=var57, r6=var851, r0=var3834, null_type=var378, $r1=var2375, java.util.stream.Stream=var578, java.lang.Object=var3395, $r3=var2534, java.util.function.Function=var2665, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$trim__566=var2952, $r2=var1292, $r5=var127, java.util.function.Predicate=var615, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$lambda_setTargets_0__567=var870, $r4=var2758, $r9=var2067, java.util.List=var3471, $r7=var2135, java.util.Objects=var3247, java.util.function.Consumer=var1038, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$add__568=var1120, $r8=var335}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets;	r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r3 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r1);	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$trim__566: java.util.function.Function bootstrap$()>();	$r5 = interfaceinvoke $r3.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r2);	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$lambda_setTargets_0__567: java.util.function.Predicate bootstrap$()>();	$r9 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r4);	$r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets: java.util.List targets>;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r7);	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$add__568: java.util.function.Consumer bootstrap$(java.util.List)>($r7);	interfaceinvoke $r9.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r8);	return
;block_num 1
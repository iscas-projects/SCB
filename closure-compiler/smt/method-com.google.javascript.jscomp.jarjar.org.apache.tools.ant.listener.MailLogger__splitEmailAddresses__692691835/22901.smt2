(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var227 0)
(declare-sort var701 0)
(declare-sort var2506 0)
(declare-sort var2152 0)
(declare-sort var1961 0)
(declare-sort var857 0)
(declare-sort var2264 0)
(declare-sort var3110 0)
(declare-sort var290 0)
(declare-sort var2712 0)
(declare-sort var520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun var2506_of/184955601 ((Array Int var2152)) var2506)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2152__ ((Array Int String)) (Array Int var2152))
(declare-fun var857_bootstrap$/679426708 () var1961)
(declare-fun var2506_map/130902797 (var2506 var1961) var2506)
(declare-fun var3110_bootstrap$/1951182567 () var2264)
(declare-fun var2712_toCollection/-1692833109 (var2264) var290)
(declare-fun var2506_collect/-2050842585 (var2506 var290) var2152)
(declare-fun cast-from-var2152-to-var520 (var2152) var520)
(declare-const null-var227 var227)
(declare-const null-String String)
(declare-const var1022 var227) ; Statement: r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger 
(assert (not (= var1022 null-var227)))
(declare-const var1994 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1994 null-String)))
(assert true)
(define-const var3243 (Array Int String) (split/-636890950 var1994 ",")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1994 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var3408 var2506 (var2506_of/184955601 (cast-from-__Array__Int__String__-to-__Array__Int__var2152__ var3243))) ; Statement: $r3 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r1) 
(define-const var2602 var1961 var857_bootstrap$/679426708) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$init__584: java.util.function.Function bootstrap$()>() 
(define-const var1854 var2506 (var2506_map/130902797 var3408 var2602)) ; Statement: $r6 = interfaceinvoke $r3.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r2) 
(define-const var2181 var2264 var3110_bootstrap$/1951182567) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$init__585: java.util.function.Supplier bootstrap$()>() 
(define-const var840 var290 (var2712_toCollection/-1692833109 var2181)) ; Statement: $r5 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toCollection(java.util.function.Supplier)>($r4) 
(define-const var1815 var2152 (var2506_collect/-2050842585 var1854 var840)) ; Statement: $r7 = interfaceinvoke $r6.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r5) 
(define-const var3747 var520 (cast-from-var2152-to-var520 var1815)) ; Statement: $r8 = (java.util.Vector) $r7 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), var2506_of/184955601=([java.lang.Object[]], java.util.stream.Stream), cast-from-__Array__Int__String__-to-__Array__Int__var2152__=([java.lang.String[]], java.lang.Object[]), var857_bootstrap$/679426708=([], java.util.function.Function), var2506_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var3110_bootstrap$/1951182567=([], java.util.function.Supplier), var2712_toCollection/-1692833109=([java.util.function.Supplier], java.util.stream.Collector), var2506_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var2152-to-var520=([java.lang.Object], java.util.Vector)}
; {var227=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, var1022=r9, var1994=r0, var701=null_type, var3243=$r1, var2506=java.util.stream.Stream, var2152=java.lang.Object, var3408=$r3, var1961=java.util.function.Function, var857=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$init__584, var2602=$r2, var1854=$r6, var2264=java.util.function.Supplier, var3110=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$init__585, var2181=$r4, var290=java.util.stream.Collector, var2712=java.util.stream.Collectors, var840=$r5, var1815=$r7, var520=java.util.Vector, var3747=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger=var227, r9=var1022, r0=var1994, null_type=var701, $r1=var3243, java.util.stream.Stream=var2506, java.lang.Object=var2152, $r3=var3408, java.util.function.Function=var1961, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$init__584=var857, $r2=var2602, $r6=var1854, java.util.function.Supplier=var2264, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$init__585=var3110, $r4=var2181, java.util.stream.Collector=var290, java.util.stream.Collectors=var2712, $r5=var840, $r7=var1815, java.util.Vector=var520, $r8=var3747}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger;	r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r3 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r1);	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$init__584: java.util.function.Function bootstrap$()>();	$r6 = interfaceinvoke $r3.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r2);	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$init__585: java.util.function.Supplier bootstrap$()>();	$r5 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toCollection(java.util.function.Supplier)>($r4);	$r7 = interfaceinvoke $r6.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r5);	$r8 = (java.util.Vector) $r7;	return $r8
;block_num 1
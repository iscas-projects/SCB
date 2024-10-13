(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1218 0)
(declare-sort var2885 0)
(declare-sort var2194 0)
(declare-sort var1007 0)
(declare-sort var179 0)
(declare-sort var1977 0)
(declare-sort var1167 0)
(declare-sort var2110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var2194) String)
(declare-fun var1007_of/184955601 ((Array Int var179)) var1007)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var179__ ((Array Int String)) (Array Int var179))
(declare-fun var1977_requireNonNull/-961817614 (var179) var179)
(declare-fun cast-from-String-to-var179 (String) var179)
(declare-fun var2110_bootstrap$/744853604 (String) var1167)
(declare-fun var1007_anyMatch/-1059037355 (var1007 var1167) Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1218 var1218)
(declare-const null-String String)
(declare-const var2194-ENGLISH var2194)
(declare-const var3805 (Array Int String)) ; Statement: r3 := @parameter0: java.lang.String[] 
(assert (not (= var3805 null-__Array__Int__String__)))
(declare-const var1547 var1218) ; Statement: r6 := @parameter1: java.io.File 
(assert (not (= var1547 null-var1218)))
(declare-const var572 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var572 null-String)))
(define-const var2305 var2194 var2194-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2851 String (toLowerCase/1946809429 var572 var2305)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var2616 var1007 (var1007_of/184955601 (cast-from-__Array__Int__String__-to-__Array__Int__var179__ var3805))) ; Statement: $r5 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>(r3) 
;(assert (var1977_requireNonNull/-961817614 (cast-from-String-to-var179 var2851))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r2) 

(declare-const var2851!1 String)
(define-const var1725 var1167 (var2110_bootstrap$/744853604 var2851!1)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator$endsWith__588: java.util.function.Predicate bootstrap$(java.lang.String)>(r2) 
(define-const var1460 Bool (var1007_anyMatch/-1059037355 var2616 var1725)) ; Statement: $z0 = interfaceinvoke $r5.<java.util.stream.Stream: boolean anyMatch(java.util.function.Predicate)>($r4) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1007_of/184955601=([java.lang.Object[]], java.util.stream.Stream), cast-from-__Array__Int__String__-to-__Array__Int__var179__=([java.lang.String[]], java.lang.Object[]), var1977_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var179=([java.lang.String], java.lang.Object), var2110_bootstrap$/744853604=([java.lang.String], java.util.function.Predicate), var1007_anyMatch/-1059037355=([java.util.stream.Stream, java.util.function.Predicate], boolean)}
; {var3805=r3, var1218=java.io.File, var1547=r6, var572=r0, var2885=null_type, var2194=java.util.Locale, var2305=$r1, var2851=r2, var1007=java.util.stream.Stream, var179=java.lang.Object, var2616=$r5, var1977=java.util.Objects, var1167=java.util.function.Predicate, var2110=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator$endsWith__588, var1725=$r4, var1460=$z0}
; {r3=var3805, java.io.File=var1218, r6=var1547, r0=var572, null_type=var2885, java.util.Locale=var2194, $r1=var2305, r2=var2851, java.util.stream.Stream=var1007, java.lang.Object=var179, $r5=var2616, java.util.Objects=var1977, java.util.function.Predicate=var1167, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator$endsWith__588=var2110, $r4=var1725, $z0=var1460}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r3 := @parameter0: java.lang.String[];	r6 := @parameter1: java.io.File;	r0 := @parameter2: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r5 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>(r3);	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r2);	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator$endsWith__588: java.util.function.Predicate bootstrap$(java.lang.String)>(r2);	$z0 = interfaceinvoke $r5.<java.util.stream.Stream: boolean anyMatch(java.util.function.Predicate)>($r4);	return $z0
;block_num 1
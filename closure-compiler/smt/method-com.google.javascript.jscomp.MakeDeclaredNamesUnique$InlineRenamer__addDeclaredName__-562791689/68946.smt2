(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1284 0)
(declare-sort var2066 0)
(declare-sort var3670 0)
(declare-sort var2109 0)
(declare-sort var3185 0)
(declare-sort var464 0)
(declare-sort var582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3670_checkState/1431124798 (Bool) void)
(declare-fun declarations/400687851 (var1284) var2109)
(declare-fun var464_bootstrap$/-1539682909 (var1284) var3185)
(declare-fun var2109_computeIfAbsent/2133881068 (var2109 var582 var3185) var582)
(declare-fun cast-from-String-to-var582 (String) var582)
(declare-const null-var1284 var1284)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2357 var1284) ; Statement: r1 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer 
(assert (not (= var2357 null-var1284)))
(declare-const var1296 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1296 null-String)))
(declare-const var1374 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1374 null-Bool)))
(assert true)
(define-const var1692 Bool (= var1296 "arguments")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments") 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var1692 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3478 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)] 
(assert true) ; Non Conditional
;(assert (var3670_checkState/1431124798 var3478)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var3478!1 Bool)
 ; Statement: if z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> 
(assert (= (ite var1374 1 0) 0)) ; Cond: z1 == 0 
(define-const var377 var2109 (declarations/400687851 var2357)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> 
(define-const var833 var3185 (var464_bootstrap$/-1539682909 var2357)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer$getUniqueName__1322: java.util.function.Function bootstrap$(com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer)>(r1) 
;(assert (var2109_computeIfAbsent/2133881068 var377 (cast-from-String-to-var582 var1296) var833)) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>(r0, $r3) 

(declare-const var377!1 var2109)
(declare-const var1296!1 String)
(declare-const var833!1 var3185)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3670_checkState/1431124798=([boolean], void), declarations/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.Map), var464_bootstrap$/-1539682909=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.function.Function), var2109_computeIfAbsent/2133881068=([java.util.Map, java.lang.Object, java.util.function.Function], java.lang.Object), cast-from-String-to-var582=([java.lang.String], java.lang.Object)}
; {var1284=com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer, var2357=r1, var1296=r0, var2066=null_type, var1374=z1, var1692=$z0, var3478=$z2, var3670=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2109=java.util.Map, var377=$r2, var3185=java.util.function.Function, var464=com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer$getUniqueName__1322, var833=$r3, var582=java.lang.Object}
; {com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer=var1284, r1=var2357, r0=var1296, null_type=var2066, z1=var1374, $z0=var1692, $z2=var3478, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3670, java.util.Map=var2109, $r2=var377, java.util.function.Function=var3185, com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer$getUniqueName__1322=var464, $r3=var833, java.lang.Object=var582}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer;	r0 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	if z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations>;	$r2 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations>;	$r3 = staticinvoke <com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer$getUniqueName__1322: java.util.function.Function bootstrap$(com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer)>(r1);	interfaceinvoke $r2.<java.util.Map: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>(r0, $r3);	return
;block_num 5
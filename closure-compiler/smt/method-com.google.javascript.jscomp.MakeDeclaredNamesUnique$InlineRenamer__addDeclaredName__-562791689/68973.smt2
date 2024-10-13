(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1400 0)
(declare-sort var1256 0)
(declare-sort var2480 0)
(declare-sort var2186 0)
(declare-sort var3999 0)
(declare-sort var606 0)
(declare-sort var74 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2480_checkState/1431124798 (Bool) void)
(declare-fun declarations/400687851 (var1400) var2186)
(declare-fun var606_bootstrap$/-1539682909 (var1400) var3999)
(declare-fun var2186_computeIfAbsent/2133881068 (var2186 var74 var3999) var74)
(declare-fun cast-from-String-to-var74 (String) var74)
(declare-const null-var1400 var1400)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var417 var1400) ; Statement: r1 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer 
(assert (not (= var417 null-var1400)))
(declare-const var10 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var10 null-String)))
(declare-const var1811 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1811 null-Bool)))
(assert true)
(define-const var1363 Bool (= var10 "arguments")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments") 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var1363 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2684 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var2480_checkState/1431124798 var2684)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var2684!1 Bool)
 ; Statement: if z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> 
(assert (= (ite var1811 1 0) 0)) ; Cond: z1 == 0 
(define-const var940 var2186 (declarations/400687851 var417)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> 
(define-const var63 var3999 (var606_bootstrap$/-1539682909 var417)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer$getUniqueName__1322: java.util.function.Function bootstrap$(com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer)>(r1) 
;(assert (var2186_computeIfAbsent/2133881068 var940 (cast-from-String-to-var74 var10) var63)) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>(r0, $r3) 

(declare-const var940!1 var2186)
(declare-const var10!1 String)
(declare-const var63!1 var3999)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2480_checkState/1431124798=([boolean], void), declarations/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.Map), var606_bootstrap$/-1539682909=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.function.Function), var2186_computeIfAbsent/2133881068=([java.util.Map, java.lang.Object, java.util.function.Function], java.lang.Object), cast-from-String-to-var74=([java.lang.String], java.lang.Object)}
; {var1400=com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer, var417=r1, var10=r0, var1256=null_type, var1811=z1, var1363=$z0, var2684=$z2, var2480=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2186=java.util.Map, var940=$r2, var3999=java.util.function.Function, var606=com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer$getUniqueName__1322, var63=$r3, var74=java.lang.Object}
; {com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer=var1400, r1=var417, r0=var10, null_type=var1256, z1=var1811, $z0=var1363, $z2=var2684, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2480, java.util.Map=var2186, $r2=var940, java.util.function.Function=var3999, com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer$getUniqueName__1322=var606, $r3=var63, java.lang.Object=var74}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer;	r0 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	if z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations>;	$r2 = r1.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations>;	$r3 = staticinvoke <com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer$getUniqueName__1322: java.util.function.Function bootstrap$(com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer)>(r1);	interfaceinvoke $r2.<java.util.Map: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>(r0, $r3);	return
;block_num 5
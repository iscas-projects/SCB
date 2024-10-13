(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3 0)
(declare-sort var2920 0)
(declare-sort var3415 0)
(declare-sort var464 0)
(declare-sort var2228 0)
(declare-sort var2297 0)
(declare-sort var8 0)
(declare-sort var2402 0)
(declare-sort var105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3415_copyOf/-843126217 (var3) var3415)
(declare-fun var464_containsOverlaps/-1925358180 (var3415) Bool)
(declare-fun join/2083217584 (var2228 var2297) String)
(declare-fun cast-from-var3415-to-var2297 (var3415) var2297)
(declare-fun var8_checkArgument/1031231112 (Bool String var2402) void)
(declare-fun cast-from-String-to-var2402 (String) var2402)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun iterator/-2039785601 (var3415) var105)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var105-to-Iterator (var105) Iterator)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3 var3)
(declare-const null-String String)
(declare-const var464-DOUBLE_LINE_JOINER var2228)
(declare-const var50 var3) ; Statement: r0 := @parameter0: java.util.Collection 
(assert (not (= var50 null-var3)))
(declare-const var1852 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1852 null-String)))
(define-const var1223 var3415 (var3415_copyOf/-843126217 var50)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet copyOf(java.util.Collection)>(r0) 
(define-const var1688 Bool (var464_containsOverlaps/-1925358180 var1223)) ; Statement: $z0 = staticinvoke <com.google.javascript.refactoring.ApplySuggestedFixes: boolean containsOverlaps(com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet)>(r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1688 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2925 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $r2 = <com.google.javascript.refactoring.ApplySuggestedFixes: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner DOUBLE_LINE_JOINER>] 
(assert true) ; Non Conditional
(define-const var3947 var2228 var464-DOUBLE_LINE_JOINER) ; Statement: $r2 = <com.google.javascript.refactoring.ApplySuggestedFixes: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner DOUBLE_LINE_JOINER> 
(assert true)
(define-const var21 String (join/2083217584 var3947 (cast-from-var3415-to-var2297 var1223))) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Iterable)>(r1) 
;(assert (var8_checkArgument/1031231112 var2925 "Found overlap between code replacements:\n%s" (cast-from-String-to-var2402 var21))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Found overlap between code replacements:\n%s", $r3) 

(declare-const var2925!1 Bool)
(declare-const var228 String)
(declare-const var21!1 String)
(define-const var2278 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2278)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2278!1 String)
(assert (= var2278!1 ""))
(define-const var2033 Int 0) ; Statement: i3 = 0 
(assert true)
(define-const var3582 var105 (iterator/-2039785601 var1223)) ; Statement: $r10 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2465 Bool (Iterator_hasNext/-1669924200 (cast-from-var105-to-Iterator var3582))) ; Statement: $z2 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
(assert (= (ite var2465 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var3143 Int (length/-134980193 var1852)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
 ; Statement: if i3 > $i0 goto $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (> var2033 var3143)) ; Cond: i3 > $i0 
(assert true)
(define-const var3356 String (toString/-2075883882 var2278!1)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3415_copyOf/-843126217=([java.util.Collection], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet), var464_containsOverlaps/-1925358180=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet], boolean), join/2083217584=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, java.lang.Iterable], java.lang.String), cast-from-var3415-to-var2297=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet], java.lang.Iterable), var8_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var2402=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), iterator/-2039785601=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var105-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3=java.util.Collection, var50=r0, var1852=r5, var2920=null_type, var3415=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet, var1223=r1, var464=com.google.javascript.refactoring.ApplySuggestedFixes, var1688=$z0, var2925=$z1, var2228=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, var3947=$r2, var2297=java.lang.Iterable, var21=$r3, var8=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2402=java.lang.Object, var228="Found overlap between code replacements:\n%s", var2278=$r4, var2033=i3, var105=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var3582=$r10, var2465=$z2, var3143=$i0, var3356=$r6}
; {java.util.Collection=var3, r0=var50, r5=var1852, null_type=var2920, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet=var3415, r1=var1223, com.google.javascript.refactoring.ApplySuggestedFixes=var464, $z0=var1688, $z1=var2925, com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner=var2228, $r2=var3947, java.lang.Iterable=var2297, $r3=var21, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var8, java.lang.Object=var2402, "Found overlap between code replacements:\n%s"=var228, $r4=var2278, i3=var2033, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var105, $r10=var3582, $z2=var2465, $i0=var3143, $r6=var3356}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Collection;	r5 := @parameter1: java.lang.String;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet copyOf(java.util.Collection)>(r0);	$z0 = staticinvoke <com.google.javascript.refactoring.ApplySuggestedFixes: boolean containsOverlaps(com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet)>(r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= $r2 = <com.google.javascript.refactoring.ApplySuggestedFixes: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner DOUBLE_LINE_JOINER>];	$r2 = <com.google.javascript.refactoring.ApplySuggestedFixes: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner DOUBLE_LINE_JOINER>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Iterable)>(r1);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Found overlap between code replacements:\n%s", $r3);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	$r10 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z2 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $i0 = virtualinvoke r5.<java.lang.String: int length()>();	$i0 = virtualinvoke r5.<java.lang.String: int length()>();	if i3 > $i0 goto $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 6
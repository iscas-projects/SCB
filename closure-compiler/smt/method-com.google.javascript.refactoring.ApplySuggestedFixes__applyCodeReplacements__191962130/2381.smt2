(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3886 0)
(declare-sort var3814 0)
(declare-sort var823 0)
(declare-sort var2473 0)
(declare-sort var1599 0)
(declare-sort var3902 0)
(declare-sort var225 0)
(declare-sort var2394 0)
(declare-sort var2729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var823_copyOf/-843126217 (var3886) var823)
(declare-fun var2473_containsOverlaps/-1925358180 (var823) Bool)
(declare-fun join/2083217584 (var1599 var3902) String)
(declare-fun cast-from-var823-to-var3902 (var823) var3902)
(declare-fun var225_checkArgument/1031231112 (Bool String var2394) void)
(declare-fun cast-from-String-to-var2394 (String) var2394)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun iterator/-2039785601 (var823) var2729)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var2729-to-Iterator (var2729) Iterator)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3886 var3886)
(declare-const null-String String)
(declare-const var2473-DOUBLE_LINE_JOINER var1599)
(declare-const var1499 var3886) ; Statement: r0 := @parameter0: java.util.Collection 
(assert (not (= var1499 null-var3886)))
(declare-const var3946 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3946 null-String)))
(define-const var3254 var823 (var823_copyOf/-843126217 var1499)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet copyOf(java.util.Collection)>(r0) 
(define-const var902 Bool (var2473_containsOverlaps/-1925358180 var3254)) ; Statement: $z0 = staticinvoke <com.google.javascript.refactoring.ApplySuggestedFixes: boolean containsOverlaps(com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet)>(r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var902 1 0) 0))) ; Cond: $z0 != 0 
(define-const var917 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var3971 var1599 var2473-DOUBLE_LINE_JOINER) ; Statement: $r2 = <com.google.javascript.refactoring.ApplySuggestedFixes: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner DOUBLE_LINE_JOINER> 
(assert true)
(define-const var574 String (join/2083217584 var3971 (cast-from-var823-to-var3902 var3254))) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Iterable)>(r1) 
;(assert (var225_checkArgument/1031231112 var917 "Found overlap between code replacements:\n%s" (cast-from-String-to-var2394 var574))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Found overlap between code replacements:\n%s", $r3) 

(declare-const var917!1 Bool)
(declare-const var644 String)
(declare-const var574!1 String)
(define-const var2140 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2140)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2140!1 String)
(assert (= var2140!1 ""))
(define-const var585 Int 0) ; Statement: i3 = 0 
(assert true)
(define-const var2212 var2729 (iterator/-2039785601 var3254)) ; Statement: $r10 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var425 Bool (Iterator_hasNext/-1669924200 (cast-from-var2729-to-Iterator var2212))) ; Statement: $z2 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
(assert (= (ite var425 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var601 Int (length/-134980193 var3946)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
 ; Statement: if i3 > $i0 goto $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (> var585 var601)) ; Cond: i3 > $i0 
(assert true)
(define-const var3813 String (toString/-2075883882 var2140!1)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var823_copyOf/-843126217=([java.util.Collection], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet), var2473_containsOverlaps/-1925358180=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet], boolean), join/2083217584=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, java.lang.Iterable], java.lang.String), cast-from-var823-to-var3902=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet], java.lang.Iterable), var225_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var2394=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), iterator/-2039785601=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var2729-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3886=java.util.Collection, var1499=r0, var3946=r5, var3814=null_type, var823=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet, var3254=r1, var2473=com.google.javascript.refactoring.ApplySuggestedFixes, var902=$z0, var917=$z1, var1599=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, var3971=$r2, var3902=java.lang.Iterable, var574=$r3, var225=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2394=java.lang.Object, var644="Found overlap between code replacements:\n%s", var2140=$r4, var585=i3, var2729=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var2212=$r10, var425=$z2, var601=$i0, var3813=$r6}
; {java.util.Collection=var3886, r0=var1499, r5=var3946, null_type=var3814, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet=var823, r1=var3254, com.google.javascript.refactoring.ApplySuggestedFixes=var2473, $z0=var902, $z1=var917, com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner=var1599, $r2=var3971, java.lang.Iterable=var3902, $r3=var574, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var225, java.lang.Object=var2394, "Found overlap between code replacements:\n%s"=var644, $r4=var2140, i3=var585, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var2729, $r10=var2212, $z2=var425, $i0=var601, $r6=var3813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Collection;	r5 := @parameter1: java.lang.String;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet copyOf(java.util.Collection)>(r0);	$z0 = staticinvoke <com.google.javascript.refactoring.ApplySuggestedFixes: boolean containsOverlaps(com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet)>(r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	$r2 = <com.google.javascript.refactoring.ApplySuggestedFixes: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner DOUBLE_LINE_JOINER>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Iterable)>(r1);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Found overlap between code replacements:\n%s", $r3);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	$r10 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSortedSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z2 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $i0 = virtualinvoke r5.<java.lang.String: int length()>();	$i0 = virtualinvoke r5.<java.lang.String: int length()>();	if i3 > $i0 goto $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 6
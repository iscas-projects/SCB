(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3188 0)
(declare-sort var257 0)
(declare-sort var2054 0)
(declare-sort var2552 0)
(declare-sort var392 0)
(declare-sort var3396 0)
(declare-sort var1185 0)
(declare-sort var860 0)
(declare-sort var2787 0)
(declare-sort var556 0)
(declare-sort var427 0)
(declare-sort var2290 0)
(declare-sort var3191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2552_checkNotNull/1446102589 (var392) var392)
(declare-fun cast-from-String-to-var392 (String) var392)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2552_checkArgument/1735511034 (Bool) void)
(declare-fun var3188_getRootElementOfName/-1110328893 (String) String)
(declare-fun var257_getOwnSlot/-686948112 (var257 String) var3396)
(declare-fun split/-545181050 (var1185 String) var860)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2787_skip/447408648 (var860 Int) var860)
(declare-fun var556_copyOf/-499523795 (var860) var556)
(declare-fun var3396_getType/-550835114 (var3396) var427)
(declare-fun resolveViaPropertyGivenSlot/-1400938930 (var3188 var427 var2290 var3191) var427)
(declare-fun cast-from-var556-to-var3191 (var556) var3191)
(declare-const null-var3188 var3188)
(declare-const null-var257 var257)
(declare-const null-String String)
(declare-const null-var3396 var3396)
(declare-const var3188-DOT_SPLITTER var1185)
(declare-const null-NullType var2054)
(declare-const null-var2290 var2290)
(declare-const var1957 var3188) ; Statement: r7 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var1957 null-var3188)))
(declare-const var870 var257) ; Statement: r1 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope 
(assert (not (= var870 null-var257)))
(declare-const var3395 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3395 null-String)))
;(assert (var2552_checkNotNull/1446102589 (cast-from-String-to-var392 var3395))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3395!1 String)
(assert true)
(define-const var840 Bool (isEmpty/-1285796103 var3395!1)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var840 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1600 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var2552_checkArgument/1735511034 var1600)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1) 

(declare-const var1600!1 Bool)
(define-const var3807 String (var3188_getRootElementOfName/-1110328893 var3395!1)) ; Statement: $r9 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: java.lang.String getRootElementOfName(java.lang.String)>(r0) 
(define-const var2941 var3396 (var257_getOwnSlot/-686948112 var870 var3807)) ; Statement: $r10 = interfaceinvoke r1.<com.google.javascript.rhino.jstype.StaticTypedScope: com.google.javascript.rhino.jstype.StaticTypedSlot getOwnSlot(java.lang.String)>($r9) 
 ; Statement: if $r10 != null goto $r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER> 
(assert (not (= var2941 null-var3396))) ; Cond: $r10 != null 
(define-const var3468 var1185 var3188-DOT_SPLITTER) ; Statement: $r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER> 
(assert true)
(define-const var2027 var860 (split/-545181050 var3468 (cast-from-String-to-String var3395!1))) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r0) 
(define-const var1991 var860 (var2787_skip/447408648 var2027 1)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables: java.lang.Iterable skip(java.lang.Iterable,int)>($r3, 1) 
(define-const var3759 var556 (var556_copyOf/-499523795 var1991)) ; Statement: r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4) 
(define-const var2372 var427 (var3396_getType/-550835114 var2941)) ; Statement: r6 = interfaceinvoke $r10.<com.google.javascript.rhino.jstype.StaticTypedSlot: com.google.javascript.rhino.jstype.JSType getType()>() 
(assert true)
(define-const var325 var427 (resolveViaPropertyGivenSlot/-1400938930 var1957 var2372 null-var2290 (cast-from-var556-to-var3191 var3759))) ; Statement: $r8 = virtualinvoke r7.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType resolveViaPropertyGivenSlot(com.google.javascript.rhino.jstype.JSType,com.google.javascript.rhino.Node,java.util.List)>(r6, null, r5) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2552_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var392=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), var2552_checkArgument/1735511034=([boolean], void), var3188_getRootElementOfName/-1110328893=([java.lang.String], java.lang.String), var257_getOwnSlot/-686948112=([com.google.javascript.rhino.jstype.StaticTypedScope, java.lang.String], com.google.javascript.rhino.jstype.StaticTypedSlot), split/-545181050=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.lang.Iterable), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2787_skip/447408648=([java.lang.Iterable, int], java.lang.Iterable), var556_copyOf/-499523795=([java.lang.Iterable], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), var3396_getType/-550835114=([com.google.javascript.rhino.jstype.StaticTypedSlot], com.google.javascript.rhino.jstype.JSType), resolveViaPropertyGivenSlot/-1400938930=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.jstype.JSType, com.google.javascript.rhino.Node, java.util.List], com.google.javascript.rhino.jstype.JSType), cast-from-var556-to-var3191=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.List)}
; {var3188=com.google.javascript.rhino.jstype.JSTypeRegistry, var1957=r7, var257=com.google.javascript.rhino.jstype.StaticTypedScope, var870=r1, var3395=r0, var2054=null_type, var2552=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var392=java.lang.Object, var840=$z0, var1600=$z1, var3807=$r9, var3396=com.google.javascript.rhino.jstype.StaticTypedSlot, var2941=$r10, var1185=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var3468=$r2, var860=java.lang.Iterable, var2027=$r3, var2787=com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables, var1991=$r4, var556=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3759=r5, var427=com.google.javascript.rhino.jstype.JSType, var2372=r6, var2290=com.google.javascript.rhino.Node, var3191=java.util.List, var325=$r8}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var3188, r7=var1957, com.google.javascript.rhino.jstype.StaticTypedScope=var257, r1=var870, r0=var3395, null_type=var2054, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2552, java.lang.Object=var392, $z0=var840, $z1=var1600, $r9=var3807, com.google.javascript.rhino.jstype.StaticTypedSlot=var3396, $r10=var2941, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var1185, $r2=var3468, java.lang.Iterable=var860, $r3=var2027, com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables=var2787, $r4=var1991, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var556, r5=var3759, com.google.javascript.rhino.jstype.JSType=var427, r6=var2372, com.google.javascript.rhino.Node=var2290, java.util.List=var3191, $r8=var325}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r7 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r1 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope;	r0 := @parameter1: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1);	$r9 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: java.lang.String getRootElementOfName(java.lang.String)>(r0);	$r10 = interfaceinvoke r1.<com.google.javascript.rhino.jstype.StaticTypedScope: com.google.javascript.rhino.jstype.StaticTypedSlot getOwnSlot(java.lang.String)>($r9);	if $r10 != null goto $r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER>;	$r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r0);	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables: java.lang.Iterable skip(java.lang.Iterable,int)>($r3, 1);	r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4);	r6 = interfaceinvoke $r10.<com.google.javascript.rhino.jstype.StaticTypedSlot: com.google.javascript.rhino.jstype.JSType getType()>();	$r8 = virtualinvoke r7.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType resolveViaPropertyGivenSlot(com.google.javascript.rhino.jstype.JSType,com.google.javascript.rhino.Node,java.util.List)>(r6, null, r5);	return $r8
;block_num 4
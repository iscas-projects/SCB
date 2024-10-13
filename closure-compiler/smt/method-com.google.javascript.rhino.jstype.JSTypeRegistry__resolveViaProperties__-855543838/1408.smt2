(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1897 0)
(declare-sort var2787 0)
(declare-sort var2759 0)
(declare-sort var251 0)
(declare-sort var1434 0)
(declare-sort var2665 0)
(declare-sort var1588 0)
(declare-sort var2064 0)
(declare-sort var1671 0)
(declare-sort var2427 0)
(declare-sort var2271 0)
(declare-sort var2470 0)
(declare-sort var2577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var251_checkNotNull/1446102589 (var1434) var1434)
(declare-fun cast-from-String-to-var1434 (String) var1434)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var251_checkArgument/1735511034 (Bool) void)
(declare-fun var1897_getRootElementOfName/-1110328893 (String) String)
(declare-fun var2787_getOwnSlot/-686948112 (var2787 String) var2665)
(declare-fun split/-545181050 (var1588 String) var2064)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1671_skip/447408648 (var2064 Int) var2064)
(declare-fun var2427_copyOf/-499523795 (var2064) var2427)
(declare-fun var2665_getType/-550835114 (var2665) var2271)
(declare-fun resolveViaPropertyGivenSlot/-1400938930 (var1897 var2271 var2470 var2577) var2271)
(declare-fun cast-from-var2427-to-var2577 (var2427) var2577)
(declare-const null-var1897 var1897)
(declare-const null-var2787 var2787)
(declare-const null-String String)
(declare-const null-var2665 var2665)
(declare-const var1897-DOT_SPLITTER var1588)
(declare-const null-NullType var2759)
(declare-const null-var2470 var2470)
(declare-const var940 var1897) ; Statement: r7 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var940 null-var1897)))
(declare-const var523 var2787) ; Statement: r1 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope 
(assert (not (= var523 null-var2787)))
(declare-const var1617 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1617 null-String)))
;(assert (var251_checkNotNull/1446102589 (cast-from-String-to-var1434 var1617))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1617!1 String)
(assert true)
(define-const var2303 Bool (isEmpty/-1285796103 var1617!1)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var2303 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2397 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var251_checkArgument/1735511034 var2397)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1) 

(declare-const var2397!1 Bool)
(define-const var2612 String (var1897_getRootElementOfName/-1110328893 var1617!1)) ; Statement: $r9 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: java.lang.String getRootElementOfName(java.lang.String)>(r0) 
(define-const var8 var2665 (var2787_getOwnSlot/-686948112 var523 var2612)) ; Statement: $r10 = interfaceinvoke r1.<com.google.javascript.rhino.jstype.StaticTypedScope: com.google.javascript.rhino.jstype.StaticTypedSlot getOwnSlot(java.lang.String)>($r9) 
 ; Statement: if $r10 != null goto $r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER> 
(assert (not (= var8 null-var2665))) ; Cond: $r10 != null 
(define-const var1411 var1588 var1897-DOT_SPLITTER) ; Statement: $r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER> 
(assert true)
(define-const var957 var2064 (split/-545181050 var1411 (cast-from-String-to-String var1617!1))) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r0) 
(define-const var3856 var2064 (var1671_skip/447408648 var957 1)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables: java.lang.Iterable skip(java.lang.Iterable,int)>($r3, 1) 
(define-const var1855 var2427 (var2427_copyOf/-499523795 var3856)) ; Statement: r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4) 
(define-const var2181 var2271 (var2665_getType/-550835114 var8)) ; Statement: r6 = interfaceinvoke $r10.<com.google.javascript.rhino.jstype.StaticTypedSlot: com.google.javascript.rhino.jstype.JSType getType()>() 
(assert true)
(define-const var1640 var2271 (resolveViaPropertyGivenSlot/-1400938930 var940 var2181 null-var2470 (cast-from-var2427-to-var2577 var1855))) ; Statement: $r8 = virtualinvoke r7.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType resolveViaPropertyGivenSlot(com.google.javascript.rhino.jstype.JSType,com.google.javascript.rhino.Node,java.util.List)>(r6, null, r5) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var251_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var1434=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), var251_checkArgument/1735511034=([boolean], void), var1897_getRootElementOfName/-1110328893=([java.lang.String], java.lang.String), var2787_getOwnSlot/-686948112=([com.google.javascript.rhino.jstype.StaticTypedScope, java.lang.String], com.google.javascript.rhino.jstype.StaticTypedSlot), split/-545181050=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.lang.Iterable), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1671_skip/447408648=([java.lang.Iterable, int], java.lang.Iterable), var2427_copyOf/-499523795=([java.lang.Iterable], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), var2665_getType/-550835114=([com.google.javascript.rhino.jstype.StaticTypedSlot], com.google.javascript.rhino.jstype.JSType), resolveViaPropertyGivenSlot/-1400938930=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.jstype.JSType, com.google.javascript.rhino.Node, java.util.List], com.google.javascript.rhino.jstype.JSType), cast-from-var2427-to-var2577=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.List)}
; {var1897=com.google.javascript.rhino.jstype.JSTypeRegistry, var940=r7, var2787=com.google.javascript.rhino.jstype.StaticTypedScope, var523=r1, var1617=r0, var2759=null_type, var251=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1434=java.lang.Object, var2303=$z0, var2397=$z1, var2612=$r9, var2665=com.google.javascript.rhino.jstype.StaticTypedSlot, var8=$r10, var1588=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var1411=$r2, var2064=java.lang.Iterable, var957=$r3, var1671=com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables, var3856=$r4, var2427=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1855=r5, var2271=com.google.javascript.rhino.jstype.JSType, var2181=r6, var2470=com.google.javascript.rhino.Node, var2577=java.util.List, var1640=$r8}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var1897, r7=var940, com.google.javascript.rhino.jstype.StaticTypedScope=var2787, r1=var523, r0=var1617, null_type=var2759, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var251, java.lang.Object=var1434, $z0=var2303, $z1=var2397, $r9=var2612, com.google.javascript.rhino.jstype.StaticTypedSlot=var2665, $r10=var8, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var1588, $r2=var1411, java.lang.Iterable=var2064, $r3=var957, com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables=var1671, $r4=var3856, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2427, r5=var1855, com.google.javascript.rhino.jstype.JSType=var2271, r6=var2181, com.google.javascript.rhino.Node=var2470, java.util.List=var2577, $r8=var1640}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r7 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r1 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope;	r0 := @parameter1: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1);	$r9 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: java.lang.String getRootElementOfName(java.lang.String)>(r0);	$r10 = interfaceinvoke r1.<com.google.javascript.rhino.jstype.StaticTypedScope: com.google.javascript.rhino.jstype.StaticTypedSlot getOwnSlot(java.lang.String)>($r9);	if $r10 != null goto $r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER>;	$r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r0);	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables: java.lang.Iterable skip(java.lang.Iterable,int)>($r3, 1);	r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4);	r6 = interfaceinvoke $r10.<com.google.javascript.rhino.jstype.StaticTypedSlot: com.google.javascript.rhino.jstype.JSType getType()>();	$r8 = virtualinvoke r7.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType resolveViaPropertyGivenSlot(com.google.javascript.rhino.jstype.JSType,com.google.javascript.rhino.Node,java.util.List)>(r6, null, r5);	return $r8
;block_num 4
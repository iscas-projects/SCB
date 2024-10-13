(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1073 0)
(declare-sort var145 0)
(declare-sort var3498 0)
(declare-sort var1915 0)
(declare-sort var1449 0)
(declare-sort var2843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1915_checkNotNull/1446102589 (var1449) var1449)
(declare-fun cast-from-String-to-var1449 (String) var1449)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1915_checkArgument/1735511034 (Bool) void)
(declare-fun var1073_getRootElementOfName/-1110328893 (String) String)
(declare-fun var145_getOwnSlot/-686948112 (var145 String) var2843)
(declare-const null-var1073 var1073)
(declare-const null-var145 var145)
(declare-const null-String String)
(declare-const null-var2843 var2843)
(declare-const var3054 var1073) ; Statement: r7 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var3054 null-var1073)))
(declare-const var2228 var145) ; Statement: r1 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope 
(assert (not (= var2228 null-var145)))
(declare-const var2796 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2796 null-String)))
;(assert (var1915_checkNotNull/1446102589 (cast-from-String-to-var1449 var2796))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2796!1 String)
(assert true)
(define-const var2795 Bool (isEmpty/-1285796103 var2796!1)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var2795 1 0) 0))) ; Cond: $z0 != 0 
(define-const var779 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var1915_checkArgument/1735511034 var779)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1) 

(declare-const var779!1 Bool)
(define-const var539 String (var1073_getRootElementOfName/-1110328893 var2796!1)) ; Statement: $r9 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: java.lang.String getRootElementOfName(java.lang.String)>(r0) 
(define-const var2262 var2843 (var145_getOwnSlot/-686948112 var2228 var539)) ; Statement: $r10 = interfaceinvoke r1.<com.google.javascript.rhino.jstype.StaticTypedScope: com.google.javascript.rhino.jstype.StaticTypedSlot getOwnSlot(java.lang.String)>($r9) 
 ; Statement: if $r10 != null goto $r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER> 
(assert (not (not (= var2262 null-var2843)))) ; Negate: Cond: $r10 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1915_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var1449=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), var1915_checkArgument/1735511034=([boolean], void), var1073_getRootElementOfName/-1110328893=([java.lang.String], java.lang.String), var145_getOwnSlot/-686948112=([com.google.javascript.rhino.jstype.StaticTypedScope, java.lang.String], com.google.javascript.rhino.jstype.StaticTypedSlot)}
; {var1073=com.google.javascript.rhino.jstype.JSTypeRegistry, var3054=r7, var145=com.google.javascript.rhino.jstype.StaticTypedScope, var2228=r1, var2796=r0, var3498=null_type, var1915=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1449=java.lang.Object, var2795=$z0, var779=$z1, var539=$r9, var2843=com.google.javascript.rhino.jstype.StaticTypedSlot, var2262=$r10}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var1073, r7=var3054, com.google.javascript.rhino.jstype.StaticTypedScope=var145, r1=var2228, r0=var2796, null_type=var3498, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1915, java.lang.Object=var1449, $z0=var2795, $z1=var779, $r9=var539, com.google.javascript.rhino.jstype.StaticTypedSlot=var2843, $r10=var2262}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r7 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r1 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope;	r0 := @parameter1: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1);	$r9 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: java.lang.String getRootElementOfName(java.lang.String)>(r0);	$r10 = interfaceinvoke r1.<com.google.javascript.rhino.jstype.StaticTypedScope: com.google.javascript.rhino.jstype.StaticTypedSlot getOwnSlot(java.lang.String)>($r9);	if $r10 != null goto $r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER>;	return null
;block_num 4
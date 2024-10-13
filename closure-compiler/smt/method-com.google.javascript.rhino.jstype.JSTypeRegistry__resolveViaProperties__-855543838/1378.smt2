(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var202 0)
(declare-sort var3912 0)
(declare-sort var2639 0)
(declare-sort var1775 0)
(declare-sort var538 0)
(declare-sort var3635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1775_checkNotNull/1446102589 (var538) var538)
(declare-fun cast-from-String-to-var538 (String) var538)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1775_checkArgument/1735511034 (Bool) void)
(declare-fun var202_getRootElementOfName/-1110328893 (String) String)
(declare-fun var3912_getOwnSlot/-686948112 (var3912 String) var3635)
(declare-const null-var202 var202)
(declare-const null-var3912 var3912)
(declare-const null-String String)
(declare-const null-var3635 var3635)
(declare-const var1890 var202) ; Statement: r7 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry 
(assert (not (= var1890 null-var202)))
(declare-const var24 var3912) ; Statement: r1 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope 
(assert (not (= var24 null-var3912)))
(declare-const var2729 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2729 null-String)))
;(assert (var1775_checkNotNull/1446102589 (cast-from-String-to-var538 var2729))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2729!1 String)
(assert true)
(define-const var30 Bool (isEmpty/-1285796103 var2729!1)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var30 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var724 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var1775_checkArgument/1735511034 var724)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1) 

(declare-const var724!1 Bool)
(define-const var2480 String (var202_getRootElementOfName/-1110328893 var2729!1)) ; Statement: $r9 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: java.lang.String getRootElementOfName(java.lang.String)>(r0) 
(define-const var1626 var3635 (var3912_getOwnSlot/-686948112 var24 var2480)) ; Statement: $r10 = interfaceinvoke r1.<com.google.javascript.rhino.jstype.StaticTypedScope: com.google.javascript.rhino.jstype.StaticTypedSlot getOwnSlot(java.lang.String)>($r9) 
 ; Statement: if $r10 != null goto $r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER> 
(assert (not (not (= var1626 null-var3635)))) ; Negate: Cond: $r10 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1775_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var538=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), var1775_checkArgument/1735511034=([boolean], void), var202_getRootElementOfName/-1110328893=([java.lang.String], java.lang.String), var3912_getOwnSlot/-686948112=([com.google.javascript.rhino.jstype.StaticTypedScope, java.lang.String], com.google.javascript.rhino.jstype.StaticTypedSlot)}
; {var202=com.google.javascript.rhino.jstype.JSTypeRegistry, var1890=r7, var3912=com.google.javascript.rhino.jstype.StaticTypedScope, var24=r1, var2729=r0, var2639=null_type, var1775=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var538=java.lang.Object, var30=$z0, var724=$z1, var2480=$r9, var3635=com.google.javascript.rhino.jstype.StaticTypedSlot, var1626=$r10}
; {com.google.javascript.rhino.jstype.JSTypeRegistry=var202, r7=var1890, com.google.javascript.rhino.jstype.StaticTypedScope=var3912, r1=var24, r0=var2729, null_type=var2639, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1775, java.lang.Object=var538, $z0=var30, $z1=var724, $r9=var2480, com.google.javascript.rhino.jstype.StaticTypedSlot=var3635, $r10=var1626}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r7 := @this: com.google.javascript.rhino.jstype.JSTypeRegistry;	r1 := @parameter0: com.google.javascript.rhino.jstype.StaticTypedScope;	r0 := @parameter1: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1);	$r9 = staticinvoke <com.google.javascript.rhino.jstype.JSTypeRegistry: java.lang.String getRootElementOfName(java.lang.String)>(r0);	$r10 = interfaceinvoke r1.<com.google.javascript.rhino.jstype.StaticTypedScope: com.google.javascript.rhino.jstype.StaticTypedSlot getOwnSlot(java.lang.String)>($r9);	if $r10 != null goto $r2 = <com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER>;	return null
;block_num 4
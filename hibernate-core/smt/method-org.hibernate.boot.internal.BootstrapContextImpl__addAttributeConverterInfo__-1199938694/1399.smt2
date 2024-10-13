(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3085 0)
(declare-sort var1019 0)
(declare-sort var3165 0)
(declare-sort var1668 0)
(declare-sort var3404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributeConverterInfoMap/54904764 (var3085) var3165)
(declare-fun var1019_getConverterClass/1778052349 (var1019) ClassObject)
(declare-fun put/-1127386829 (var3165 var1668 var1668) var1668)
(declare-fun cast-from-ClassObject-to-var1668 (ClassObject) var1668)
(declare-fun cast-from-var1019-to-var1668 (var1019) var1668)
(declare-fun var3404-init () var3404)
(declare-fun arr-var1668-init () (Array Int var1668))
(declare-fun String_format/1339386452 (String (Array Int var1668)) String)
(declare-fun <init>/1590914260 (var3404 String) void)
(declare-const null-var3085 var3085)
(declare-const null-var1019 var1019)
(declare-const null-var3165 var3165)
(declare-const null-var1668 var1668)
(declare-const null-__Array__Int__var1668__ (Array Int var1668))
(declare-const var373 var3085) ; Statement: r0 := @this: org.hibernate.boot.internal.BootstrapContextImpl 
(assert (not (= var373 null-var3085)))
(declare-const var2108 var1019) ; Statement: r2 := @parameter0: org.hibernate.boot.AttributeConverterInfo 
(assert (not (= var2108 null-var1019)))
(define-const var1375 var3165 (attributeConverterInfoMap/54904764 var373)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap> 
(assert (not (= var1375 null-var3165))) ; Cond: $r1 != null 
(define-const var3586 var3165 (attributeConverterInfoMap/54904764 var373)) ; Statement: $r3 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap> 
(define-const var2660 ClassObject (var1019_getConverterClass/1778052349 var2108)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.boot.AttributeConverterInfo: java.lang.Class getConverterClass()>() 
(assert true)
(define-const var3358 var1668 (put/-1127386829 var3586 (cast-from-ClassObject-to-var1668 var2660) (cast-from-var1019-to-var1668 var2108))) ; Statement: $r10 = virtualinvoke $r3.<java.util.HashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r2) 
 ; Statement: if $r10 == null goto return 
(assert (not (= var3358 null-var1668))) ; Negate: Cond: $r10 == null  
(define-const var2598 var3404 var3404-init) ; Statement: $r5 = new org.hibernate.AssertionFailure 
(define-const var2322 (Array Int var1668) arr-var1668-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(define-const var2079 ClassObject (var1019_getConverterClass/1778052349 var2108)) ; Statement: $r7 = interfaceinvoke r2.<org.hibernate.boot.AttributeConverterInfo: java.lang.Class getConverterClass()>() 
(declare-const var2322!1 (Array Int var1668))
(assert (not (= var2322!1 null-__Array__Int__var1668__)))
(assert (= (select var2322!1 0) (cast-from-ClassObject-to-var1668 var2079))) ; Statement: $r6[0] = $r7 
(define-const var2655 String (String_format/1339386452 "AttributeConverter class [%s] registered multiple times" var2322!1)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("AttributeConverter class [%s] registered multiple times", $r6) 
(assert true)
;(assert (<init>/1590914260 var2598 var2655)) ; Statement: specialinvoke $r5.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r8) 

(declare-const var2598!1 var3404)
(declare-const var2655!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {attributeConverterInfoMap/54904764=([org.hibernate.boot.internal.BootstrapContextImpl], java.util.HashMap), var1019_getConverterClass/1778052349=([org.hibernate.boot.AttributeConverterInfo], java.lang.Class), put/-1127386829=([java.util.HashMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var1668=([java.lang.Class], java.lang.Object), cast-from-var1019-to-var1668=([org.hibernate.boot.AttributeConverterInfo], java.lang.Object), var3404-init=([], org.hibernate.AssertionFailure), arr-var1668-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var3085=org.hibernate.boot.internal.BootstrapContextImpl, var373=r0, var1019=org.hibernate.boot.AttributeConverterInfo, var2108=r2, var3165=java.util.HashMap, var1375=$r1, var3586=$r3, var2660=$r4, var1668=java.lang.Object, var3358=$r10, var3404=org.hibernate.AssertionFailure, var2598=$r5, var2322=$r6, var2079=$r7, var2655=$r8}
; {org.hibernate.boot.internal.BootstrapContextImpl=var3085, r0=var373, org.hibernate.boot.AttributeConverterInfo=var1019, r2=var2108, java.util.HashMap=var3165, $r1=var1375, $r3=var3586, $r4=var2660, java.lang.Object=var1668, $r10=var3358, org.hibernate.AssertionFailure=var3404, $r5=var2598, $r6=var2322, $r7=var2079, $r8=var2655}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.BootstrapContextImpl;	r2 := @parameter0: org.hibernate.boot.AttributeConverterInfo;	$r1 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap>;	if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap>;	$r3 = r0.<org.hibernate.boot.internal.BootstrapContextImpl: java.util.HashMap attributeConverterInfoMap>;	$r4 = interfaceinvoke r2.<org.hibernate.boot.AttributeConverterInfo: java.lang.Class getConverterClass()>();	$r10 = virtualinvoke $r3.<java.util.HashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r2);	if $r10 == null goto return;	$r5 = new org.hibernate.AssertionFailure;	$r6 = newarray (java.lang.Object)[1];	$r7 = interfaceinvoke r2.<org.hibernate.boot.AttributeConverterInfo: java.lang.Class getConverterClass()>();	$r6[0] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("AttributeConverter class [%s] registered multiple times", $r6);	specialinvoke $r5.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r8);	throw $r5
;block_num 3
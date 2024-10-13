(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var451 0)
(declare-sort var3262 0)
(declare-sort var3257 0)
(declare-sort var1505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3262) ClassObject)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun var3257_getLength/133105635 (var3262) Int)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun var3257_newInstance/1168168314 (ClassObject Int) var3262)
(declare-fun var1505_arraycopy/-325913181 (var3262 Int var3262 Int Int) void)
(declare-const null-var451 var451)
(declare-const null-var3262 var3262)
(declare-const var2621 var451) ; Statement: r13 := @this: org.hibernate.type.descriptor.java.ArrayMutabilityPlan 
(assert (not (= var2621 null-var451)))
(declare-const var3210 var3262) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3210 null-var3262)))
(assert true)
(define-const var817 ClassObject (getClass/1258963082 var3210)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2817 Bool (isArray/1369458484 var817)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z0 != 0 goto i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0) 
(assert (not (= (ite var2817 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3000 Int (var3257_getLength/133105635 var3210)) ; Statement: i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0) 
(assert true)
(define-const var1805 ClassObject (getClass/1258963082 var3210)) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2842 ClassObject (getComponentType/1960034130 var1805)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.Class getComponentType()>() 
(define-const var2806 var3262 (var3257_newInstance/1168168314 var2842 var3000)) ; Statement: r4 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>($r3, i0) 
;(assert (var1505_arraycopy/-325913181 var3210 0 var2806 0 var3000)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r0, 0, r4, 0, i0) 

(declare-const var3210!1 var3262)
(declare-const var629 Int)
(declare-const var2806!1 var3262)
(declare-const var629!1 Int)
(declare-const var3000!1 Int)
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), isArray/1369458484=([java.lang.Class], boolean), var3257_getLength/133105635=([java.lang.Object], int), getComponentType/1960034130=([java.lang.Class], java.lang.Class), var3257_newInstance/1168168314=([java.lang.Class, int], java.lang.Object), var1505_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void)}
; {var451=org.hibernate.type.descriptor.java.ArrayMutabilityPlan, var2621=r13, var3262=java.lang.Object, var3210=r0, var817=$r1, var2817=$z0, var3257=java.lang.reflect.Array, var3000=i0, var1805=$r2, var2842=$r3, var2806=r4, var1505=java.lang.System, var629=0}
; {org.hibernate.type.descriptor.java.ArrayMutabilityPlan=var451, r13=var2621, java.lang.Object=var3262, r0=var3210, $r1=var817, $z0=var2817, java.lang.reflect.Array=var3257, i0=var3000, $r2=var1805, $r3=var2842, r4=var2806, java.lang.System=var1505, 0=var629}
;seq 
;cnt {}
;stmts r13 := @this: org.hibernate.type.descriptor.java.ArrayMutabilityPlan;	r0 := @parameter0: java.lang.Object;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isArray()>();	if $z0 != 0 goto i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0);	i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0);	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.Class getComponentType()>();	r4 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>($r3, i0);	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r0, 0, r4, 0, i0);	return r4
;block_num 2
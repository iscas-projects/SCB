(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2065 0)
(declare-sort var1334 0)
(declare-sort var705 0)
(declare-sort var207 0)
(declare-sort var1032 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/813437137 (var207 var1334 var705) void)
(declare-fun cast-from-var2065-to-var207 (var2065) var207)
(declare-fun getClass/1258963082 (var1334) ClassObject)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun var1032_getLength/133105635 (var1334) Int)
(declare-fun length/1271517168 (var2065) Int)
(declare-const null-var2065 var2065)
(declare-const null-var1334 var1334)
(declare-const null-var705 var705)
(declare-const var2929 var2065) ; Statement: r0 := @this: freemarker.ext.beans.ArrayModel 
(assert (not (= var2929 null-var2065)))
(declare-const var1210 var1334) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1210 null-var1334)))
(declare-const var687 var705) ; Statement: r2 := @parameter1: freemarker.ext.beans.BeansWrapper 
(assert (not (= var687 null-var705)))
(assert true)
;(assert (<init>/813437137 (cast-from-var2065-to-var207 var2929) var1210 var687)) ; Statement: specialinvoke r0.<freemarker.ext.beans.BeanModel: void <init>(java.lang.Object,freemarker.ext.beans.BeansWrapper)>(r1, r2) 

(declare-const var2929!1 var2065)
(declare-const var1210!1 var1334)
(declare-const var687!1 var705)
(assert true)
(define-const var3407 ClassObject (getClass/1258963082 var1210!1)) ; Statement: r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2079 Bool (isArray/1369458484 var3407)) ; Statement: $z0 = virtualinvoke r3.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z0 != 0 goto $i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r1) 
(assert (not (= (ite var2079 1 0) 0))) ; Cond: $z0 != 0 
(define-const var262 Int (var1032_getLength/133105635 var1210!1)) ; Statement: $i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r1) 
(declare-const var2929!2 var2065)
(assert (not (= var2929!2 null-var2065)))
(assert (= (length/1271517168 var2929!2) var262)) ; Statement: r0.<freemarker.ext.beans.ArrayModel: int length> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/813437137=([freemarker.ext.beans.BeanModel, java.lang.Object, freemarker.ext.beans.BeansWrapper], void), cast-from-var2065-to-var207=([freemarker.ext.beans.ArrayModel], freemarker.ext.beans.BeanModel), getClass/1258963082=([java.lang.Object], java.lang.Class), isArray/1369458484=([java.lang.Class], boolean), var1032_getLength/133105635=([java.lang.Object], int), length/1271517168=([freemarker.ext.beans.ArrayModel], int)}
; {var2065=freemarker.ext.beans.ArrayModel, var2929=r0, var1334=java.lang.Object, var1210=r1, var705=freemarker.ext.beans.BeansWrapper, var687=r2, var207=freemarker.ext.beans.BeanModel, var3407=r3, var2079=$z0, var1032=java.lang.reflect.Array, var262=$i0}
; {freemarker.ext.beans.ArrayModel=var2065, r0=var2929, java.lang.Object=var1334, r1=var1210, freemarker.ext.beans.BeansWrapper=var705, r2=var687, freemarker.ext.beans.BeanModel=var207, r3=var3407, $z0=var2079, java.lang.reflect.Array=var1032, $i0=var262}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.ext.beans.ArrayModel;	r1 := @parameter0: java.lang.Object;	r2 := @parameter1: freemarker.ext.beans.BeansWrapper;	specialinvoke r0.<freemarker.ext.beans.BeanModel: void <init>(java.lang.Object,freemarker.ext.beans.BeansWrapper)>(r1, r2);	r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke r3.<java.lang.Class: boolean isArray()>();	if $z0 != 0 goto $i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r1);	$i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r1);	r0.<freemarker.ext.beans.ArrayModel: int length> = $i0;	return
;block_num 2
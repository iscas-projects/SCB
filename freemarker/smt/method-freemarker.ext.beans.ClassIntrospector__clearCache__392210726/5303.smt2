(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3145 0)
(declare-sort var3351 0)
(declare-sort var3152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getHasSharedInstanceRestrictions/-605816330 (var3145) Bool)
(declare-fun var3351-init () var3351)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3152) ClassObject)
(declare-fun cast-from-var3145-to-var3152 (var3145) var3152)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3351 String) void)
(declare-const null-var3145 var3145)
(declare-const var1577 var3145) ; Statement: r0 := @this: freemarker.ext.beans.ClassIntrospector 
(assert (not (= var1577 null-var3145)))
(assert true)
(define-const var173 Bool (getHasSharedInstanceRestrictions/-605816330 var1577)) ; Statement: $z0 = virtualinvoke r0.<freemarker.ext.beans.ClassIntrospector: boolean getHasSharedInstanceRestrictions()>() 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<freemarker.ext.beans.ClassIntrospector: void forcedClearCache()>() 
(assert (not (= (ite var173 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3876 var3351 var3351-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var2410 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2410)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2410!1 String)
(assert (= var2410!1 ""))
(assert true)
(define-const var2664 String (append/672562846 var2410!1 "It\u0027s not allowed to clear the whole cache in a read-only ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("It\'s not allowed to clear the whole cache in a read-only ") 
(declare-const var2410!2 String)
(assert (= var2410!2 (str.++ var2410!1 "It\u0027s not allowed to clear the whole cache in a read-only ")))
(assert true)
(define-const var3830 ClassObject (getClass/1258963082 (cast-from-var3145-to-var3152 var1577))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2857 String (getName/-1958580599 var3830)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3349 String (append/672562846 var2664 var2857)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2664!1 String)
(assert (= var2664!1 (str.++ var2664 var2857)))
(assert true)
(define-const var1651 String (append/672562846 var3349 "instance. Use removeFromClassIntrospectionCache(String prefix) instead.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("instance. Use removeFromClassIntrospectionCache(String prefix) instead.") 
(declare-const var3349!1 String)
(assert (= var3349!1 (str.++ var3349 "instance. Use removeFromClassIntrospectionCache(String prefix) instead.")))
(assert true)
(define-const var135 String (toString/-2075883882 var1651)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3876 var135)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var3876!1 var3351)
(declare-const var135!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getHasSharedInstanceRestrictions/-605816330=([freemarker.ext.beans.ClassIntrospector], boolean), var3351-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3145-to-var3152=([freemarker.ext.beans.ClassIntrospector], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3145=freemarker.ext.beans.ClassIntrospector, var1577=r0, var173=$z0, var3351=java.lang.IllegalStateException, var3876=$r1, var2410=$r2, var2664=$r5, var3152=java.lang.Object, var3830=$r3, var2857=$r4, var3349=$r6, var1651=$r7, var135=$r8}
; {freemarker.ext.beans.ClassIntrospector=var3145, r0=var1577, $z0=var173, java.lang.IllegalStateException=var3351, $r1=var3876, $r2=var2410, $r5=var2664, java.lang.Object=var3152, $r3=var3830, $r4=var2857, $r6=var3349, $r7=var1651, $r8=var135}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.beans.ClassIntrospector;	$z0 = virtualinvoke r0.<freemarker.ext.beans.ClassIntrospector: boolean getHasSharedInstanceRestrictions()>();	if $z0 == 0 goto specialinvoke r0.<freemarker.ext.beans.ClassIntrospector: void forcedClearCache()>();	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("It\'s not allowed to clear the whole cache in a read-only ");	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("instance. Use removeFromClassIntrospectionCache(String prefix) instead.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var344 0)
(declare-sort var2938 0)
(declare-sort var376 0)
(declare-sort var3223 0)
(declare-sort var1192 0)
(declare-sort var3967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun knownMappers/-970016727 (var344) var376)
(declare-fun var376_get/1088891777 (var376 var3223) var3223)
(declare-fun cast-from-ClassObject-to-var3223 (ClassObject) var3223)
(declare-fun cast-from-var3223-to-var1192 (var3223) var1192)
(declare-fun var3967-init () var3967)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3223) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1937591867 (var3967 String) void)
(declare-const null-var344 var344)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2938 var2938)
(declare-const null-var1192 var1192)
(declare-const var3341 var344) ; Statement: r0 := @this: org.apache.ibatis.binding.MapperRegistry 
(assert (not (= var3341 null-var344)))
(declare-const var1581 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var1581 null-ClassObject)))
(declare-const var508 var2938) ; Statement: r5 := @parameter1: org.apache.ibatis.session.SqlSession 
(assert (not (= var508 null-var2938)))
(define-const var1000 var376 (knownMappers/-970016727 var3341)) ; Statement: $r2 = r0.<org.apache.ibatis.binding.MapperRegistry: java.util.Map knownMappers> 
(define-const var2448 var3223 (var376_get/1088891777 var1000 (cast-from-ClassObject-to-var3223 var1581))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1828 var1192 (cast-from-var3223-to-var1192 var2448)) ; Statement: r4 = (org.apache.ibatis.binding.MapperProxyFactory) $r3 
 ; Statement: if r4 != null goto $r6 = virtualinvoke r4.<org.apache.ibatis.binding.MapperProxyFactory: java.lang.Object newInstance(org.apache.ibatis.session.SqlSession)>(r5) 
(assert (not (not (= var1828 null-var1192)))) ; Negate: Cond: r4 != null  
(define-const var1626 var3967 var3967-init) ; Statement: $r7 = new org.apache.ibatis.binding.BindingException 
(define-const var2319 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2319)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2319!1 String)
(assert (= var2319!1 ""))
(assert true)
(define-const var634 String (append/672562846 var2319!1 "Type ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type ") 
(declare-const var2319!2 String)
(assert (= var2319!2 (str.++ var2319!1 "Type ")))
(assert true)
(define-const var1073 String (append/-1031950772 var634 (cast-from-ClassObject-to-var3223 var1581))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var634!1 String)
(assert (str.prefixof var634 var634!1))
(assert true)
(define-const var1200 String (append/672562846 var1073 " is not known to the MapperRegistry.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not known to the MapperRegistry.") 
(declare-const var1073!1 String)
(assert (= var1073!1 (str.++ var1073 " is not known to the MapperRegistry.")))
(assert true)
(define-const var3833 String (toString/-2075883882 var1200)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1937591867 var1626 var3833)) ; Statement: specialinvoke $r7.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r12) 

(declare-const var1626!1 var3967)
(declare-const var3833!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {knownMappers/-970016727=([org.apache.ibatis.binding.MapperRegistry], java.util.Map), var376_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3223=([java.lang.Class], java.lang.Object), cast-from-var3223-to-var1192=([java.lang.Object], org.apache.ibatis.binding.MapperProxyFactory), var3967-init=([], org.apache.ibatis.binding.BindingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1937591867=([org.apache.ibatis.binding.BindingException, java.lang.String], void)}
; {var344=org.apache.ibatis.binding.MapperRegistry, var3341=r0, var1581=r1, var2938=org.apache.ibatis.session.SqlSession, var508=r5, var376=java.util.Map, var1000=$r2, var3223=java.lang.Object, var2448=$r3, var1192=org.apache.ibatis.binding.MapperProxyFactory, var1828=r4, var3967=org.apache.ibatis.binding.BindingException, var1626=$r7, var2319=$r8, var634=$r9, var1073=$r10, var1200=$r11, var3833=$r12}
; {org.apache.ibatis.binding.MapperRegistry=var344, r0=var3341, r1=var1581, org.apache.ibatis.session.SqlSession=var2938, r5=var508, java.util.Map=var376, $r2=var1000, java.lang.Object=var3223, $r3=var2448, org.apache.ibatis.binding.MapperProxyFactory=var1192, r4=var1828, org.apache.ibatis.binding.BindingException=var3967, $r7=var1626, $r8=var2319, $r9=var634, $r10=var1073, $r11=var1200, $r12=var3833}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.binding.MapperRegistry;	r1 := @parameter0: java.lang.Class;	r5 := @parameter1: org.apache.ibatis.session.SqlSession;	$r2 = r0.<org.apache.ibatis.binding.MapperRegistry: java.util.Map knownMappers>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.ibatis.binding.MapperProxyFactory) $r3;	if r4 != null goto $r6 = virtualinvoke r4.<org.apache.ibatis.binding.MapperProxyFactory: java.lang.Object newInstance(org.apache.ibatis.session.SqlSession)>(r5);	$r7 = new org.apache.ibatis.binding.BindingException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not known to the MapperRegistry.");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2
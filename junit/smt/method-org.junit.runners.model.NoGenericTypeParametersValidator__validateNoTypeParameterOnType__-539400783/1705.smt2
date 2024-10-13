(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3499 0)
(declare-sort var3167 0)
(declare-sort var1374 0)
(declare-sort var3342 0)
(declare-sort var2191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1374-init () var1374)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun method/-1695741358 (var3499) var3342)
(declare-fun getName/1227988463 (var3342) String)
(declare-fun append/-1031950772 (String var2191) String)
(declare-fun cast-from-ClassObject-to-var2191 (ClassObject) var2191)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var1374 String) void)
(declare-fun var3167_add/328494887 (var3167 var2191) Bool)
(declare-fun cast-from-var1374-to-var2191 (var1374) var2191)
(declare-const null-var3499 var3499)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3167 var3167)
(declare-const var157 var3499) ; Statement: r1 := @this: org.junit.runners.model.NoGenericTypeParametersValidator 
(assert (not (= var157 null-var3499)))
(declare-const var3950 ClassObject) ; Statement: r0 := @parameter0: java.lang.reflect.Type 
(assert (not (= var3950 null-ClassObject)))
(declare-const var2419 var3167) ; Statement: r2 := @parameter1: java.util.List 
(assert (not (= var2419 null-var3167)))
(define-const var2155 Bool true) ; Statement: $z0 = r0 instanceof java.lang.reflect.TypeVariable 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof java.lang.reflect.ParameterizedType 
(assert (not (= (ite var2155 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1313 var1374 var1374-init) ; Statement: $r6 = new java.lang.Exception 
(define-const var121 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var121)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var121!1 String)
(assert (= var121!1 ""))
(assert true)
(define-const var546 String (append/672562846 var121!1 "Method ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method ") 
(declare-const var121!2 String)
(assert (= var121!2 (str.++ var121!1 "Method ")))
(define-const var1676 var3342 (method/-1695741358 var157)) ; Statement: $r8 = r1.<org.junit.runners.model.NoGenericTypeParametersValidator: java.lang.reflect.Method method> 
(assert true)
(define-const var1969 String (getName/1227988463 var1676)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2366 String (append/672562846 var546 var1969)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var546!1 String)
(assert (= var546!1 (str.++ var546 var1969)))
(assert true)
(define-const var1122 String (append/672562846 var2366 "() contains unresolved type variable ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() contains unresolved type variable ") 
(declare-const var2366!1 String)
(assert (= var2366!1 (str.++ var2366 "() contains unresolved type variable ")))
(assert true)
(define-const var2286 String (append/-1031950772 var1122 (cast-from-ClassObject-to-var2191 var3950))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1122!1 String)
(assert (str.prefixof var1122 var1122!1))
(assert true)
(define-const var3357 String (toString/-2075883882 var2286)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 var1313 var3357)) ; Statement: specialinvoke $r6.<java.lang.Exception: void <init>(java.lang.String)>($r14) 

(declare-const var1313!1 var1374)
(declare-const var3357!1 String)
;(assert (var3167_add/328494887 var2419 (cast-from-var1374-to-var2191 var1313!1))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>($r6) 

(declare-const var2419!1 var3167)
(declare-const var1313!2 var1374)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1374-init=([], java.lang.Exception), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), method/-1695741358=([org.junit.runners.model.NoGenericTypeParametersValidator], java.lang.reflect.Method), getName/1227988463=([java.lang.reflect.Method], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2191=([java.lang.reflect.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), var3167_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1374-to-var2191=([java.lang.Exception], java.lang.Object)}
; {var3499=org.junit.runners.model.NoGenericTypeParametersValidator, var157=r1, var3950=r0, var3167=java.util.List, var2419=r2, var2155=$z0, var1374=java.lang.Exception, var1313=$r6, var121=$r7, var546=$r10, var3342=java.lang.reflect.Method, var1676=$r8, var1969=$r9, var2366=$r11, var1122=$r12, var2191=java.lang.Object, var2286=$r13, var3357=$r14}
; {org.junit.runners.model.NoGenericTypeParametersValidator=var3499, r1=var157, r0=var3950, java.util.List=var3167, r2=var2419, $z0=var2155, java.lang.Exception=var1374, $r6=var1313, $r7=var121, $r10=var546, java.lang.reflect.Method=var3342, $r8=var1676, $r9=var1969, $r11=var2366, $r12=var1122, java.lang.Object=var2191, $r13=var2286, $r14=var3357}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.runners.model.NoGenericTypeParametersValidator;	r0 := @parameter0: java.lang.reflect.Type;	r2 := @parameter1: java.util.List;	$z0 = r0 instanceof java.lang.reflect.TypeVariable;	if $z0 == 0 goto $z1 = r0 instanceof java.lang.reflect.ParameterizedType;	$r6 = new java.lang.Exception;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method ");	$r8 = r1.<org.junit.runners.model.NoGenericTypeParametersValidator: java.lang.reflect.Method method>;	$r9 = virtualinvoke $r8.<java.lang.reflect.Method: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("() contains unresolved type variable ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.Exception: void <init>(java.lang.String)>($r14);	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>($r6);	goto [?= return];	return
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1316 0)
(declare-sort var2352 0)
(declare-sort var3600 0)
(declare-sort var1956 0)
(declare-sort var1011 0)
(declare-sort var3455 0)
(declare-sort var2119 0)
(declare-sort var482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2119!class ClassObject)
(declare-fun <init>/-279557996 (var1956) void)
(declare-fun cast-from-var1316-to-var1956 (var1316) var1956)
(declare-fun getName/1227988463 (var3600) String)
(declare-fun getDeclaringClass/501867354 (var3600) ClassObject)
(declare-fun resolveMappedStatement/1760418334 (var1316 ClassObject String ClassObject var2352) var1011)
(declare-fun getAnnotation/-287905434 (var3600 ClassObject) var3455)
(declare-fun var482-init () var482)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1937591867 (var482 String) void)
(declare-const null-var1316 var1316)
(declare-const null-var2352 var2352)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3600 var3600)
(declare-const null-var1011 var1011)
(declare-const null-var3455 var3455)
(declare-const var3656 var1316) ; Statement: r0 := @this: org.apache.ibatis.binding.MapperMethod$SqlCommand 
(assert (not (= var3656 null-var1316)))
(declare-const var1857 var2352) ; Statement: r5 := @parameter0: org.apache.ibatis.session.Configuration 
(assert (not (= var1857 null-var2352)))
(declare-const var3468 ClassObject) ; Statement: r4 := @parameter1: java.lang.Class 
(assert (not (= var3468 null-ClassObject)))
(declare-const var3269 var3600) ; Statement: r1 := @parameter2: java.lang.reflect.Method 
(assert (not (= var3269 null-var3600)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1316-to-var1956 var3656))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3656!1 var1316)
(assert true)
(define-const var1852 String (getName/1227988463 var3269)) ; Statement: r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var854 ClassObject (getDeclaringClass/501867354 var3269)) ; Statement: r3 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var1787 var1011 (resolveMappedStatement/1760418334 var3656!1 var3468 var1852 var854 var1857)) ; Statement: r6 = specialinvoke r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.MappedStatement resolveMappedStatement(java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.session.Configuration)>(r4, r2, r3, r5) 
 ; Statement: if r6 != null goto $r7 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>() 
(assert (not (not (= var1787 null-var1011)))) ; Negate: Cond: r6 != null  
(assert true)
(define-const var87 var3455 (getAnnotation/-287905434 var3269 var2119!class)) ; Statement: $r17 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/apache/ibatis/annotations/Flush;") 
 ; Statement: if $r17 != null goto r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String name> = null 
(assert (not (not (= var87 null-var3455)))) ; Negate: Cond: $r17 != null  
(define-const var3351 var482 var482-init) ; Statement: $r19 = new org.apache.ibatis.binding.BindingException 
(define-const var3499 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3499)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3499!1 String)
(assert (= var3499!1 ""))
(assert true)
(define-const var1416 String (append/672562846 var3499!1 "Invalid bound statement (not found): ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid bound statement (not found): ") 
(declare-const var3499!2 String)
(assert (= var3499!2 (str.++ var3499!1 "Invalid bound statement (not found): ")))
(assert true)
(define-const var1467 String (getName/-1958580599 var3468)) ; Statement: $r21 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3781 String (append/672562846 var1416 var1467)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1416!1 String)
(assert (= var1416!1 (str.++ var1416 var1467)))
(assert true)
(define-const var2470 String (append/672562846 var3781 ".")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3781!1 String)
(assert (= var3781!1 (str.++ var3781 ".")))
(assert true)
(define-const var3704 String (append/672562846 var2470 var1852)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2470!1 String)
(assert (= var2470!1 (str.++ var2470 var1852)))
(assert true)
(define-const var964 String (toString/-2075883882 var3704)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1937591867 var3351 var964)) ; Statement: specialinvoke $r19.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r26) 

(declare-const var3351!1 var482)
(declare-const var964!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1316-to-var1956=([org.apache.ibatis.binding.MapperMethod$SqlCommand], java.lang.Object), getName/1227988463=([java.lang.reflect.Method], java.lang.String), getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), resolveMappedStatement/1760418334=([org.apache.ibatis.binding.MapperMethod$SqlCommand, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.session.Configuration], org.apache.ibatis.mapping.MappedStatement), getAnnotation/-287905434=([java.lang.reflect.Method, java.lang.Class], java.lang.annotation.Annotation), var482-init=([], org.apache.ibatis.binding.BindingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1937591867=([org.apache.ibatis.binding.BindingException, java.lang.String], void)}
; {var1316=org.apache.ibatis.binding.MapperMethod$SqlCommand, var3656=r0, var2352=org.apache.ibatis.session.Configuration, var1857=r5, var3468=r4, var3600=java.lang.reflect.Method, var3269=r1, var1956=java.lang.Object, var1852=r2, var854=r3, var1011=org.apache.ibatis.mapping.MappedStatement, var1787=r6, var3455=java.lang.annotation.Annotation, var2119=org.apache.ibatis.annotations.Flush, var87=$r17, var482=org.apache.ibatis.binding.BindingException, var3351=$r19, var3499=$r20, var1416=$r22, var1467=$r21, var3781=$r23, var2470=$r24, var3704=$r25, var964=$r26}
; {org.apache.ibatis.binding.MapperMethod$SqlCommand=var1316, r0=var3656, org.apache.ibatis.session.Configuration=var2352, r5=var1857, r4=var3468, java.lang.reflect.Method=var3600, r1=var3269, java.lang.Object=var1956, r2=var1852, r3=var854, org.apache.ibatis.mapping.MappedStatement=var1011, r6=var1787, java.lang.annotation.Annotation=var3455, org.apache.ibatis.annotations.Flush=var2119, $r17=var87, org.apache.ibatis.binding.BindingException=var482, $r19=var3351, $r20=var3499, $r22=var1416, $r21=var1467, $r23=var3781, $r24=var2470, $r25=var3704, $r26=var964}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.binding.MapperMethod$SqlCommand;	r5 := @parameter0: org.apache.ibatis.session.Configuration;	r4 := @parameter1: java.lang.Class;	r1 := @parameter2: java.lang.reflect.Method;	specialinvoke r0.<java.lang.Object: void <init>()>();	r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	r3 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	r6 = specialinvoke r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.MappedStatement resolveMappedStatement(java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.session.Configuration)>(r4, r2, r3, r5);	if r6 != null goto $r7 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>();	$r17 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/apache/ibatis/annotations/Flush;");	if $r17 != null goto r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String name> = null;	$r19 = new org.apache.ibatis.binding.BindingException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid bound statement (not found): ");	$r21 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r26);	throw $r19
;block_num 3
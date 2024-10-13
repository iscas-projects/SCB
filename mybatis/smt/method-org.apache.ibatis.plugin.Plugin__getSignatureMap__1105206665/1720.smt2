(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1936 0)
(declare-sort var1201 0)
(declare-sort var2506 0)
(declare-sort var1310 0)
(declare-sort var1990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1310!class ClassObject)
(declare-fun var1201_getClass/1258963082 (var1201) ClassObject)
(declare-fun cast-from-var1936-to-var1201 (var1936) var1201)
(declare-fun getAnnotation/-664766848 (ClassObject ClassObject) var2506)
(declare-fun cast-from-var2506-to-var1310 (var2506) var1310)
(declare-fun var1990-init () var1990)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/673174409 (var1990 String) void)
(declare-const null-var1936 var1936)
(declare-const null-var1310 var1310)
(declare-const var1312 var1936) ; Statement: r0 := @parameter0: org.apache.ibatis.plugin.Interceptor 
(assert (not (= var1312 null-var1936)))
(define-const var804 ClassObject (var1201_getClass/1258963082 (cast-from-var1936-to-var1201 var1312))) ; Statement: $r1 = interfaceinvoke r0.<org.apache.ibatis.plugin.Interceptor: java.lang.Class getClass()>() 
(assert true)
(define-const var2717 var2506 (getAnnotation/-664766848 var804 var1310!class)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/apache/ibatis/plugin/Intercepts;") 
(define-const var1335 var1310 (cast-from-var2506-to-var1310 var2717)) ; Statement: r3 = (org.apache.ibatis.plugin.Intercepts) $r2 
 ; Statement: if r3 != null goto r4 = interfaceinvoke r3.<org.apache.ibatis.plugin.Intercepts: org.apache.ibatis.plugin.Signature[] value()>() 
(assert (not (not (= var1335 null-var1310)))) ; Negate: Cond: r3 != null  
(define-const var1483 var1990 var1990-init) ; Statement: $r14 = new org.apache.ibatis.plugin.PluginException 
(define-const var2248 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2248)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2248!1 String)
(assert (= var2248!1 ""))
(assert true)
(define-const var1643 String (append/672562846 var2248!1 "No @Intercepts annotation was found in interceptor ")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No @Intercepts annotation was found in interceptor ") 
(declare-const var2248!2 String)
(assert (= var2248!2 (str.++ var2248!1 "No @Intercepts annotation was found in interceptor ")))
(define-const var2086 ClassObject (var1201_getClass/1258963082 (cast-from-var1936-to-var1201 var1312))) ; Statement: $r16 = interfaceinvoke r0.<org.apache.ibatis.plugin.Interceptor: java.lang.Class getClass()>() 
(assert true)
(define-const var260 String (getName/-1958580599 var2086)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2499 String (append/672562846 var1643 var260)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1643!1 String)
(assert (= var1643!1 (str.++ var1643 var260)))
(assert true)
(define-const var629 String (toString/-2075883882 var2499)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/673174409 var1483 var629)) ; Statement: specialinvoke $r14.<org.apache.ibatis.plugin.PluginException: void <init>(java.lang.String)>($r20) 

(declare-const var1483!1 var1990)
(declare-const var629!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1201_getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1936-to-var1201=([org.apache.ibatis.plugin.Interceptor], java.lang.Object), getAnnotation/-664766848=([java.lang.Class, java.lang.Class], java.lang.annotation.Annotation), cast-from-var2506-to-var1310=([java.lang.annotation.Annotation], org.apache.ibatis.plugin.Intercepts), var1990-init=([], org.apache.ibatis.plugin.PluginException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/673174409=([org.apache.ibatis.plugin.PluginException, java.lang.String], void)}
; {var1936=org.apache.ibatis.plugin.Interceptor, var1312=r0, var1201=java.lang.Object, var804=$r1, var2506=java.lang.annotation.Annotation, var1310=org.apache.ibatis.plugin.Intercepts, var2717=$r2, var1335=r3, var1990=org.apache.ibatis.plugin.PluginException, var1483=$r14, var2248=$r15, var1643=$r18, var2086=$r16, var260=$r17, var2499=$r19, var629=$r20}
; {org.apache.ibatis.plugin.Interceptor=var1936, r0=var1312, java.lang.Object=var1201, $r1=var804, java.lang.annotation.Annotation=var2506, org.apache.ibatis.plugin.Intercepts=var1310, $r2=var2717, r3=var1335, org.apache.ibatis.plugin.PluginException=var1990, $r14=var1483, $r15=var2248, $r18=var1643, $r16=var2086, $r17=var260, $r19=var2499, $r20=var629}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.plugin.Interceptor;	$r1 = interfaceinvoke r0.<org.apache.ibatis.plugin.Interceptor: java.lang.Class getClass()>();	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/apache/ibatis/plugin/Intercepts;");	r3 = (org.apache.ibatis.plugin.Intercepts) $r2;	if r3 != null goto r4 = interfaceinvoke r3.<org.apache.ibatis.plugin.Intercepts: org.apache.ibatis.plugin.Signature[] value()>();	$r14 = new org.apache.ibatis.plugin.PluginException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No @Intercepts annotation was found in interceptor ");	$r16 = interfaceinvoke r0.<org.apache.ibatis.plugin.Interceptor: java.lang.Class getClass()>();	$r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.apache.ibatis.plugin.PluginException: void <init>(java.lang.String)>($r20);	throw $r14
;block_num 2
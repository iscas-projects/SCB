(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3966 0)
(declare-sort var3575 0)
(declare-sort var1018 0)
(declare-sort var952 0)
(declare-sort var1815 0)
(declare-sort var2016 0)
(declare-sort var892 0)
(declare-sort var2950 0)
(declare-sort var3002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun strict/780758580 (var3966) Bool)
(declare-fun var1018-init () var1018)
(declare-fun var1815-init () var1815)
(declare-fun arr-var2016-init () (Array Int var2016))
(declare-fun getOrigin/-1251783327 (var2950) var892)
(declare-fun cast-from-var3966-to-var2950 (var3966) var2950)
(declare-fun getName/-611695624 (var892) String)
(declare-fun cast-from-String-to-var2016 (String) var2016)
(declare-fun String_format/1339386452 (String (Array Int var2016)) String)
(declare-fun <init>/1227528494 (var1815 String var3002 var892) void)
(declare-fun cast-from-var952-to-var3002 (var952) var3002)
(declare-fun cast-from-var1815-to-var3002 (var1815) var3002)
(declare-const null-var3966 var3966)
(declare-const null-var3575 var3575)
(declare-const null-var952 var952)
(declare-const null-__Array__Int__var2016__ (Array Int var2016))
(declare-const var2787 var3966) ; Statement: r0 := @this: org.hibernate.boot.jaxb.internal.CacheableFileXmlSource 
(assert (not (= var2787 null-var3966)))
(declare-const var3006 var3575) ; Statement: r3 := @parameter0: org.hibernate.boot.jaxb.spi.Binder 
(assert (not (= var3006 null-var3575)))
(define-const var1491 Bool (strict/780758580 var2787)) ; Statement: $z0 = r0.<org.hibernate.boot.jaxb.internal.CacheableFileXmlSource: boolean strict> 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r0.<org.hibernate.boot.jaxb.internal.CacheableFileXmlSource: boolean isSerfileObsolete()>() 
(assert (not (= (ite var1491 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3735 var1018 var1018-init) ; Statement: $r26 = new org.hibernate.boot.jaxb.spi.Binding 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var744 var952) ; Statement: $r13 := @caughtexception 
(assert (not (= var744 null-var952)))
(define-const var1359 var1815 var1815-init) ; Statement: $r27 = new org.hibernate.boot.MappingException 
(define-const var1004 (Array Int var2016) arr-var2016-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var1211 var892 (getOrigin/-1251783327 (cast-from-var3966-to-var2950 var2787))) ; Statement: $r16 = virtualinvoke r0.<org.hibernate.boot.jaxb.internal.CacheableFileXmlSource: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
(define-const var548 String (getName/-611695624 var1211)) ; Statement: $r17 = virtualinvoke $r16.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>() 
(declare-const var1004!1 (Array Int var2016))
(assert (not (= var1004!1 null-__Array__Int__var2016__)))
(assert (= (select var1004!1 0) (cast-from-String-to-var2016 var548))) ; Statement: $r15[0] = $r17 
(define-const var3841 String (String_format/1339386452 "Unable to locate cached file [%s]" var1004!1)) ; Statement: $r19 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate cached file [%s]", $r15) 
(assert true)
(define-const var552 var892 (getOrigin/-1251783327 (cast-from-var3966-to-var2950 var2787))) ; Statement: $r18 = virtualinvoke r0.<org.hibernate.boot.jaxb.internal.CacheableFileXmlSource: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/1227528494 var1359 var3841 (cast-from-var952-to-var3002 var744) var552)) ; Statement: specialinvoke $r27.<org.hibernate.boot.MappingException: void <init>(java.lang.String,java.lang.Throwable,org.hibernate.boot.jaxb.Origin)>($r19, $r13, $r18) 

(declare-const var1359!1 var1815)
(declare-const var3841!1 String)
(declare-const var744!1 var952)
(declare-const var552!1 var892)
(define-const var1104 var3002 (cast-from-var1815-to-var3002 var1359!1)) ; Statement: $r28 = (java.lang.Throwable) $r27 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {strict/780758580=([org.hibernate.boot.jaxb.internal.CacheableFileXmlSource], boolean), var1018-init=([], org.hibernate.boot.jaxb.spi.Binding), var1815-init=([], org.hibernate.boot.MappingException), arr-var2016-init=([], java.lang.Object[]), getOrigin/-1251783327=([org.hibernate.boot.jaxb.spi.XmlSource], org.hibernate.boot.jaxb.Origin), cast-from-var3966-to-var2950=([org.hibernate.boot.jaxb.internal.CacheableFileXmlSource], org.hibernate.boot.jaxb.spi.XmlSource), getName/-611695624=([org.hibernate.boot.jaxb.Origin], java.lang.String), cast-from-String-to-var2016=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1227528494=([org.hibernate.boot.MappingException, java.lang.String, java.lang.Throwable, org.hibernate.boot.jaxb.Origin], void), cast-from-var952-to-var3002=([java.io.FileNotFoundException], java.lang.Throwable), cast-from-var1815-to-var3002=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var3966=org.hibernate.boot.jaxb.internal.CacheableFileXmlSource, var2787=r0, var3575=org.hibernate.boot.jaxb.spi.Binder, var3006=r3, var1491=$z0, var1018=org.hibernate.boot.jaxb.spi.Binding, var3735=$r26, var952=java.io.FileNotFoundException, var744=$r13, var1815=org.hibernate.boot.MappingException, var1359=$r27, var2016=java.lang.Object, var1004=$r15, var892=org.hibernate.boot.jaxb.Origin, var2950=org.hibernate.boot.jaxb.spi.XmlSource, var1211=$r16, var548=$r17, var3841=$r19, var552=$r18, var3002=java.lang.Throwable, var1104=$r28}
; {org.hibernate.boot.jaxb.internal.CacheableFileXmlSource=var3966, r0=var2787, org.hibernate.boot.jaxb.spi.Binder=var3575, r3=var3006, $z0=var1491, org.hibernate.boot.jaxb.spi.Binding=var1018, $r26=var3735, java.io.FileNotFoundException=var952, $r13=var744, org.hibernate.boot.MappingException=var1815, $r27=var1359, java.lang.Object=var2016, $r15=var1004, org.hibernate.boot.jaxb.Origin=var892, org.hibernate.boot.jaxb.spi.XmlSource=var2950, $r16=var1211, $r17=var548, $r19=var3841, $r18=var552, java.lang.Throwable=var3002, $r28=var1104}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.jaxb.internal.CacheableFileXmlSource;	r3 := @parameter0: org.hibernate.boot.jaxb.spi.Binder;	$z0 = r0.<org.hibernate.boot.jaxb.internal.CacheableFileXmlSource: boolean strict>;	if $z0 == 0 goto $z1 = specialinvoke r0.<org.hibernate.boot.jaxb.internal.CacheableFileXmlSource: boolean isSerfileObsolete()>();	$r26 = new org.hibernate.boot.jaxb.spi.Binding;	$r13 := @caughtexception;	$r27 = new org.hibernate.boot.MappingException;	$r15 = newarray (java.lang.Object)[1];	$r16 = virtualinvoke r0.<org.hibernate.boot.jaxb.internal.CacheableFileXmlSource: org.hibernate.boot.jaxb.Origin getOrigin()>();	$r17 = virtualinvoke $r16.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>();	$r15[0] = $r17;	$r19 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate cached file [%s]", $r15);	$r18 = virtualinvoke r0.<org.hibernate.boot.jaxb.internal.CacheableFileXmlSource: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r27.<org.hibernate.boot.MappingException: void <init>(java.lang.String,java.lang.Throwable,org.hibernate.boot.jaxb.Origin)>($r19, $r13, $r18);	$r28 = (java.lang.Throwable) $r27;	throw $r28
;block_num 3
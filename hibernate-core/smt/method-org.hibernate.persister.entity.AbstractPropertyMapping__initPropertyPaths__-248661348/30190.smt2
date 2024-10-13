(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3632 0)
(declare-sort var1295 0)
(declare-sort var176 0)
(declare-sort var469 0)
(declare-sort var2796 0)
(declare-sort var2533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2796-init () var2796)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2796 var2533) void)
(declare-fun cast-from-String-to-var2533 (String) var2533)
(declare-const null-var3632 var3632)
(declare-const null-String String)
(declare-const null-var176 var176)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var469 var469)
(declare-const var3632-$assertionsDisabled Bool)
(declare-const var2354 var3632) ; Statement: r3 := @this: org.hibernate.persister.entity.AbstractPropertyMapping 
(assert (not (= var2354 null-var3632)))
(declare-const var3510 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3510 null-String)))
(declare-const var2534 var176) ; Statement: r0 := @parameter1: org.hibernate.type.Type 
(assert (not (= var2534 null-var176)))
(declare-const var3606 (Array Int String)) ; Statement: r30 := @parameter2: java.lang.String[] 
(assert (not (= var3606 null-__Array__Int__String__)))
(declare-const var770 (Array Int String)) ; Statement: r31 := @parameter3: java.lang.String[] 
(assert (not (= var770 null-__Array__Int__String__)))
(declare-const var1796 (Array Int String)) ; Statement: r32 := @parameter4: java.lang.String[] 
(assert (not (= var1796 null-__Array__Int__String__)))
(declare-const var3423 (Array Int String)) ; Statement: r4 := @parameter5: java.lang.String[] 
(assert (not (= var3423 null-__Array__Int__String__)))
(declare-const var1159 var469) ; Statement: r1 := @parameter6: org.hibernate.engine.spi.Mapping 
(assert (not (= var1159 null-var469)))
(define-const var210 Bool var3632-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.persister.entity.AbstractPropertyMapping: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <org.hibernate.persister.entity.AbstractPropertyMapping: boolean $assertionsDisabled> 
(assert (not (not (= (ite var210 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if r30 != null goto $z1 = <org.hibernate.persister.entity.AbstractPropertyMapping: boolean $assertionsDisabled> 
(assert (not (not (= var3606 null-__Array__Int__String__)))) ; Negate: Cond: r30 != null  
(define-const var2906 var2796 var2796-init) ; Statement: $r42 = new java.lang.AssertionError 
(define-const var2895 String String-init) ; Statement: $r41 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2895)) ; Statement: specialinvoke $r41.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2895!1 String)
(assert (= var2895!1 ""))
(assert true)
(define-const var3691 String (append/672562846 var2895!1 "Incoming columns should not be null : ")) ; Statement: $r27 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Incoming columns should not be null : ") 
(declare-const var2895!2 String)
(assert (= var2895!2 (str.++ var2895!1 "Incoming columns should not be null : ")))
(assert true)
(define-const var3526 String (append/672562846 var3691 var3510)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3691!1 String)
(assert (= var3691!1 (str.++ var3691 var3510)))
(assert true)
(define-const var3109 String (toString/-2075883882 var3526)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2906 (cast-from-String-to-var2533 var3109))) ; Statement: specialinvoke $r42.<java.lang.AssertionError: void <init>(java.lang.Object)>($r29) 

(declare-const var2906!1 var2796)
(declare-const var3109!1 String)
 ; Statement: throw $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {var2796-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2533=([java.lang.String], java.lang.Object)}
; {var3632=org.hibernate.persister.entity.AbstractPropertyMapping, var2354=r3, var3510=r2, var1295=null_type, var176=org.hibernate.type.Type, var2534=r0, var3606=r30, var770=r31, var1796=r32, var3423=r4, var469=org.hibernate.engine.spi.Mapping, var1159=r1, var210=$z0, var2796=java.lang.AssertionError, var2906=$r42, var2895=$r41, var3691=$r27, var3526=$r28, var3109=$r29, var2533=java.lang.Object}
; {org.hibernate.persister.entity.AbstractPropertyMapping=var3632, r3=var2354, r2=var3510, null_type=var1295, org.hibernate.type.Type=var176, r0=var2534, r30=var3606, r31=var770, r32=var1796, r4=var3423, org.hibernate.engine.spi.Mapping=var469, r1=var1159, $z0=var210, java.lang.AssertionError=var2796, $r42=var2906, $r41=var2895, $r27=var3691, $r28=var3526, $r29=var3109, java.lang.Object=var2533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.persister.entity.AbstractPropertyMapping;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.type.Type;	r30 := @parameter2: java.lang.String[];	r31 := @parameter3: java.lang.String[];	r32 := @parameter4: java.lang.String[];	r4 := @parameter5: java.lang.String[];	r1 := @parameter6: org.hibernate.engine.spi.Mapping;	$z0 = <org.hibernate.persister.entity.AbstractPropertyMapping: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <org.hibernate.persister.entity.AbstractPropertyMapping: boolean $assertionsDisabled>;	if r30 != null goto $z1 = <org.hibernate.persister.entity.AbstractPropertyMapping: boolean $assertionsDisabled>;	$r42 = new java.lang.AssertionError;	$r41 = new java.lang.StringBuilder;	specialinvoke $r41.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Incoming columns should not be null : ");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r42.<java.lang.AssertionError: void <init>(java.lang.Object)>($r29);	throw $r42
;block_num 3
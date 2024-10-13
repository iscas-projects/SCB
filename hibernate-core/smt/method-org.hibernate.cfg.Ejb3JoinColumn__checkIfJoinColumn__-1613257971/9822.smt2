(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1990 0)
(declare-sort var575 0)
(declare-sort var941 0)
(declare-sort var2499 0)
(declare-sort var3352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2499-init () var2499)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var575_getEntityName/406565313 (var575) String)
(declare-fun var941_getPropertyName/-814157935 (var941) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var2499 String) void)
(declare-fun cast-from-var2499-to-var3352 (var2499) var3352)
(declare-const null-var1990 var1990)
(declare-const null-var575 var575)
(declare-const null-var941 var941)
(declare-const var1047 var1990) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1047 null-var1990)))
(declare-const var3761 var575) ; Statement: r3 := @parameter1: org.hibernate.cfg.PropertyHolder 
(assert (not (= var3761 null-var575)))
(declare-const var2400 var941) ; Statement: r7 := @parameter2: org.hibernate.cfg.PropertyData 
(assert (not (= var2400 null-var941)))
(define-const var1984 Bool false) ; Statement: $z0 = r0 instanceof org.hibernate.cfg.Ejb3JoinColumn[] 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var1984 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var737 var2499 var2499-init) ; Statement: $r13 = new org.hibernate.AnnotationException 
(define-const var463 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var463)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var463!1 String)
(assert (= var463!1 ""))
(assert true)
(define-const var1046 String (append/672562846 var463!1 "@Column cannot be used on an association property: ")) ; Statement: $r5 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@Column cannot be used on an association property: ") 
(declare-const var463!2 String)
(assert (= var463!2 (str.++ var463!1 "@Column cannot be used on an association property: ")))
(define-const var190 String (var575_getEntityName/406565313 var3761)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.cfg.PropertyHolder: java.lang.String getEntityName()>() 
(assert true)
(define-const var464 String (append/672562846 var1046 var190)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1046!1 String)
(assert (= var1046!1 (str.++ var1046 var190)))
(assert true)
(define-const var2450 String (append/672562846 var464 ".")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var464!1 String)
(assert (= var464!1 (str.++ var464 ".")))
(define-const var3588 String (var941_getPropertyName/-814157935 var2400)) ; Statement: $r8 = interfaceinvoke r7.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(assert true)
(define-const var779 String (append/672562846 var2450 var3588)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2450!1 String)
(assert (= var2450!1 (str.++ var2450 var3588)))
(assert true)
(define-const var2995 String (toString/-2075883882 var779)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var737 var2995)) ; Statement: specialinvoke $r13.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r11) 

(declare-const var737!1 var2499)
(declare-const var2995!1 String)
(define-const var3856 var3352 (cast-from-var2499-to-var3352 var737!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2499-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var575_getEntityName/406565313=([org.hibernate.cfg.PropertyHolder], java.lang.String), var941_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var2499-to-var3352=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var1990=java.lang.Object, var1047=r0, var575=org.hibernate.cfg.PropertyHolder, var3761=r3, var941=org.hibernate.cfg.PropertyData, var2400=r7, var1984=$z0, var2499=org.hibernate.AnnotationException, var737=$r13, var463=$r12, var1046=$r5, var190=$r4, var464=$r6, var2450=$r9, var3588=$r8, var779=$r10, var2995=$r11, var3352=java.lang.Throwable, var3856=$r14}
; {java.lang.Object=var1990, r0=var1047, org.hibernate.cfg.PropertyHolder=var575, r3=var3761, org.hibernate.cfg.PropertyData=var941, r7=var2400, $z0=var1984, org.hibernate.AnnotationException=var2499, $r13=var737, $r12=var463, $r5=var1046, $r4=var190, $r6=var464, $r9=var2450, $r8=var3588, $r10=var779, $r11=var2995, java.lang.Throwable=var3352, $r14=var3856}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r3 := @parameter1: org.hibernate.cfg.PropertyHolder;	r7 := @parameter2: org.hibernate.cfg.PropertyData;	$z0 = r0 instanceof org.hibernate.cfg.Ejb3JoinColumn[];	if $z0 != 0 goto return;	$r13 = new org.hibernate.AnnotationException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@Column cannot be used on an association property: ");	$r4 = interfaceinvoke r3.<org.hibernate.cfg.PropertyHolder: java.lang.String getEntityName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = interfaceinvoke r7.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2
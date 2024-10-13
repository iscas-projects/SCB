(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var762 0)
(declare-sort var943 0)
(declare-sort var1303 0)
(declare-sort var1190 0)
(declare-sort var2648 0)
(declare-sort var355 0)
(declare-sort var1326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1190-init () var1190)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-506615655 (var762) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2648_getOrDefault/-573460120 (var2648 var1303 var1303) var1303)
(declare-fun cast-from-ClassObject-to-var1303 (ClassObject) var1303)
(declare-fun cast-from-String-to-var1303 (String) var1303)
(declare-fun cast-from-var1303-to-String (var1303) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1303) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var1190 String) void)
(declare-fun cast-from-var1190-to-var1326 (var1190) var1326)
(declare-const null-var762 var762)
(declare-const null-String String)
(declare-const null-var1303 var1303)
(declare-const null-Bool Bool)
(declare-const var355-annotationToXml var2648)
(declare-const var2299 var762) ; Statement: r3 := @parameter0: org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor 
(assert (not (= var2299 null-var762)))
(declare-const var3105 String) ; Statement: r17 := @parameter1: java.lang.String 
(assert (not (= var3105 null-String)))
(declare-const var911 var1303) ; Statement: r11 := @parameter2: java.lang.Object 
(assert (not (= var911 null-var1303)))
(declare-const var933 var1303) ; Statement: r0 := @parameter3: java.lang.Object 
(assert (not (= var933 null-var1303)))
(declare-const var616 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var616 null-Bool)))
 ; Statement: if r0 == null goto (branch) 
(assert (= var933 null-var1303)) ; Cond: r0 == null 
 ; Statement: if z0 == 0 goto return 
(assert (not (= (ite var616 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1898 var1190 var1190-init) ; Statement: $r19 = new org.hibernate.AnnotationException 
(define-const var1036 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1036)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1036!1 String)
(assert (= var1036!1 ""))
(define-const var168 var2648 var355-annotationToXml) ; Statement: $r4 = <org.hibernate.cfg.annotations.reflection.internal.JPAXMLOverriddenAnnotationReader: java.util.Map annotationToXml> 
(assert true)
(define-const var123 ClassObject (type/-506615655 var2299)) ; Statement: $r7 = virtualinvoke r3.<org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor: java.lang.Class type()>() 
(assert true)
(define-const var717 ClassObject (type/-506615655 var2299)) ; Statement: $r5 = virtualinvoke r3.<org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor: java.lang.Class type()>() 
(assert true)
(define-const var3962 String (getName/-1958580599 var717)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(define-const var3634 var1303 (var2648_getOrDefault/-573460120 var168 (cast-from-ClassObject-to-var1303 var123) (cast-from-String-to-var1303 var3962))) ; Statement: $r8 = interfaceinvoke $r4.<java.util.Map: java.lang.Object getOrDefault(java.lang.Object,java.lang.Object)>($r7, $r6) 
(define-const var2401 String (cast-from-var1303-to-String var3634)) ; Statement: $r9 = (java.lang.String) $r8 
(assert true)
(define-const var3938 String (append/672562846 var1036!1 var2401)) ; Statement: $r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1036!2 String)
(assert (= var1036!2 (str.++ var1036!1 var2401)))
(assert true)
(define-const var8 String (append/672562846 var3938 ".")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3938!1 String)
(assert (= var3938!1 (str.++ var3938 ".")))
(assert true)
(define-const var323 String (append/-1031950772 var8 var911)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r11) 
(declare-const var8!1 String)
(assert (str.prefixof var8 var8!1))
(assert true)
(define-const var2641 String (append/672562846 var323 " is mandatory in XML overriding. ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is mandatory in XML overriding. ") 
(declare-const var323!1 String)
(assert (= var323!1 (str.++ var323 " is mandatory in XML overriding. ")))
(assert true)
(define-const var1937 String (append/672562846 var2641 "Activate schema validation for more information")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Activate schema validation for more information") 
(declare-const var2641!1 String)
(assert (= var2641!1 (str.++ var2641 "Activate schema validation for more information")))
(assert true)
(define-const var1927 String (toString/-2075883882 var1937)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var1898 var1927)) ; Statement: specialinvoke $r19.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r16) 

(declare-const var1898!1 var1190)
(declare-const var1927!1 String)
(define-const var3478 var1326 (cast-from-var1190-to-var1326 var1898!1)) ; Statement: $r20 = (java.lang.Throwable) $r19 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var1190-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-506615655=([org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var2648_getOrDefault/-573460120=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var1303=([java.lang.Class], java.lang.Object), cast-from-String-to-var1303=([java.lang.String], java.lang.Object), cast-from-var1303-to-String=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var1190-to-var1326=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var762=org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor, var2299=r3, var3105=r17, var943=null_type, var1303=java.lang.Object, var911=r11, var933=r0, var616=z0, var1190=org.hibernate.AnnotationException, var1898=$r19, var1036=$r18, var2648=java.util.Map, var355=org.hibernate.cfg.annotations.reflection.internal.JPAXMLOverriddenAnnotationReader, var168=$r4, var123=$r7, var717=$r5, var3962=$r6, var3634=$r8, var2401=$r9, var3938=$r10, var8=$r12, var323=$r13, var2641=$r14, var1937=$r15, var1927=$r16, var1326=java.lang.Throwable, var3478=$r20}
; {org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor=var762, r3=var2299, r17=var3105, null_type=var943, java.lang.Object=var1303, r11=var911, r0=var933, z0=var616, org.hibernate.AnnotationException=var1190, $r19=var1898, $r18=var1036, java.util.Map=var2648, org.hibernate.cfg.annotations.reflection.internal.JPAXMLOverriddenAnnotationReader=var355, $r4=var168, $r7=var123, $r5=var717, $r6=var3962, $r8=var3634, $r9=var2401, $r10=var3938, $r12=var8, $r13=var323, $r14=var2641, $r15=var1937, $r16=var1927, java.lang.Throwable=var1326, $r20=var3478}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor;	r17 := @parameter1: java.lang.String;	r11 := @parameter2: java.lang.Object;	r0 := @parameter3: java.lang.Object;	z0 := @parameter4: boolean;	if r0 == null goto (branch);	if z0 == 0 goto return;	$r19 = new org.hibernate.AnnotationException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r4 = <org.hibernate.cfg.annotations.reflection.internal.JPAXMLOverriddenAnnotationReader: java.util.Map annotationToXml>;	$r7 = virtualinvoke r3.<org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor: java.lang.Class type()>();	$r5 = virtualinvoke r3.<org.hibernate.annotations.common.annotationfactory.AnnotationDescriptor: java.lang.Class type()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = interfaceinvoke $r4.<java.util.Map: java.lang.Object getOrDefault(java.lang.Object,java.lang.Object)>($r7, $r6);	$r9 = (java.lang.String) $r8;	$r10 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is mandatory in XML overriding. ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Activate schema validation for more information");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r16);	$r20 = (java.lang.Throwable) $r19;	throw $r20
;block_num 3
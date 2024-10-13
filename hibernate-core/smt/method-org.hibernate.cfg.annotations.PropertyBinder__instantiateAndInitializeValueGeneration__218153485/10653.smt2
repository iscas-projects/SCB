(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3954 0)
(declare-sort var1231 0)
(declare-sort var3184 0)
(declare-sort var1344 0)
(declare-sort var1497 0)
(declare-sort var1019 0)
(declare-sort var3193 0)
(declare-sort var3023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1497-init () var1497)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun holder/-794492743 (var3954) var1019)
(declare-fun var1019_getPath/2047744202 (var1019) String)
(declare-fun name/-794492743 (var3954) String)
(declare-fun var3193_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1911126280 (var1497 String var3023) void)
(declare-fun cast-from-var1344-to-var3023 (var1344) var3023)
(declare-fun cast-from-var1497-to-var3023 (var1497) var3023)
(declare-const null-var3954 var3954)
(declare-const null-var1231 var1231)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3184 var3184)
(declare-const null-var1344 var1344)
(declare-const var3359 var3954) ; Statement: r3 := @this: org.hibernate.cfg.annotations.PropertyBinder 
(assert (not (= var3359 null-var3954)))
(declare-const var1390 var1231) ; Statement: r2 := @parameter0: java.lang.annotation.Annotation 
(assert (not (= var1390 null-var1231)))
(declare-const var937 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var937 null-ClassObject)))
(declare-const var583 var3184) ; Statement: r6 := @parameter2: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var583 null-var3184)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1148 var1344) ; Statement: $r10 := @caughtexception 
(assert (not (= var1148 null-var1344)))
(define-const var2376 var1497 var1497-init) ; Statement: $r22 = new org.hibernate.AnnotationException 
(define-const var2475 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2475)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2475!1 String)
(assert (= var2475!1 ""))
(assert true)
(define-const var1054 String (append/672562846 var2475!1 "Exception occurred during processing of generator annotation:")) ; Statement: $r17 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occurred during processing of generator annotation:") 
(declare-const var2475!2 String)
(assert (= var2475!2 (str.++ var2475!1 "Exception occurred during processing of generator annotation:")))
(define-const var3041 var1019 (holder/-794492743 var3359)) ; Statement: $r13 = r3.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.cfg.PropertyHolder holder> 
(define-const var3934 String (var1019_getPath/2047744202 var3041)) ; Statement: $r15 = interfaceinvoke $r13.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>() 
(define-const var3248 String (name/-794492743 var3359)) ; Statement: $r14 = r3.<org.hibernate.cfg.annotations.PropertyBinder: java.lang.String name> 
(define-const var1820 String (var3193_qualify/-1563731603 var3934 var3248)) ; Statement: $r16 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r15, $r14) 
(assert true)
(define-const var3665 String (append/672562846 var1054 var1820)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1054!1 String)
(assert (= var1054!1 (str.++ var1054 var1820)))
(assert true)
(define-const var1461 String (toString/-2075883882 var3665)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1911126280 var2376 var1461 (cast-from-var1344-to-var3023 var1148))) ; Statement: specialinvoke $r22.<org.hibernate.AnnotationException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r10) 

(declare-const var2376!1 var1497)
(declare-const var1461!1 String)
(declare-const var1148!1 var1344)
(define-const var955 var3023 (cast-from-var1497-to-var3023 var2376!1)) ; Statement: $r23 = (java.lang.Throwable) $r22 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var1497-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), holder/-794492743=([org.hibernate.cfg.annotations.PropertyBinder], org.hibernate.cfg.PropertyHolder), var1019_getPath/2047744202=([org.hibernate.cfg.PropertyHolder], java.lang.String), name/-794492743=([org.hibernate.cfg.annotations.PropertyBinder], java.lang.String), var3193_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1911126280=([org.hibernate.AnnotationException, java.lang.String, java.lang.Throwable], void), cast-from-var1344-to-var3023=([java.lang.Exception], java.lang.Throwable), cast-from-var1497-to-var3023=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var3954=org.hibernate.cfg.annotations.PropertyBinder, var3359=r3, var1231=java.lang.annotation.Annotation, var1390=r2, var937=r0, var3184=org.hibernate.annotations.common.reflection.XProperty, var583=r6, var1344=java.lang.Exception, var1148=$r10, var1497=org.hibernate.AnnotationException, var2376=$r22, var2475=$r21, var1054=$r17, var1019=org.hibernate.cfg.PropertyHolder, var3041=$r13, var3934=$r15, var3248=$r14, var3193=org.hibernate.internal.util.StringHelper, var1820=$r16, var3665=$r18, var1461=$r19, var3023=java.lang.Throwable, var955=$r23}
; {org.hibernate.cfg.annotations.PropertyBinder=var3954, r3=var3359, java.lang.annotation.Annotation=var1231, r2=var1390, r0=var937, org.hibernate.annotations.common.reflection.XProperty=var3184, r6=var583, java.lang.Exception=var1344, $r10=var1148, org.hibernate.AnnotationException=var1497, $r22=var2376, $r21=var2475, $r17=var1054, org.hibernate.cfg.PropertyHolder=var1019, $r13=var3041, $r15=var3934, $r14=var3248, org.hibernate.internal.util.StringHelper=var3193, $r16=var1820, $r18=var3665, $r19=var1461, java.lang.Throwable=var3023, $r23=var955}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.cfg.annotations.PropertyBinder;	r2 := @parameter0: java.lang.annotation.Annotation;	r0 := @parameter1: java.lang.Class;	r6 := @parameter2: org.hibernate.annotations.common.reflection.XProperty;	$r10 := @caughtexception;	$r22 = new org.hibernate.AnnotationException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occurred during processing of generator annotation:");	$r13 = r3.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.cfg.PropertyHolder holder>;	$r15 = interfaceinvoke $r13.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>();	$r14 = r3.<org.hibernate.cfg.annotations.PropertyBinder: java.lang.String name>;	$r16 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r15, $r14);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.AnnotationException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r10);	$r23 = (java.lang.Throwable) $r22;	throw $r23
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1493 0)
(declare-sort var3838 0)
(declare-sort var1198 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3838-init () var3838)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1911126280 (var3838 String var1198) void)
(declare-fun cast-from-var1493-to-var1198 (var1493) var1198)
(declare-fun cast-from-var3838-to-var1198 (var3838) var1198)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1493 var1493)
(declare-const var1775 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1775 null-ClassObject)))
(define-const var2667 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1693 var1493) ; Statement: $r5 := @caughtexception 
(assert (not (= var1693 null-var1493)))
(define-const var1473 var3838 var3838-init) ; Statement: $r15 = new org.hibernate.AnnotationException 
(define-const var3067 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3067)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3067!1 String)
(assert (= var3067!1 ""))
(assert true)
(define-const var2680 String (append/672562846 var3067!1 "Unable to instantiate AttributeConverter [")) ; Statement: $r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate AttributeConverter [") 
(declare-const var3067!2 String)
(assert (= var3067!2 (str.++ var3067!1 "Unable to instantiate AttributeConverter [")))
(assert true)
(define-const var2606 String (getName/-1958580599 var1775)) ; Statement: $r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3314 String (append/672562846 var2680 var2606)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2680!1 String)
(assert (= var2680!1 (str.++ var2680 var2606)))
(assert true)
(define-const var2359 String (append/672562846 var3314 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3314!1 String)
(assert (= var3314!1 (str.++ var3314 "]")))
(assert true)
(define-const var1792 String (toString/-2075883882 var2359)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1911126280 var1473 var1792 (cast-from-var1493-to-var1198 var1693))) ; Statement: specialinvoke $r15.<org.hibernate.AnnotationException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5) 

(declare-const var1473!1 var3838)
(declare-const var1792!1 String)
(declare-const var1693!1 var1493)
(define-const var1428 var1198 (cast-from-var3838-to-var1198 var1473!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var3838-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1911126280=([org.hibernate.AnnotationException, java.lang.String, java.lang.Throwable], void), cast-from-var1493-to-var1198=([java.lang.Exception], java.lang.Throwable), cast-from-var3838-to-var1198=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var1775=r0, var2667=$r1, var1493=java.lang.Exception, var1693=$r5, var3838=org.hibernate.AnnotationException, var1473=$r15, var3067=$r14, var2680=$r9, var2606=$r8, var3314=$r10, var2359=$r11, var1792=$r12, var1198=java.lang.Throwable, var1428=$r16}
; {r0=var1775, $r1=var2667, java.lang.Exception=var1493, $r5=var1693, org.hibernate.AnnotationException=var3838, $r15=var1473, $r14=var3067, $r9=var2680, $r8=var2606, $r10=var3314, $r11=var2359, $r12=var1792, java.lang.Throwable=var1198, $r16=var1428}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = newarray (java.lang.Class)[0];	$r5 := @caughtexception;	$r15 = new org.hibernate.AnnotationException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate AttributeConverter [");	$r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.AnnotationException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2
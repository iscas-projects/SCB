(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var742 0)
(declare-sort var3515 0)
(declare-sort var716 0)
(declare-sort var3516 0)
(declare-sort var2636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/1791718287 (var742) var716)
(declare-fun var3516-init () var3516)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1791718287 (var742) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/920375003 (var3516 String) void)
(declare-fun cast-from-var3516-to-var2636 (var3516) var2636)
(declare-const null-var742 var742)
(declare-const null-var3515 var3515)
(declare-const null-var716 var716)
(declare-const var3488 var742) ; Statement: r0 := @this: org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess 
(assert (not (= var3488 null-var742)))
(declare-const var1265 var3515) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1265 null-var3515)))
(define-const var2873 var716 (field/1791718287 var3488)) ; Statement: $r1 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess: java.lang.reflect.Field field> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess: java.lang.reflect.Field field> 
(assert (not (not (= var2873 null-var716)))) ; Negate: Cond: $r1 != null  
(define-const var3130 var3516 var3516-init) ; Statement: $r25 = new org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException 
(define-const var3858 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3858)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3858!1 String)
(assert (= var3858!1 ""))
(assert true)
(define-const var3663 String (append/672562846 var3858!1 "Attribute (field) ")) ; Statement: $r8 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attribute (field) ") 
(declare-const var3858!2 String)
(assert (= var3858!2 (str.++ var3858!1 "Attribute (field) ")))
(define-const var3884 String (name/1791718287 var3488)) ; Statement: $r7 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess: java.lang.String name> 
(assert true)
(define-const var353 String (append/672562846 var3663 var3884)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3663!1 String)
(assert (= var3663!1 (str.++ var3663 var3884)))
(assert true)
(define-const var2461 String (append/672562846 var353 " is not accessible")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not accessible") 
(declare-const var353!1 String)
(assert (= var353!1 (str.++ var353 " is not accessible")))
(assert true)
(define-const var3252 String (toString/-2075883882 var2461)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/920375003 var3130 var3252)) ; Statement: specialinvoke $r25.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException: void <init>(java.lang.String)>($r11) 

(declare-const var3130!1 var3516)
(declare-const var3252!1 String)
(define-const var3642 var2636 (cast-from-var3516-to-var2636 var3130!1)) ; Statement: $r28 = (java.lang.Throwable) $r25 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {field/1791718287=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess], java.lang.reflect.Field), var3516-init=([], org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1791718287=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/920375003=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException, java.lang.String], void), cast-from-var3516-to-var2636=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException], java.lang.Throwable)}
; {var742=org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess, var3488=r0, var3515=java.lang.Object, var1265=r2, var716=java.lang.reflect.Field, var2873=$r1, var3516=org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException, var3130=$r25, var3858=$r24, var3663=$r8, var3884=$r7, var353=$r9, var2461=$r10, var3252=$r11, var2636=java.lang.Throwable, var3642=$r28}
; {org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess=var742, r0=var3488, java.lang.Object=var3515, r2=var1265, java.lang.reflect.Field=var716, $r1=var2873, org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException=var3516, $r25=var3130, $r24=var3858, $r8=var3663, $r7=var3884, $r9=var353, $r10=var2461, $r11=var3252, java.lang.Throwable=var2636, $r28=var3642}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess;	r2 := @parameter0: java.lang.Object;	$r1 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess: java.lang.reflect.Field field>;	if $r1 != null goto $r3 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess: java.lang.reflect.Field field>;	$r25 = new org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attribute (field) ");	$r7 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$FieldAttributeAccess: java.lang.String name>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not accessible");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException: void <init>(java.lang.String)>($r11);	$r28 = (java.lang.Throwable) $r25;	throw $r28
;block_num 2
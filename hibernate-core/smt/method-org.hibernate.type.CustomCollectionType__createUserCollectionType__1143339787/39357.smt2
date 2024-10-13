(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1103 0)
(declare-sort var3118 0)
(declare-sort var983 0)
(declare-sort var2159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1103!class ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var983-init () var983)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var983 String) void)
(declare-fun cast-from-var983-to-var2159 (var983) var2159)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3118 var3118)
(declare-const var3698 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3698 null-ClassObject)))
(define-const var531 ClassObject var1103!class) ; Statement: $r1 = class "Lorg/hibernate/usertype/UserCollectionType;" 
(assert true)
(define-const var2195 Bool (isAssignableFrom/-1028998700 var531 var3698)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<java.lang.Class: java.lang.Object newInstance()>() 
(assert (not (not (= (ite var2195 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var3492 var3118) ; Statement: $r17 := @caughtexception 
(assert (not (= var3492 null-var3118)))
(define-const var1703 var983 var983-init) ; Statement: $r27 = new org.hibernate.MappingException 
(define-const var3365 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3365)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3365!1 String)
(assert (= var3365!1 ""))
(assert true)
(define-const var1137 String (append/672562846 var3365!1 "Cannot instantiate custom type: ")) ; Statement: $r21 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot instantiate custom type: ") 
(declare-const var3365!2 String)
(assert (= var3365!2 (str.++ var3365!1 "Cannot instantiate custom type: ")))
(assert true)
(define-const var294 String (getName/-1958580599 var3698)) ; Statement: $r20 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1290 String (append/672562846 var1137 var294)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1137!1 String)
(assert (= var1137!1 (str.++ var1137 var294)))
(assert true)
(define-const var228 String (toString/-2075883882 var1290)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var1703 var228)) ; Statement: specialinvoke $r27.<org.hibernate.MappingException: void <init>(java.lang.String)>($r23) 

(declare-const var1703!1 var983)
(declare-const var228!1 String)
(define-const var3572 var2159 (cast-from-var983-to-var2159 var1703!1)) ; Statement: $r31 = (java.lang.Throwable) $r27 
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var983-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var983-to-var2159=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3698=r0, var1103=org.hibernate.usertype.UserCollectionType, var531=$r1, var2195=$z0, var3118=java.lang.InstantiationException, var3492=$r17, var983=org.hibernate.MappingException, var1703=$r27, var3365=$r26, var1137=$r21, var294=$r20, var1290=$r22, var228=$r23, var2159=java.lang.Throwable, var3572=$r31}
; {r0=var3698, org.hibernate.usertype.UserCollectionType=var1103, $r1=var531, $z0=var2195, java.lang.InstantiationException=var3118, $r17=var3492, org.hibernate.MappingException=var983, $r27=var1703, $r26=var3365, $r21=var1137, $r20=var294, $r22=var1290, $r23=var228, java.lang.Throwable=var2159, $r31=var3572}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = class "Lorg/hibernate/usertype/UserCollectionType;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z0 != 0 goto $r2 = virtualinvoke r0.<java.lang.Class: java.lang.Object newInstance()>();	$r17 := @caughtexception;	$r27 = new org.hibernate.MappingException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot instantiate custom type: ");	$r20 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<org.hibernate.MappingException: void <init>(java.lang.String)>($r23);	$r31 = (java.lang.Throwable) $r27;	throw $r31
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var673 0)
(declare-sort var2571 0)
(declare-sort var1731 0)
(declare-sort var278 0)
(declare-sort var3145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1731-init () var1731)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var278) String)
(declare-fun cast-from-var673-to-var278 (var673) var278)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-180914436 (var1731 String) void)
(declare-fun cast-from-var1731-to-var3145 (var1731) var3145)
(declare-const null-var673 var673)
(declare-const null-String String)
(declare-const var887 var673) ; Statement: r0 := @parameter0: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor 
(assert (not (= var887 null-var673)))
(declare-const var1506 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1506 null-String)))
(define-const var1507 Bool true) ; Statement: $z0 = r0 instanceof org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor 
 ; Statement: if $z0 != 0 goto r8 = (org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor) r0 
(assert (not (not (= (ite var1507 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3247 var1731 var1731-init) ; Statement: $r10 = new org.hibernate.graph.CannotContainSubGraphException 
(define-const var292 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var292)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var292!1 String)
(assert (= var292!1 ""))
(assert true)
(define-const var1203 String (append/672562846 var292!1 "The given type [")) ; Statement: $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The given type [") 
(declare-const var292!2 String)
(assert (= var292!2 (str.++ var292!1 "The given type [")))
(assert true)
(define-const var630 String (append/-1031950772 var1203 (cast-from-var673-to-var278 var887))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1203!1 String)
(assert (str.prefixof var1203 var1203!1))
(assert true)
(define-const var1607 String (append/672562846 var630 "] is not a ManagedType")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not a ManagedType") 
(declare-const var630!1 String)
(assert (= var630!1 (str.++ var630 "] is not a ManagedType")))
(assert true)
(define-const var3958 String (toString/-2075883882 var1607)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-180914436 var3247 var3958)) ; Statement: specialinvoke $r10.<org.hibernate.graph.CannotContainSubGraphException: void <init>(java.lang.String)>($r7) 

(declare-const var3247!1 var1731)
(declare-const var3958!1 String)
(define-const var509 var3145 (cast-from-var1731-to-var3145 var3247!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1731-init=([], org.hibernate.graph.CannotContainSubGraphException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var673-to-var278=([org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-180914436=([org.hibernate.graph.CannotContainSubGraphException, java.lang.String], void), cast-from-var1731-to-var3145=([org.hibernate.graph.CannotContainSubGraphException], java.lang.Throwable)}
; {var673=org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor, var887=r0, var1506=r1, var2571=null_type, var1507=$z0, var1731=org.hibernate.graph.CannotContainSubGraphException, var3247=$r10, var292=$r9, var1203=$r4, var278=java.lang.Object, var630=$r5, var1607=$r6, var3958=$r7, var3145=java.lang.Throwable, var509=$r11}
; {org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor=var673, r0=var887, r1=var1506, null_type=var2571, $z0=var1507, org.hibernate.graph.CannotContainSubGraphException=var1731, $r10=var3247, $r9=var292, $r4=var1203, java.lang.Object=var278, $r5=var630, $r6=var1607, $r7=var3958, java.lang.Throwable=var3145, $r11=var509}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor;	r1 := @parameter1: java.lang.String;	$z0 = r0 instanceof org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor;	if $z0 != 0 goto r8 = (org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor) r0;	$r10 = new org.hibernate.graph.CannotContainSubGraphException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The given type [");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not a ManagedType");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.hibernate.graph.CannotContainSubGraphException: void <init>(java.lang.String)>($r7);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 2
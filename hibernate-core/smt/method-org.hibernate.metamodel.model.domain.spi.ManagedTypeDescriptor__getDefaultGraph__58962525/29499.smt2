(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var950 0)
(declare-sort var3130 0)
(declare-sort var3478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3130-init () var3130)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3478) ClassObject)
(declare-fun cast-from-var950-to-var3478 (var950) var3478)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var3130 String) void)
(declare-const null-var950 var950)
(declare-const var2780 var950) ; Statement: r2 := @this: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor 
(assert (not (= var2780 null-var950)))
(define-const var2557 var3130 var3130-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var2192 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2192)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2192!1 String)
(assert (= var2192!1 ""))
(assert true)
(define-const var848 String (append/672562846 var2192!1 "Not yet implemented - ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not yet implemented - ") 
(declare-const var2192!2 String)
(assert (= var2192!2 (str.++ var2192!1 "Not yet implemented - ")))
(assert true)
(define-const var1412 ClassObject (getClass/1258963082 (cast-from-var950-to-var3478 var2780))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2346 String (getName/-1958580599 var1412)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1428 String (append/672562846 var848 var2346)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var848!1 String)
(assert (= var848!1 (str.++ var848 var2346)))
(assert true)
(define-const var3300 String (toString/-2075883882 var1428)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2557 var3300)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var2557!1 var3130)
(declare-const var3300!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3130-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var950-to-var3478=([org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var950=org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor, var2780=r2, var3130=java.lang.UnsupportedOperationException, var2557=$r0, var2192=$r1, var848=$r5, var3478=java.lang.Object, var1412=$r3, var2346=$r4, var1428=$r6, var3300=$r7}
; {org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor=var950, r2=var2780, java.lang.UnsupportedOperationException=var3130, $r0=var2557, $r1=var2192, $r5=var848, java.lang.Object=var3478, $r3=var1412, $r4=var2346, $r6=var1428, $r7=var3300}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not yet implemented - ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1
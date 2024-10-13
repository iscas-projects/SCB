(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var100 0)
(declare-sort var1222 0)
(declare-sort var1952 0)
(declare-sort var2723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ensureNoIdClass/-1881447077 (var100) void)
(declare-fun id/962040814 (var100) var1222)
(declare-fun var1952-init () var1952)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTypeName/1732526627 (var2723) String)
(declare-fun cast-from-var100-to-var2723 (var100) var2723)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1952 String) void)
(declare-const null-var100 var100)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1222 var1222)
(declare-const var2229 var100) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType 
(assert (not (= var2229 null-var100)))
(declare-const var2422 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var2422 null-ClassObject)))
(assert true)
;(assert (ensureNoIdClass/-1881447077 var2229)) ; Statement: specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: void ensureNoIdClass()>() 

(declare-const var2229!1 var100)
(define-const var1942 var1222 (id/962040814 var2229!1)) ; Statement: $r1 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id> 
(assert (not (not (= var1942 null-var1222)))) ; Negate: Cond: $r1 != null  
(define-const var1605 var1952 var1952-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var2566 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2566)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2566!1 String)
(assert (= var2566!1 ""))
(assert true)
(define-const var3068 String (append/672562846 var2566!1 "The id attribute is not declared on this type [")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The id attribute is not declared on this type [") 
(declare-const var2566!2 String)
(assert (= var2566!2 (str.++ var2566!1 "The id attribute is not declared on this type [")))
(assert true)
(define-const var3122 String (getTypeName/1732526627 (cast-from-var100-to-var2723 var2229!1))) ; Statement: $r7 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: java.lang.String getTypeName()>() 
(assert true)
(define-const var157 String (append/672562846 var3068 var3122)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3068!1 String)
(assert (= var3068!1 (str.++ var3068 var3122)))
(assert true)
(define-const var3813 String (append/672562846 var157 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var157!1 String)
(assert (= var157!1 (str.++ var157 "]")))
(assert true)
(define-const var1377 String (toString/-2075883882 var3813)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1605 var1377)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1605!1 var1952)
(declare-const var1377!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {ensureNoIdClass/-1881447077=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], void), id/962040814=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute), var1952-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTypeName/1732526627=([org.hibernate.metamodel.model.domain.internal.AbstractType], java.lang.String), cast-from-var100-to-var2723=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], org.hibernate.metamodel.model.domain.internal.AbstractType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var100=org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType, var2229=r0, var2422=r2, var1222=org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute, var1942=$r1, var1952=java.lang.IllegalArgumentException, var1605=$r5, var2566=$r6, var3068=$r8, var2723=org.hibernate.metamodel.model.domain.internal.AbstractType, var3122=$r7, var157=$r9, var3813=$r10, var1377=$r11}
; {org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType=var100, r0=var2229, r2=var2422, org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute=var1222, $r1=var1942, java.lang.IllegalArgumentException=var1952, $r5=var1605, $r6=var2566, $r8=var3068, org.hibernate.metamodel.model.domain.internal.AbstractType=var2723, $r7=var3122, $r9=var157, $r10=var3813, $r11=var1377}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType;	r2 := @parameter0: java.lang.Class;	specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: void ensureNoIdClass()>();	$r1 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id>;	if $r1 != null goto $r3 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id>;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The id attribute is not declared on this type [");	$r7 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: java.lang.String getTypeName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r5
;block_num 2
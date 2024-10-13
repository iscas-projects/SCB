(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1679 0)
(declare-sort var1223 0)
(declare-sort var1111 0)
(declare-sort var172 0)
(declare-sort var293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1223_getKeyJavaType/347819913 (var1223) ClassObject)
(declare-fun var172-init () var172)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var293) String)
(declare-fun cast-from-ClassObject-to-var293 (ClassObject) var293)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var172 String) void)
(declare-const null-var1679 var1679)
(declare-const null-var1223 var1223)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3329 var1679) ; Statement: r11 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var3329 null-var1679)))
(declare-const var2954 var1223) ; Statement: r0 := @parameter0: javax.persistence.metamodel.MapAttribute 
(assert (not (= var2954 null-var1223)))
(declare-const var3122 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3122 null-String)))
(declare-const var887 ClassObject) ; Statement: r1 := @parameter2: java.lang.Class 
(assert (not (= var887 null-ClassObject)))
(define-const var3472 ClassObject (var1223_getKeyJavaType/347819913 var2954)) ; Statement: $r2 = interfaceinvoke r0.<javax.persistence.metamodel.MapAttribute: java.lang.Class getKeyJavaType()>() 
 ; Statement: if $r2 == r1 goto return 
(assert (not (= var3472 var887))) ; Negate: Cond: $r2 == r1  
(define-const var86 var172 var172-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1557 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1557)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1557!1 String)
(assert (= var1557!1 ""))
(assert true)
(define-const var1658 String (append/672562846 var1557!1 "MapAttribute named ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MapAttribute named ") 
(declare-const var1557!2 String)
(assert (= var1557!2 (str.++ var1557!1 "MapAttribute named ")))
(assert true)
(define-const var3235 String (append/672562846 var1658 var3122)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1658!1 String)
(assert (= var1658!1 (str.++ var1658 var3122)))
(assert true)
(define-const var368 String (append/672562846 var3235 " does not support a key of type ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support a key of type ") 
(declare-const var3235!1 String)
(assert (= var3235!1 (str.++ var3235 " does not support a key of type ")))
(assert true)
(define-const var2214 String (append/-1031950772 var368 (cast-from-ClassObject-to-var293 var887))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var368!1 String)
(assert (str.prefixof var368 var368!1))
(assert true)
(define-const var1809 String (toString/-2075883882 var2214)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var86 var1809)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var86!1 var172)
(declare-const var1809!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1223_getKeyJavaType/347819913=([javax.persistence.metamodel.MapAttribute], java.lang.Class), var172-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var293=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1679=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var3329=r11, var1223=javax.persistence.metamodel.MapAttribute, var2954=r0, var3122=r5, var1111=null_type, var887=r1, var3472=$r2, var172=java.lang.IllegalArgumentException, var86=$r3, var1557=$r4, var1658=$r6, var3235=$r7, var368=$r8, var293=java.lang.Object, var2214=$r9, var1809=$r10}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var1679, r11=var3329, javax.persistence.metamodel.MapAttribute=var1223, r0=var2954, r5=var3122, null_type=var1111, r1=var887, $r2=var3472, java.lang.IllegalArgumentException=var172, $r3=var86, $r4=var1557, $r6=var1658, $r7=var3235, $r8=var368, java.lang.Object=var293, $r9=var2214, $r10=var1809}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r0 := @parameter0: javax.persistence.metamodel.MapAttribute;	r5 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Class;	$r2 = interfaceinvoke r0.<javax.persistence.metamodel.MapAttribute: java.lang.Class getKeyJavaType()>();	if $r2 == r1 goto return;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MapAttribute named ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support a key of type ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 2
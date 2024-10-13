(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2252 0)
(declare-sort var1055 0)
(declare-sort var2259 0)
(declare-sort var552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun declaringType/1966305054 (var2252) var1055)
(declare-fun var1055_getName/-1872347228 (var1055) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/1966305054 (var2252) String)
(declare-fun attributeNature/1966305054 (var2252) var2259)
(declare-fun append/-1031950772 (String var552) String)
(declare-fun cast-from-var2259-to-var552 (var2259) var552)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2252 var2252)
(declare-const var2106 var2252) ; Statement: r1 := @this: org.hibernate.metamodel.model.domain.internal.AbstractAttribute 
(assert (not (= var2106 null-var2252)))
(define-const var2227 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2227)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2227!1 String)
(assert (= var2227!1 ""))
(define-const var3666 var1055 (declaringType/1966305054 var2106)) ; Statement: $r2 = r1.<org.hibernate.metamodel.model.domain.internal.AbstractAttribute: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor declaringType> 
(define-const var2636 String (var1055_getName/-1872347228 var3666)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var3485 String (append/672562846 var2227!1 var2636)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2227!2 String)
(assert (= var2227!2 (str.++ var2227!1 var2636)))
(assert true)
(define-const var3587 String (append/-1166366385 var3485 35)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var3485!1 String)
(assert (str.prefixof var3485 var3485!1))
(define-const var2296 String (name/1966305054 var2106)) ; Statement: $r5 = r1.<org.hibernate.metamodel.model.domain.internal.AbstractAttribute: java.lang.String name> 
(assert true)
(define-const var949 String (append/672562846 var3587 var2296)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3587!1 String)
(assert (= var3587!1 (str.++ var3587 var2296)))
(assert true)
(define-const var1860 String (append/-1166366385 var949 40)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var949!1 String)
(assert (str.prefixof var949 var949!1))
(define-const var1653 var2259 (attributeNature/1966305054 var2106)) ; Statement: $r8 = r1.<org.hibernate.metamodel.model.domain.internal.AbstractAttribute: javax.persistence.metamodel.Attribute$PersistentAttributeType attributeNature> 
(assert true)
(define-const var2721 String (append/-1031950772 var1860 (cast-from-var2259-to-var552 var1653))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1860!1 String)
(assert (str.prefixof var1860 var1860!1))
(assert true)
(define-const var3381 String (append/-1166366385 var2721 41)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2721!1 String)
(assert (str.prefixof var2721 var2721!1))
(assert true)
(define-const var432 String (toString/-2075883882 var3381)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), declaringType/1966305054=([org.hibernate.metamodel.model.domain.internal.AbstractAttribute], org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor), var1055_getName/-1872347228=([org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/1966305054=([org.hibernate.metamodel.model.domain.internal.AbstractAttribute], java.lang.String), attributeNature/1966305054=([org.hibernate.metamodel.model.domain.internal.AbstractAttribute], javax.persistence.metamodel.Attribute$PersistentAttributeType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2259-to-var552=([javax.persistence.metamodel.Attribute$PersistentAttributeType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2252=org.hibernate.metamodel.model.domain.internal.AbstractAttribute, var2106=r1, var2227=$r0, var1055=org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor, var3666=$r2, var2636=$r3, var3485=$r4, var3587=$r6, var2296=$r5, var949=$r7, var1860=$r9, var2259=javax.persistence.metamodel.Attribute$PersistentAttributeType, var1653=$r8, var552=java.lang.Object, var2721=$r10, var3381=$r11, var432=$r12}
; {org.hibernate.metamodel.model.domain.internal.AbstractAttribute=var2252, r1=var2106, $r0=var2227, org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor=var1055, $r2=var3666, $r3=var2636, $r4=var3485, $r6=var3587, $r5=var2296, $r7=var949, $r9=var1860, javax.persistence.metamodel.Attribute$PersistentAttributeType=var2259, $r8=var1653, java.lang.Object=var552, $r10=var2721, $r11=var3381, $r12=var432}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.metamodel.model.domain.internal.AbstractAttribute;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.metamodel.model.domain.internal.AbstractAttribute: org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor declaringType>;	$r3 = interfaceinvoke $r2.<org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	$r5 = r1.<org.hibernate.metamodel.model.domain.internal.AbstractAttribute: java.lang.String name>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r8 = r1.<org.hibernate.metamodel.model.domain.internal.AbstractAttribute: javax.persistence.metamodel.Attribute$PersistentAttributeType attributeNature>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1
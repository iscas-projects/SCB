(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2974 0)
(declare-sort var2040 0)
(declare-sort var3811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasIdClass/-1496794222 (var2974) Bool)
(declare-fun var2040-init () var2040)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTypeName/1732526627 (var3811) String)
(declare-fun cast-from-var2974-to-var3811 (var2974) var3811)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2040 String) void)
(declare-const null-var2974 var2974)
(declare-const var3698 var2974) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType 
(assert (not (= var3698 null-var2974)))
(assert true)
(define-const var185 Bool (hasIdClass/-1496794222 var3698)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: boolean hasIdClass()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var185 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2815 var2040 var2040-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var1316 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1316)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1316!1 String)
(assert (= var1316!1 ""))
(assert true)
(define-const var2736 String (append/672562846 var1316!1 "Illegal call to IdentifiableType#getId for class [")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal call to IdentifiableType#getId for class [") 
(declare-const var1316!2 String)
(assert (= var1316!2 (str.++ var1316!1 "Illegal call to IdentifiableType#getId for class [")))
(assert true)
(define-const var2597 String (getTypeName/1732526627 (cast-from-var2974-to-var3811 var3698))) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: java.lang.String getTypeName()>() 
(assert true)
(define-const var1033 String (append/672562846 var2736 var2597)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2736!1 String)
(assert (= var2736!1 (str.++ var2736 var2597)))
(assert true)
(define-const var1468 String (append/672562846 var1033 "] defined with @IdClass")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] defined with @IdClass") 
(declare-const var1033!1 String)
(assert (= var1033!1 (str.++ var1033 "] defined with @IdClass")))
(assert true)
(define-const var546 String (toString/-2075883882 var1468)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2815 var546)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var2815!1 var2040)
(declare-const var546!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {hasIdClass/-1496794222=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], boolean), var2040-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTypeName/1732526627=([org.hibernate.metamodel.model.domain.internal.AbstractType], java.lang.String), cast-from-var2974-to-var3811=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], org.hibernate.metamodel.model.domain.internal.AbstractType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2974=org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType, var3698=r0, var185=$z0, var2040=java.lang.IllegalArgumentException, var2815=$r1, var1316=$r2, var2736=$r4, var3811=org.hibernate.metamodel.model.domain.internal.AbstractType, var2597=$r3, var1033=$r5, var1468=$r6, var546=$r7}
; {org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType=var2974, r0=var3698, $z0=var185, java.lang.IllegalArgumentException=var2040, $r1=var2815, $r2=var1316, $r4=var2736, org.hibernate.metamodel.model.domain.internal.AbstractType=var3811, $r3=var2597, $r5=var1033, $r6=var1468, $r7=var546}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType;	$z0 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: boolean hasIdClass()>();	if $z0 == 0 goto return;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal call to IdentifiableType#getId for class [");	$r3 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: java.lang.String getTypeName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] defined with @IdClass");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 2
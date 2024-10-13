(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3403 0)
(declare-sort var3915 0)
(declare-sort var836 0)
(declare-sort var254 0)
(declare-sort var1467 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var254!class ClassObject)
(declare-fun isComponentTuplizerImplementor/-128293134 (var3403 ClassObject) Bool)
(declare-fun var836-init () var836)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var836 var1467) void)
(declare-fun cast-from-String-to-var1467 (String) var1467)
(declare-const null-var3403 var3403)
(declare-const null-var3915 var3915)
(declare-const null-ClassObject ClassObject)
(declare-const var3403-$assertionsDisabled Bool)
(declare-const var3776 var3403) ; Statement: r0 := @this: org.hibernate.tuple.component.ComponentTuplizerFactory 
(assert (not (= var3776 null-var3403)))
(declare-const var3760 var3915) ; Statement: r1 := @parameter0: org.hibernate.EntityMode 
(assert (not (= var3760 null-var3915)))
(declare-const var3637 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3637 null-ClassObject)))
(define-const var2792 Bool var3403-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled> 
(assert (not (not (= (ite var2792 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1736 Bool (isComponentTuplizerImplementor/-128293134 var3776 var3637)) ; Statement: $z3 = specialinvoke r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: boolean isComponentTuplizerImplementor(java.lang.Class)>(r2) 
 ; Statement: if $z3 != 0 goto $z1 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled> 
(assert (not (not (= (ite var1736 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var334 var836 var836-init) ; Statement: $r11 = new java.lang.AssertionError 
(define-const var1885 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1885)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1885!1 String)
(assert (= var1885!1 ""))
(assert true)
(define-const var3935 String (append/672562846 var1885!1 "Specified tuplizer class [")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Specified tuplizer class [") 
(declare-const var1885!2 String)
(assert (= var1885!2 (str.++ var1885!1 "Specified tuplizer class [")))
(assert true)
(define-const var667 String (getName/-1958580599 var3637)) ; Statement: $r13 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2701 String (append/672562846 var3935 var667)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3935!1 String)
(assert (= var3935!1 (str.++ var3935 var667)))
(assert true)
(define-const var1525 String (append/672562846 var2701 "] does not implement ")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not implement ") 
(declare-const var2701!1 String)
(assert (= var2701!1 (str.++ var2701 "] does not implement ")))
(define-const var2385 ClassObject var254!class) ; Statement: $r16 = class "Lorg/hibernate/tuple/component/ComponentTuplizer;" 
(assert true)
(define-const var1612 String (getName/-1958580599 var2385)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1169 String (append/672562846 var1525 var1612)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1525!1 String)
(assert (= var1525!1 (str.++ var1525 var1612)))
(assert true)
(define-const var1775 String (toString/-2075883882 var1169)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var334 (cast-from-String-to-var1467 var1775))) ; Statement: specialinvoke $r11.<java.lang.AssertionError: void <init>(java.lang.Object)>($r20) 

(declare-const var334!1 var836)
(declare-const var1775!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {isComponentTuplizerImplementor/-128293134=([org.hibernate.tuple.component.ComponentTuplizerFactory, java.lang.Class], boolean), var836-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1467=([java.lang.String], java.lang.Object)}
; {var3403=org.hibernate.tuple.component.ComponentTuplizerFactory, var3776=r0, var3915=org.hibernate.EntityMode, var3760=r1, var3637=r2, var2792=$z0, var1736=$z3, var836=java.lang.AssertionError, var334=$r11, var1885=$r12, var3935=$r14, var667=$r13, var2701=$r15, var1525=$r18, var254=org.hibernate.tuple.component.ComponentTuplizer, var2385=$r16, var1612=$r17, var1169=$r19, var1775=$r20, var1467=java.lang.Object}
; {org.hibernate.tuple.component.ComponentTuplizerFactory=var3403, r0=var3776, org.hibernate.EntityMode=var3915, r1=var3760, r2=var3637, $z0=var2792, $z3=var1736, java.lang.AssertionError=var836, $r11=var334, $r12=var1885, $r14=var3935, $r13=var667, $r15=var2701, $r18=var1525, org.hibernate.tuple.component.ComponentTuplizer=var254, $r16=var2385, $r17=var1612, $r19=var1169, $r20=var1775, java.lang.Object=var1467}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.component.ComponentTuplizerFactory;	r1 := @parameter0: org.hibernate.EntityMode;	r2 := @parameter1: java.lang.Class;	$z0 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled>;	$z3 = specialinvoke r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: boolean isComponentTuplizerImplementor(java.lang.Class)>(r2);	if $z3 != 0 goto $z1 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled>;	$r11 = new java.lang.AssertionError;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Specified tuplizer class [");	$r13 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not implement ");	$r16 = class "Lorg/hibernate/tuple/component/ComponentTuplizer;";	$r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.AssertionError: void <init>(java.lang.Object)>($r20);	throw $r11
;block_num 3
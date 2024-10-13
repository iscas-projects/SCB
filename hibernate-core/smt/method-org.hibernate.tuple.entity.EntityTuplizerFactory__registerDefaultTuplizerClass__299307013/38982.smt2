(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1231 0)
(declare-sort var574 0)
(declare-sort var1747 0)
(declare-sort var174 0)
(declare-sort var2789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var174!class ClassObject)
(declare-fun isEntityTuplizerImplementor/815226440 (var1231 ClassObject) Bool)
(declare-fun var1747-init () var1747)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1747 var2789) void)
(declare-fun cast-from-String-to-var2789 (String) var2789)
(declare-const null-var1231 var1231)
(declare-const null-var574 var574)
(declare-const null-ClassObject ClassObject)
(declare-const var1231-$assertionsDisabled Bool)
(declare-const var2630 var1231) ; Statement: r0 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory 
(assert (not (= var2630 null-var1231)))
(declare-const var3534 var574) ; Statement: r1 := @parameter0: org.hibernate.EntityMode 
(assert (not (= var3534 null-var574)))
(declare-const var2461 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var2461 null-ClassObject)))
(define-const var902 Bool var1231-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled> 
(assert (not (not (= (ite var902 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3112 Bool (isEntityTuplizerImplementor/815226440 var2630 var2461)) ; Statement: $z3 = specialinvoke r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: boolean isEntityTuplizerImplementor(java.lang.Class)>(r2) 
 ; Statement: if $z3 != 0 goto $z1 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled> 
(assert (not (not (= (ite var3112 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var2601 var1747 var1747-init) ; Statement: $r12 = new java.lang.AssertionError 
(define-const var2790 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2790)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2790!1 String)
(assert (= var2790!1 ""))
(assert true)
(define-const var2778 String (append/672562846 var2790!1 "Specified tuplizer class [")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Specified tuplizer class [") 
(declare-const var2790!2 String)
(assert (= var2790!2 (str.++ var2790!1 "Specified tuplizer class [")))
(assert true)
(define-const var3215 String (getName/-1958580599 var2461)) ; Statement: $r14 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2252 String (append/672562846 var2778 var3215)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2778!1 String)
(assert (= var2778!1 (str.++ var2778 var3215)))
(assert true)
(define-const var1481 String (append/672562846 var2252 "] does not implement ")) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not implement ") 
(declare-const var2252!1 String)
(assert (= var2252!1 (str.++ var2252 "] does not implement ")))
(define-const var387 ClassObject var174!class) ; Statement: $r17 = class "Lorg/hibernate/tuple/entity/EntityTuplizer;" 
(assert true)
(define-const var718 String (getName/-1958580599 var387)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2155 String (append/672562846 var1481 var718)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1481!1 String)
(assert (= var1481!1 (str.++ var1481 var718)))
(assert true)
(define-const var390 String (toString/-2075883882 var2155)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2601 (cast-from-String-to-var2789 var390))) ; Statement: specialinvoke $r12.<java.lang.AssertionError: void <init>(java.lang.Object)>($r21) 

(declare-const var2601!1 var1747)
(declare-const var390!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {isEntityTuplizerImplementor/815226440=([org.hibernate.tuple.entity.EntityTuplizerFactory, java.lang.Class], boolean), var1747-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2789=([java.lang.String], java.lang.Object)}
; {var1231=org.hibernate.tuple.entity.EntityTuplizerFactory, var2630=r0, var574=org.hibernate.EntityMode, var3534=r1, var2461=r2, var902=$z0, var3112=$z3, var1747=java.lang.AssertionError, var2601=$r12, var2790=$r13, var2778=$r15, var3215=$r14, var2252=$r16, var1481=$r19, var174=org.hibernate.tuple.entity.EntityTuplizer, var387=$r17, var718=$r18, var2155=$r20, var390=$r21, var2789=java.lang.Object}
; {org.hibernate.tuple.entity.EntityTuplizerFactory=var1231, r0=var2630, org.hibernate.EntityMode=var574, r1=var3534, r2=var2461, $z0=var902, $z3=var3112, java.lang.AssertionError=var1747, $r12=var2601, $r13=var2790, $r15=var2778, $r14=var3215, $r16=var2252, $r19=var1481, org.hibernate.tuple.entity.EntityTuplizer=var174, $r17=var387, $r18=var718, $r20=var2155, $r21=var390, java.lang.Object=var2789}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory;	r1 := @parameter0: org.hibernate.EntityMode;	r2 := @parameter1: java.lang.Class;	$z0 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled>;	$z3 = specialinvoke r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: boolean isEntityTuplizerImplementor(java.lang.Class)>(r2);	if $z3 != 0 goto $z1 = <org.hibernate.tuple.entity.EntityTuplizerFactory: boolean $assertionsDisabled>;	$r12 = new java.lang.AssertionError;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Specified tuplizer class [");	$r14 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not implement ");	$r17 = class "Lorg/hibernate/tuple/entity/EntityTuplizer;";	$r18 = virtualinvoke $r17.<java.lang.Class: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.AssertionError: void <init>(java.lang.Object)>($r21);	throw $r12
;block_num 3
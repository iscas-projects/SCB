(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var668 0)
(declare-sort var293 0)
(declare-sort var1864 0)
(declare-sort var1927 0)
(declare-sort var3068 0)
(declare-sort var277 0)
(declare-sort var1982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var293_getValueClassification/176322583 (var293) var1927)
(declare-fun ordinal/-291641772 (var3068) Int)
(declare-fun cast-from-var1927-to-var3068 (var1927) var3068)
(declare-fun var277-init () var277)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1982) String)
(declare-fun cast-from-var1927-to-var1982 (var1927) var1982)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var277 String) void)
(declare-const null-var668 var668)
(declare-const null-var293 var293)
(declare-const var1864-$SwitchMap$org$hibernate$metamodel$internal$AttributeFactory$ValueContext$ValueClassification (Array Int Int))
(declare-const var130 var668) ; Statement: r7 := @this: org.hibernate.metamodel.internal.AttributeFactory 
(assert (not (= var130 null-var668)))
(declare-const var3190 var293) ; Statement: r0 := @parameter0: org.hibernate.metamodel.internal.AttributeFactory$ValueContext 
(assert (not (= var3190 null-var293)))
(define-const var3401 (Array Int Int) var1864-$SwitchMap$org$hibernate$metamodel$internal$AttributeFactory$ValueContext$ValueClassification) ; Statement: $r1 = <org.hibernate.metamodel.internal.AttributeFactory$7: int[] $SwitchMap$org$hibernate$metamodel$internal$AttributeFactory$ValueContext$ValueClassification> 
(define-const var3196 var1927 (var293_getValueClassification/176322583 var3190)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$ValueContext: org.hibernate.metamodel.internal.AttributeFactory$ValueContext$ValueClassification getValueClassification()>() 
(assert true)
(define-const var401 Int (ordinal/-291641772 (cast-from-var1927-to-var3068 var3196))) ; Statement: $i0 = virtualinvoke $r2.<org.hibernate.metamodel.internal.AttributeFactory$ValueContext$ValueClassification: int ordinal()>() 
(define-const var646 Int (select var3401 var401)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r28 = new org.hibernate.metamodel.model.domain.internal.BasicTypeImpl;     case 2: goto $r23 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$ValueContext: org.hibernate.mapping.Value getHibernateValue()>();     case 3: goto $r3 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$ValueContext: org.hibernate.mapping.Value getHibernateValue()>();     default: goto $r31 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var646 3)) (and (not (= var646 2)) (and (not (= var646 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var3633 var277 var277-init) ; Statement: $r31 = new org.hibernate.AssertionFailure 
(define-const var3375 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3375)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3375!1 String)
(assert (= var3375!1 ""))
(assert true)
(define-const var2625 String (append/672562846 var3375!1 "Unknown type : ")) ; Statement: $r34 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type : ") 
(declare-const var3375!2 String)
(assert (= var3375!2 (str.++ var3375!1 "Unknown type : ")))
(define-const var1151 var1927 (var293_getValueClassification/176322583 var3190)) ; Statement: $r33 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$ValueContext: org.hibernate.metamodel.internal.AttributeFactory$ValueContext$ValueClassification getValueClassification()>() 
(assert true)
(define-const var478 String (append/-1031950772 var2625 (cast-from-var1927-to-var1982 var1151))) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r33) 
(declare-const var2625!1 String)
(assert (str.prefixof var2625 var2625!1))
(assert true)
(define-const var2665 String (toString/-2075883882 var478)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var3633 var2665)) ; Statement: specialinvoke $r31.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r36) 

(declare-const var3633!1 var277)
(declare-const var2665!1 String)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {var293_getValueClassification/176322583=([org.hibernate.metamodel.internal.AttributeFactory$ValueContext], org.hibernate.metamodel.internal.AttributeFactory$ValueContext$ValueClassification), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1927-to-var3068=([org.hibernate.metamodel.internal.AttributeFactory$ValueContext$ValueClassification], java.lang.Enum), var277-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1927-to-var1982=([org.hibernate.metamodel.internal.AttributeFactory$ValueContext$ValueClassification], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var668=org.hibernate.metamodel.internal.AttributeFactory, var130=r7, var293=org.hibernate.metamodel.internal.AttributeFactory$ValueContext, var3190=r0, var1864=org.hibernate.metamodel.internal.AttributeFactory$7, var3401=$r1, var1927=org.hibernate.metamodel.internal.AttributeFactory$ValueContext$ValueClassification, var3196=$r2, var3068=java.lang.Enum, var401=$i0, var646=$i1, var277=org.hibernate.AssertionFailure, var3633=$r31, var3375=$r32, var2625=$r34, var1151=$r33, var1982=java.lang.Object, var478=$r35, var2665=$r36}
; {org.hibernate.metamodel.internal.AttributeFactory=var668, r7=var130, org.hibernate.metamodel.internal.AttributeFactory$ValueContext=var293, r0=var3190, org.hibernate.metamodel.internal.AttributeFactory$7=var1864, $r1=var3401, org.hibernate.metamodel.internal.AttributeFactory$ValueContext$ValueClassification=var1927, $r2=var3196, java.lang.Enum=var3068, $i0=var401, $i1=var646, org.hibernate.AssertionFailure=var277, $r31=var3633, $r32=var3375, $r34=var2625, $r33=var1151, java.lang.Object=var1982, $r35=var478, $r36=var2665}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.metamodel.internal.AttributeFactory;	r0 := @parameter0: org.hibernate.metamodel.internal.AttributeFactory$ValueContext;	$r1 = <org.hibernate.metamodel.internal.AttributeFactory$7: int[] $SwitchMap$org$hibernate$metamodel$internal$AttributeFactory$ValueContext$ValueClassification>;	$r2 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$ValueContext: org.hibernate.metamodel.internal.AttributeFactory$ValueContext$ValueClassification getValueClassification()>();	$i0 = virtualinvoke $r2.<org.hibernate.metamodel.internal.AttributeFactory$ValueContext$ValueClassification: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r28 = new org.hibernate.metamodel.model.domain.internal.BasicTypeImpl;     case 2: goto $r23 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$ValueContext: org.hibernate.mapping.Value getHibernateValue()>();     case 3: goto $r3 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$ValueContext: org.hibernate.mapping.Value getHibernateValue()>();     default: goto $r31 = new org.hibernate.AssertionFailure; };	$r31 = new org.hibernate.AssertionFailure;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type : ");	$r33 = interfaceinvoke r0.<org.hibernate.metamodel.internal.AttributeFactory$ValueContext: org.hibernate.metamodel.internal.AttributeFactory$ValueContext$ValueClassification getValueClassification()>();	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r33);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r36);	throw $r31
;block_num 2
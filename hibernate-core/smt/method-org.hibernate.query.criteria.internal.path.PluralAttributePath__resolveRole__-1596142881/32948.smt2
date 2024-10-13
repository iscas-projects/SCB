(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1792 0)
(declare-sort var259 0)
(declare-sort var3234 0)
(declare-sort var1933 0)
(declare-sort var2123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var259_getDeclaringType/1333673417 (var259) var1933)
(declare-fun var1933_getPersistenceType/863684684 (var1933) var2123)
(declare-fun ordinal/1565526271 (var2123) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1933_getJavaType/419544409 (var1933) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var259_getName/290799174 (var259) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1792 var1792)
(declare-const null-var259 var259)
(declare-const var3234-$SwitchMap$javax$persistence$metamodel$Type$PersistenceType (Array Int Int))
(declare-const var1876 var1792) ; Statement: r7 := @this: org.hibernate.query.criteria.internal.path.PluralAttributePath 
(assert (not (= var1876 null-var1792)))
(declare-const var3628 var259) ; Statement: r0 := @parameter0: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var3628 null-var259)))
(define-const var3174 (Array Int Int) var3234-$SwitchMap$javax$persistence$metamodel$Type$PersistenceType) ; Statement: $r1 = <org.hibernate.query.criteria.internal.path.PluralAttributePath$1: int[] $SwitchMap$javax$persistence$metamodel$Type$PersistenceType> 
(define-const var3392 var1933 (var259_getDeclaringType/1333673417 var3628)) ; Statement: $r2 = interfaceinvoke r0.<javax.persistence.metamodel.PluralAttribute: javax.persistence.metamodel.ManagedType getDeclaringType()>() 
(define-const var1959 var2123 (var1933_getPersistenceType/863684684 var3392)) ; Statement: $r3 = interfaceinvoke $r2.<javax.persistence.metamodel.ManagedType: javax.persistence.metamodel.Type$PersistenceType getPersistenceType()>() 
(assert true)
(define-const var467 Int (ordinal/1565526271 var1959)) ; Statement: $i0 = virtualinvoke $r3.<javax.persistence.metamodel.Type$PersistenceType: int ordinal()>() 
(define-const var335 Int (select var3174 var467)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r58 = new java.lang.StringBuilder;     case 2: goto $r34 = virtualinvoke r7.<org.hibernate.query.criteria.internal.path.PluralAttributePath: org.hibernate.query.criteria.internal.PathSource getPathSource()>();     case 3: goto $r4 = new java.lang.StringBuilder;     default: goto $r67 = new org.hibernate.AssertionFailure; } 
(assert (and (= var335 1) true)) ; Intersect: Cond: $i1 == 1  and Non Conditional 
(define-const var619 String String-init) ; Statement: $r58 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var619)) ; Statement: specialinvoke $r58.<java.lang.StringBuilder: void <init>()>() 
(declare-const var619!1 String)
(assert (= var619!1 ""))
(define-const var621 var1933 (var259_getDeclaringType/1333673417 var3628)) ; Statement: $r59 = interfaceinvoke r0.<javax.persistence.metamodel.PluralAttribute: javax.persistence.metamodel.ManagedType getDeclaringType()>() 
(define-const var1410 ClassObject (var1933_getJavaType/419544409 var621)) ; Statement: $r60 = interfaceinvoke $r59.<javax.persistence.metamodel.ManagedType: java.lang.Class getJavaType()>() 
(assert true)
(define-const var55 String (getName/-1958580599 var1410)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1221 String (append/672562846 var619!1 var55)) ; Statement: $r62 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r61) 
(declare-const var619!2 String)
(assert (= var619!2 (str.++ var619!1 var55)))
(assert true)
(define-const var2736 String (append/-1166366385 var1221 46)) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1221!1 String)
(assert (str.prefixof var1221 var1221!1))
(define-const var3516 String (var259_getName/290799174 var3628)) ; Statement: $r63 = interfaceinvoke r0.<javax.persistence.metamodel.PluralAttribute: java.lang.String getName()>() 
(assert true)
(define-const var1121 String (append/672562846 var2736 var3516)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var2736!1 String)
(assert (= var2736!1 (str.++ var2736 var3516)))
(assert true)
(define-const var1186 String (toString/-2075883882 var1121)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r66 
(check-sat)
(get-model)
(get-unsat-core)
; {var259_getDeclaringType/1333673417=([javax.persistence.metamodel.PluralAttribute], javax.persistence.metamodel.ManagedType), var1933_getPersistenceType/863684684=([javax.persistence.metamodel.ManagedType], javax.persistence.metamodel.Type$PersistenceType), ordinal/1565526271=([javax.persistence.metamodel.Type$PersistenceType], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1933_getJavaType/419544409=([javax.persistence.metamodel.ManagedType], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var259_getName/290799174=([javax.persistence.metamodel.PluralAttribute], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1792=org.hibernate.query.criteria.internal.path.PluralAttributePath, var1876=r7, var259=javax.persistence.metamodel.PluralAttribute, var3628=r0, var3234=org.hibernate.query.criteria.internal.path.PluralAttributePath$1, var3174=$r1, var1933=javax.persistence.metamodel.ManagedType, var3392=$r2, var2123=javax.persistence.metamodel.Type$PersistenceType, var1959=$r3, var467=$i0, var335=$i1, var619=$r58, var621=$r59, var1410=$r60, var55=$r61, var1221=$r62, var2736=$r64, var3516=$r63, var1121=$r65, var1186=$r66}
; {org.hibernate.query.criteria.internal.path.PluralAttributePath=var1792, r7=var1876, javax.persistence.metamodel.PluralAttribute=var259, r0=var3628, org.hibernate.query.criteria.internal.path.PluralAttributePath$1=var3234, $r1=var3174, javax.persistence.metamodel.ManagedType=var1933, $r2=var3392, javax.persistence.metamodel.Type$PersistenceType=var2123, $r3=var1959, $i0=var467, $i1=var335, $r58=var619, $r59=var621, $r60=var1410, $r61=var55, $r62=var1221, $r64=var2736, $r63=var3516, $r65=var1121, $r66=var1186}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.query.criteria.internal.path.PluralAttributePath;	r0 := @parameter0: javax.persistence.metamodel.PluralAttribute;	$r1 = <org.hibernate.query.criteria.internal.path.PluralAttributePath$1: int[] $SwitchMap$javax$persistence$metamodel$Type$PersistenceType>;	$r2 = interfaceinvoke r0.<javax.persistence.metamodel.PluralAttribute: javax.persistence.metamodel.ManagedType getDeclaringType()>();	$r3 = interfaceinvoke $r2.<javax.persistence.metamodel.ManagedType: javax.persistence.metamodel.Type$PersistenceType getPersistenceType()>();	$i0 = virtualinvoke $r3.<javax.persistence.metamodel.Type$PersistenceType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r58 = new java.lang.StringBuilder;     case 2: goto $r34 = virtualinvoke r7.<org.hibernate.query.criteria.internal.path.PluralAttributePath: org.hibernate.query.criteria.internal.PathSource getPathSource()>();     case 3: goto $r4 = new java.lang.StringBuilder;     default: goto $r67 = new org.hibernate.AssertionFailure; };	$r58 = new java.lang.StringBuilder;	specialinvoke $r58.<java.lang.StringBuilder: void <init>()>();	$r59 = interfaceinvoke r0.<javax.persistence.metamodel.PluralAttribute: javax.persistence.metamodel.ManagedType getDeclaringType()>();	$r60 = interfaceinvoke $r59.<javax.persistence.metamodel.ManagedType: java.lang.Class getJavaType()>();	$r61 = virtualinvoke $r60.<java.lang.Class: java.lang.String getName()>();	$r62 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r61);	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r63 = interfaceinvoke r0.<javax.persistence.metamodel.PluralAttribute: java.lang.String getName()>();	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	return $r66
;block_num 2
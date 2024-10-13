(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var663 0)
(declare-sort var1208 0)
(declare-sort var1804 0)
(declare-sort var1902 0)
(declare-sort var2072 0)
(declare-sort var590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var1902) ClassObject)
(declare-fun ordinal/-466808094 (var1208) Int)
(declare-fun var590-init () var590)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1902) String)
(declare-fun cast-from-var1208-to-var1902 (var1208) var1902)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var590 String) void)
(declare-const null-var663 var663)
(declare-const null-var1208 var1208)
(declare-const null-var1804 var1804)
(declare-const null-var1902 var1902)
(declare-const var2072-$SwitchMap$javax$persistence$TemporalType (Array Int Int))
(declare-const var226 var663) ; Statement: r3 := @this: org.hibernate.query.internal.BindingTypeHelper 
(assert (not (= var226 null-var663)))
(declare-const var3562 var1208) ; Statement: r2 := @parameter0: javax.persistence.TemporalType 
(assert (not (= var3562 null-var1208)))
(declare-const var3035 var1804) ; Statement: r1 := @parameter1: org.hibernate.type.Type 
(assert (not (= var3035 null-var1804)))
(declare-const var675 var1902) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var675 null-var1902)))
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var675 null-var1902))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var3061 ClassObject (getClass/1258963082 var675)) ; Statement: r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: goto [?= $r14 = <org.hibernate.query.internal.BindingTypeHelper$1: int[] $SwitchMap$javax$persistence$TemporalType>] 
(assert true) ; Non Conditional
(define-const var2575 (Array Int Int) var2072-$SwitchMap$javax$persistence$TemporalType) ; Statement: $r14 = <org.hibernate.query.internal.BindingTypeHelper$1: int[] $SwitchMap$javax$persistence$TemporalType> 
(assert true)
(define-const var464 Int (ordinal/-466808094 var3562)) ; Statement: $i0 = virtualinvoke r2.<javax.persistence.TemporalType: int ordinal()>() 
(define-const var1179 Int (select var2575 var464)) ; Statement: $i1 = $r14[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r6 = virtualinvoke r3.<org.hibernate.query.internal.BindingTypeHelper: org.hibernate.type.BasicType resolveTimestampTemporalTypeVariant(java.lang.Class,org.hibernate.type.Type)>(r13, r1);     case 2: goto $r5 = virtualinvoke r3.<org.hibernate.query.internal.BindingTypeHelper: org.hibernate.type.BasicType resolveDateTemporalTypeVariant(java.lang.Class,org.hibernate.type.Type)>(r13, r1);     case 3: goto $r4 = virtualinvoke r3.<org.hibernate.query.internal.BindingTypeHelper: org.hibernate.type.BasicType resolveTimeTemporalTypeVariant(java.lang.Class,org.hibernate.type.Type)>(r13, r1);     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1179 3)) (and (not (= var1179 2)) (and (not (= var1179 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var1604 var590 var590-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var273 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var273)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var273!1 String)
(assert (= var273!1 ""))
(assert true)
(define-const var1031 String (append/672562846 var273!1 "Unexpected TemporalType [")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected TemporalType [") 
(declare-const var273!2 String)
(assert (= var273!2 (str.++ var273!1 "Unexpected TemporalType [")))
(assert true)
(define-const var1867 String (append/-1031950772 var1031 (cast-from-var1208-to-var1902 var3562))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1031!1 String)
(assert (str.prefixof var1031 var1031!1))
(assert true)
(define-const var1484 String (append/672562846 var1867 "]; expecting TIMESTAMP, DATE or TIME")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]; expecting TIMESTAMP, DATE or TIME") 
(declare-const var1867!1 String)
(assert (= var1867!1 (str.++ var1867 "]; expecting TIMESTAMP, DATE or TIME")))
(assert true)
(define-const var3128 String (toString/-2075883882 var1484)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1604 var3128)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var1604!1 var590)
(declare-const var3128!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), ordinal/-466808094=([javax.persistence.TemporalType], int), var590-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1208-to-var1902=([javax.persistence.TemporalType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var663=org.hibernate.query.internal.BindingTypeHelper, var226=r3, var1208=javax.persistence.TemporalType, var3562=r2, var1804=org.hibernate.type.Type, var3035=r1, var1902=java.lang.Object, var675=r0, var3061=r13, var2072=org.hibernate.query.internal.BindingTypeHelper$1, var2575=$r14, var464=$i0, var1179=$i1, var590=java.lang.IllegalArgumentException, var1604=$r7, var273=$r8, var1031=$r9, var1867=$r10, var1484=$r11, var3128=$r12}
; {org.hibernate.query.internal.BindingTypeHelper=var663, r3=var226, javax.persistence.TemporalType=var1208, r2=var3562, org.hibernate.type.Type=var1804, r1=var3035, java.lang.Object=var1902, r0=var675, r13=var3061, org.hibernate.query.internal.BindingTypeHelper$1=var2072, $r14=var2575, $i0=var464, $i1=var1179, java.lang.IllegalArgumentException=var590, $r7=var1604, $r8=var273, $r9=var1031, $r10=var1867, $r11=var1484, $r12=var3128}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.query.internal.BindingTypeHelper;	r2 := @parameter0: javax.persistence.TemporalType;	r1 := @parameter1: org.hibernate.type.Type;	r0 := @parameter2: java.lang.Object;	if r0 == null goto (branch);	r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	goto [?= $r14 = <org.hibernate.query.internal.BindingTypeHelper$1: int[] $SwitchMap$javax$persistence$TemporalType>];	$r14 = <org.hibernate.query.internal.BindingTypeHelper$1: int[] $SwitchMap$javax$persistence$TemporalType>;	$i0 = virtualinvoke r2.<javax.persistence.TemporalType: int ordinal()>();	$i1 = $r14[$i0];	tableswitch($i1) {     case 1: goto $r6 = virtualinvoke r3.<org.hibernate.query.internal.BindingTypeHelper: org.hibernate.type.BasicType resolveTimestampTemporalTypeVariant(java.lang.Class,org.hibernate.type.Type)>(r13, r1);     case 2: goto $r5 = virtualinvoke r3.<org.hibernate.query.internal.BindingTypeHelper: org.hibernate.type.BasicType resolveDateTemporalTypeVariant(java.lang.Class,org.hibernate.type.Type)>(r13, r1);     case 3: goto $r4 = virtualinvoke r3.<org.hibernate.query.internal.BindingTypeHelper: org.hibernate.type.BasicType resolveTimeTemporalTypeVariant(java.lang.Class,org.hibernate.type.Type)>(r13, r1);     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected TemporalType [");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]; expecting TIMESTAMP, DATE or TIME");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 4
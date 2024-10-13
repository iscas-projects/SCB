(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2913 0)
(declare-sort var1238 0)
(declare-sort var3986 0)
(declare-sort var2421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1238) void)
(declare-fun cast-from-var2913-to-var1238 (var2913) var1238)
(declare-fun getEnumConstants/1422352872 (ClassObject) (Array Int var1238))
(declare-fun cast-from-__Array__Int__var1238__-to-__Array__Int__var3986__ ((Array Int var1238)) (Array Int var3986))
(declare-fun getLength-Arr-var3986-1 ((Array Int var3986)) Int)
(declare-fun var2421-init () var2421)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var2421 String) void)
(declare-const null-var2913 var2913)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const var1469 var2913) ; Statement: r0 := @this: org.hibernate.engine.internal.AbstractEntityEntry$EnumState 
(assert (not (= var1469 null-var2913)))
(declare-const var526 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var526 null-Int)))
(declare-const var183 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var183 null-ClassObject)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2913-to-var1238 var1469))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1469!1 var2913)
(assert true)
(define-const var2962 (Array Int var1238) (getEnumConstants/1422352872 var183)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.Object[] getEnumConstants()>() 
(define-const var2583 (Array Int var3986) (cast-from-__Array__Int__var1238__-to-__Array__Int__var3986__ var2962)) ; Statement: r3 = (java.lang.Enum[]) $r2 
(define-const var2584 Int (getLength-Arr-var3986-1 var2583)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i0 <= 15 goto r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int offset> = i1 
(assert (not (<= var2584 15))) ; Negate: Cond: $i0 <= 15  
(define-const var3376 var2421 var2421-init) ; Statement: $r12 = new org.hibernate.AssertionFailure 
(define-const var3390 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3390)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3390!1 String)
(assert (= var3390!1 ""))
(assert true)
(define-const var2877 String (append/672562846 var3390!1 "Cannot store enum type ")) ; Statement: $r7 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot store enum type ") 
(declare-const var3390!2 String)
(assert (= var3390!2 (str.++ var3390!1 "Cannot store enum type ")))
(assert true)
(define-const var1084 String (getName/-1958580599 var183)) ; Statement: $r6 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2827 String (append/672562846 var2877 var1084)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2877!1 String)
(assert (= var2877!1 (str.++ var2877 var1084)))
(assert true)
(define-const var1400 String (append/672562846 var2827 " in compressed state as it has too many values.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in compressed state as it has too many values.") 
(declare-const var2827!1 String)
(assert (= var2827!1 (str.++ var2827 " in compressed state as it has too many values.")))
(assert true)
(define-const var2235 String (toString/-2075883882 var1400)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var3376 var2235)) ; Statement: specialinvoke $r12.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10) 

(declare-const var3376!1 var2421)
(declare-const var2235!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2913-to-var1238=([org.hibernate.engine.internal.AbstractEntityEntry$EnumState], java.lang.Object), getEnumConstants/1422352872=([java.lang.Class], java.lang.Object[]), cast-from-__Array__Int__var1238__-to-__Array__Int__var3986__=([java.lang.Object[]], java.lang.Enum[]), getLength-Arr-var3986-1=([java.lang.Enum[]], int), var2421-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2913=org.hibernate.engine.internal.AbstractEntityEntry$EnumState, var1469=r0, var526=i1, var183=r1, var1238=java.lang.Object, var2962=$r2, var3986=java.lang.Enum, var2583=r3, var2584=$i0, var2421=org.hibernate.AssertionFailure, var3376=$r12, var3390=$r11, var2877=$r7, var1084=$r6, var2827=$r8, var1400=$r9, var2235=$r10}
; {org.hibernate.engine.internal.AbstractEntityEntry$EnumState=var2913, r0=var1469, i1=var526, r1=var183, java.lang.Object=var1238, $r2=var2962, java.lang.Enum=var3986, r3=var2583, $i0=var2584, org.hibernate.AssertionFailure=var2421, $r12=var3376, $r11=var3390, $r7=var2877, $r6=var1084, $r8=var2827, $r9=var1400, $r10=var2235}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.internal.AbstractEntityEntry$EnumState;	i1 := @parameter0: int;	r1 := @parameter1: java.lang.Class;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.Object[] getEnumConstants()>();	r3 = (java.lang.Enum[]) $r2;	$i0 = lengthof r3;	if $i0 <= 15 goto r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int offset> = i1;	$r12 = new org.hibernate.AssertionFailure;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot store enum type ");	$r6 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in compressed state as it has too many values.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10);	throw $r12
;block_num 2
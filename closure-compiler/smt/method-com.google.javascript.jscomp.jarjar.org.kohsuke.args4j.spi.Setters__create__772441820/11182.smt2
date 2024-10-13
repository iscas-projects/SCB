(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1551 0)
(declare-sort var2559 0)
(declare-sort var3298 0)
(declare-sort var1025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getModifiers/-1049741209 (var1551) Int)
(declare-fun var3298_isFinal/22304210 (Int) Bool)
(declare-fun var1025-init () var1025)
(declare-fun arr-var2559-init () (Array Int var2559))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDeclaringClass/1477653585 (var1551) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1618348824 (var1551) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var2559 (String) var2559)
(declare-fun String_format/1339386452 (String (Array Int var2559)) String)
(declare-fun <init>/-1092629202 (var1025 String) void)
(declare-const null-var1551 var1551)
(declare-const null-var2559 var2559)
(declare-const null-__Array__Int__var2559__ (Array Int var2559))
(declare-const var255 var1551) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var255 null-var1551)))
(declare-const var2496 var2559) ; Statement: r5 := @parameter1: java.lang.Object 
(assert (not (= var2496 null-var2559)))
(assert true)
(define-const var2091 Int (getModifiers/-1049741209 var255)) ; Statement: $i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>() 
(define-const var1637 Bool (var3298_isFinal/22304210 var2091)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert (not (= (ite var1637 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var303 var1025 var1025-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(define-const var2678 (Array Int var2559) arr-var2559-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(define-const var448 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var448)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var448!1 String)
(assert (= var448!1 ""))
(assert true)
(define-const var3308 ClassObject (getDeclaringClass/1477653585 var255)) ; Statement: $r11 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var3448 String (getName/-1958580599 var3308)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2849 String (append/672562846 var448!1 var3448)) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var448!2 String)
(assert (= var448!2 (str.++ var448!1 var3448)))
(assert true)
(define-const var2451 String (append/672562846 var2849 ".")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2849!1 String)
(assert (= var2849!1 (str.++ var2849 ".")))
(assert true)
(define-const var391 String (getName/1618348824 var255)) ; Statement: $r14 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var3187 String (append/672562846 var2451 var391)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2451!1 String)
(assert (= var2451!1 (str.++ var2451 var391)))
(assert true)
(define-const var3324 String (toString/-2075883882 var3187)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2678!1 (Array Int var2559))
(assert (not (= var2678!1 null-__Array__Int__var2559__)))
(assert (= (select var2678!1 0) (cast-from-String-to-var2559 var3324))) ; Statement: $r9[0] = $r17 
(define-const var797 String (String_format/1339386452 "Cannot set value to a final field \u0027%s\u0027." var2678!1)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Cannot set value to a final field \'%s\'.", $r9) 
(assert true)
;(assert (<init>/-1092629202 var303 var797)) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18) 

(declare-const var303!1 var1025)
(declare-const var797!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getModifiers/-1049741209=([java.lang.reflect.Field], int), var3298_isFinal/22304210=([int], boolean), var1025-init=([], java.lang.IllegalStateException), arr-var2559-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1618348824=([java.lang.reflect.Field], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var2559=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1551=java.lang.reflect.Field, var255=r0, var2559=java.lang.Object, var2496=r5, var2091=$i0, var3298=java.lang.reflect.Modifier, var1637=$z0, var1025=java.lang.IllegalStateException, var303=$r8, var2678=$r9, var448=$r10, var3308=$r11, var3448=$r12, var2849=$r13, var2451=$r15, var391=$r14, var3187=$r16, var3324=$r17, var797=$r18}
; {java.lang.reflect.Field=var1551, r0=var255, java.lang.Object=var2559, r5=var2496, $i0=var2091, java.lang.reflect.Modifier=var3298, $z0=var1637, java.lang.IllegalStateException=var1025, $r8=var303, $r9=var2678, $r10=var448, $r11=var3308, $r12=var3448, $r13=var2849, $r15=var2451, $r14=var391, $r16=var3187, $r17=var3324, $r18=var797}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Field;	r5 := @parameter1: java.lang.Object;	$i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	$r8 = new java.lang.IllegalStateException;	$r9 = newarray (java.lang.Object)[1];	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>();	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r14 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r9[0] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Cannot set value to a final field \'%s\'.", $r9);	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18);	throw $r8
;block_num 2
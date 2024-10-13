(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2130 0)
(declare-sort var2336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2336_identityHashCode/1096208673 (var2130) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2130) ClassObject)
(declare-fun append/-1031950772 (String var2130) String)
(declare-fun cast-from-ClassObject-to-var2130 (ClassObject) var2130)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2130 var2130)
(declare-const var2708 var2130) ; Statement: r8 := @parameter0: java.lang.Object 
(assert (not (= var2708 null-var2130)))
(declare-const var3171 var2130) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3171 null-var2130)))
 ; Statement: if r0 != null goto i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0) 
(assert (not (= var3171 null-var2130))) ; Cond: r0 != null 
(define-const var1935 Int (var2336_identityHashCode/1096208673 var3171)) ; Statement: i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0) 
(define-const var3229 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3229)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3229!1 String)
(assert (= var3229!1 ""))
(assert true)
(define-const var3551 ClassObject (getClass/1258963082 var3171)) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3735 String (append/-1031950772 var3229!1 (cast-from-ClassObject-to-var2130 var3551))) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3229!2 String)
(assert (str.prefixof var3229!1 var3229!2))
(assert true)
(define-const var696 String (append/672562846 var3735 "@")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var3735!1 String)
(assert (= var3735!1 (str.++ var3735 "@")))
(define-const var970 String (Int_toHexString/1865784998 var1935)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(assert true)
(define-const var20 String (append/672562846 var696 var970)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var696!1 String)
(assert (= var696!1 (str.++ var696 var970)))
(assert true)
(define-const var1707 String (toString/-2075883882 var20)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2336_identityHashCode/1096208673=([java.lang.Object], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2130=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2130=java.lang.Object, var2708=r8, var3171=r0, var2336=java.lang.System, var1935=i0, var3229=$r1, var3551=$r2, var3735=$r3, var696=$r5, var970=$r4, var20=$r6, var1707=$r7}
; {java.lang.Object=var2130, r8=var2708, r0=var3171, java.lang.System=var2336, i0=var1935, $r1=var3229, $r2=var3551, $r3=var3735, $r5=var696, $r4=var970, $r6=var20, $r7=var1707}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0);	i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r4 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2
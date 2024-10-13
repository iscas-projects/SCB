(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1956 0)
(declare-sort var2912 0)
(declare-sort var3002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2912-init () var2912)
(declare-fun getLength-Arr-var1956-1 ((Array Int var1956)) Int)
(declare-fun cast-from-Int-to-Float64 (Int) Float64)
(declare-fun cast-from-Float64-to-Int (Float64) Int)
(declare-fun <init>/613807010 (var2912 Int) void)
(declare-fun cast-from-var1956-to-__Array__Int__var1956__ (var1956) (Array Int var1956))
(declare-fun var3002-init () var3002)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1956) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3002 String) void)
(declare-const null-__Array__Int__var1956__ (Array Int var1956))
(declare-const var46 (Array Int var1956)) ; Statement: r0 := @parameter0: java.lang.Object[] 
(assert (not (= var46 null-__Array__Int__var1956__)))
 ; Statement: if r0 != null goto $r1 = new java.util.HashMap 
(assert (not (= var46 null-__Array__Int__var1956__))) ; Cond: r0 != null 
(define-const var2542 var2912 var2912-init) ; Statement: $r1 = new java.util.HashMap 
(define-const var3554 Int (getLength-Arr-var1956-1 var46)) ; Statement: $i0 = lengthof r0 
(define-const var1948 Float64 (cast-from-Int-to-Float64 var3554)) ; Statement: $d0 = (double) $i0 
(define-const var2230 Float64 (fp.mul roundNearestTiesToEven var1948 ((_ to_fp 11 53) #x3ff8000000000000))) ; Statement: $d1 = $d0 * 1.5 
(define-const var2424 Int (cast-from-Float64-to-Int var2230)) ; Statement: $i1 = (int) $d1 
(assert true)
;(assert (<init>/613807010 var2542 var2424)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>(int)>($i1) 

(declare-const var2542!1 var2912)
(declare-const var2424!1 Int)
(define-const var126 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var1060 Int (getLength-Arr-var1956-1 var46)) ; Statement: $i2 = lengthof r0 
 ; Statement: if i4 >= $i2 goto return $r1 
(assert (not (>= var126 var1060))) ; Negate: Cond: i4 >= $i2  
(define-const var3200 var1956 (select var46 var126)) ; Statement: r2 = r0[i4] 
(define-const var3483 Bool false) ; Statement: $z0 = r2 instanceof java.util.Map$Entry 
 ; Statement: if $z0 == 0 goto $z1 = r2 instanceof java.lang.Object[] 
(assert (= (ite var3483 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3712 Bool false) ; Statement: $z1 = r2 instanceof java.lang.Object[] 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.IllegalArgumentException 
(assert (not (= (ite var3712 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var64 (Array Int var1956) (cast-from-var1956-to-__Array__Int__var1956__ var3200)) ; Statement: r24 = (java.lang.Object[]) r2 
(define-const var1155 Int (getLength-Arr-var1956-1 var64)) ; Statement: $i3 = lengthof r24 
 ; Statement: if $i3 >= 2 goto $r12 = r24[0] 
(assert (not (>= var1155 2))) ; Negate: Cond: $i3 >= 2  
(define-const var2210 var3002 var3002-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var2763 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2763)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2763!1 String)
(assert (= var2763!1 ""))
(assert true)
(define-const var734 String (append/672562846 var2763!1 "Array element ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array element ") 
(declare-const var2763!2 String)
(assert (= var2763!2 (str.++ var2763!1 "Array element ")))
(assert true)
(define-const var1081 String (append/-1001720160 var734 var126)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var734!1 String)
(assert (str.prefixof var734 var734!1))
(assert true)
(define-const var3869 String (append/672562846 var1081 ", \u0027")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", \'") 
(declare-const var1081!1 String)
(assert (= var1081!1 (str.++ var1081 ", \u0027")))
(assert true)
(define-const var1576 String (append/-1031950772 var3869 var3200)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3869!1 String)
(assert (str.prefixof var3869 var3869!1))
(assert true)
(define-const var2662 String (append/672562846 var1576 "\u0027, has a length less than 2")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', has a length less than 2") 
(declare-const var1576!1 String)
(assert (= var1576!1 (str.++ var1576 "\u0027, has a length less than 2")))
(assert true)
(define-const var669 String (toString/-2075883882 var2662)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2210 var669)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20) 

(declare-const var2210!1 var3002)
(declare-const var669!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2912-init=([], java.util.HashMap), getLength-Arr-var1956-1=([java.lang.Object[]], int), cast-from-Int-to-Float64=([int], double), cast-from-Float64-to-Int=([double], int), <init>/613807010=([java.util.HashMap, int], void), cast-from-var1956-to-__Array__Int__var1956__=([java.lang.Object], java.lang.Object[]), var3002-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1956=java.lang.Object, var46=r0, var2912=java.util.HashMap, var2542=$r1, var3554=$i0, var1948=$d0, var2230=$d1, var2424=$i1, var126=i4, var1060=$i2, var3200=r2, var3483=$z0, var3712=$z1, var64=r24, var1155=$i3, var3002=java.lang.IllegalArgumentException, var2210=$r13, var2763=$r14, var734=$r15, var1081=$r16, var3869=$r17, var1576=$r18, var2662=$r19, var669=$r20}
; {java.lang.Object=var1956, r0=var46, java.util.HashMap=var2912, $r1=var2542, $i0=var3554, $d0=var1948, $d1=var2230, $i1=var2424, i4=var126, $i2=var1060, r2=var3200, $z0=var3483, $z1=var3712, r24=var64, $i3=var1155, java.lang.IllegalArgumentException=var3002, $r13=var2210, $r14=var2763, $r15=var734, $r16=var1081, $r17=var3869, $r18=var1576, $r19=var2662, $r20=var669}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object[];	if r0 != null goto $r1 = new java.util.HashMap;	$r1 = new java.util.HashMap;	$i0 = lengthof r0;	$d0 = (double) $i0;	$d1 = $d0 * 1.5;	$i1 = (int) $d1;	specialinvoke $r1.<java.util.HashMap: void <init>(int)>($i1);	i4 = 0;	$i2 = lengthof r0;	if i4 >= $i2 goto return $r1;	r2 = r0[i4];	$z0 = r2 instanceof java.util.Map$Entry;	if $z0 == 0 goto $z1 = r2 instanceof java.lang.Object[];	$z1 = r2 instanceof java.lang.Object[];	if $z1 == 0 goto $r3 = new java.lang.IllegalArgumentException;	r24 = (java.lang.Object[]) r2;	$i3 = lengthof r24;	if $i3 >= 2 goto $r12 = r24[0];	$r13 = new java.lang.IllegalArgumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array element ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", \'");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', has a length less than 2");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20);	throw $r13
;block_num 7
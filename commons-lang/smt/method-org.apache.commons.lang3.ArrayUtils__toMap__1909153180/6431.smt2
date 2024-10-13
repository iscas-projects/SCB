(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1497 0)
(declare-sort var2313 0)
(declare-sort var997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2313-init () var2313)
(declare-fun getLength-Arr-var1497-1 ((Array Int var1497)) Int)
(declare-fun cast-from-Int-to-Float64 (Int) Float64)
(declare-fun cast-from-Float64-to-Int (Float64) Int)
(declare-fun <init>/613807010 (var2313 Int) void)
(declare-fun var997-init () var997)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1497) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var997 String) void)
(declare-const null-__Array__Int__var1497__ (Array Int var1497))
(declare-const var1621 (Array Int var1497)) ; Statement: r0 := @parameter0: java.lang.Object[] 
(assert (not (= var1621 null-__Array__Int__var1497__)))
 ; Statement: if r0 != null goto $r1 = new java.util.HashMap 
(assert (not (= var1621 null-__Array__Int__var1497__))) ; Cond: r0 != null 
(define-const var1858 var2313 var2313-init) ; Statement: $r1 = new java.util.HashMap 
(define-const var1025 Int (getLength-Arr-var1497-1 var1621)) ; Statement: $i0 = lengthof r0 
(define-const var894 Float64 (cast-from-Int-to-Float64 var1025)) ; Statement: $d0 = (double) $i0 
(define-const var3712 Float64 (fp.mul roundNearestTiesToEven var894 ((_ to_fp 11 53) #x3ff8000000000000))) ; Statement: $d1 = $d0 * 1.5 
(define-const var1135 Int (cast-from-Float64-to-Int var3712)) ; Statement: $i1 = (int) $d1 
(assert true)
;(assert (<init>/613807010 var1858 var1135)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>(int)>($i1) 

(declare-const var1858!1 var2313)
(declare-const var1135!1 Int)
(define-const var75 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var2484 Int (getLength-Arr-var1497-1 var1621)) ; Statement: $i2 = lengthof r0 
 ; Statement: if i4 >= $i2 goto return $r1 
(assert (not (>= var75 var2484))) ; Negate: Cond: i4 >= $i2  
(define-const var1256 var1497 (select var1621 var75)) ; Statement: r2 = r0[i4] 
(define-const var166 Bool false) ; Statement: $z0 = r2 instanceof java.util.Map$Entry 
 ; Statement: if $z0 == 0 goto $z1 = r2 instanceof java.lang.Object[] 
(assert (= (ite var166 1 0) 0)) ; Cond: $z0 == 0 
(define-const var871 Bool false) ; Statement: $z1 = r2 instanceof java.lang.Object[] 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.IllegalArgumentException 
(assert (= (ite var871 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3525 var997 var997-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var543 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var543)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var543!1 String)
(assert (= var543!1 ""))
(assert true)
(define-const var168 String (append/672562846 var543!1 "Array element ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array element ") 
(declare-const var543!2 String)
(assert (= var543!2 (str.++ var543!1 "Array element ")))
(assert true)
(define-const var3538 String (append/-1001720160 var168 var75)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var168!1 String)
(assert (str.prefixof var168 var168!1))
(assert true)
(define-const var250 String (append/672562846 var3538 ", \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", \'") 
(declare-const var3538!1 String)
(assert (= var3538!1 (str.++ var3538 ", \u0027")))
(assert true)
(define-const var3054 String (append/-1031950772 var250 var1256)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var250!1 String)
(assert (str.prefixof var250 var250!1))
(assert true)
(define-const var753 String (append/672562846 var3054 "\u0027, is neither of type Map.Entry nor an Array")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', is neither of type Map.Entry nor an Array") 
(declare-const var3054!1 String)
(assert (= var3054!1 (str.++ var3054 "\u0027, is neither of type Map.Entry nor an Array")))
(assert true)
(define-const var3502 String (toString/-2075883882 var753)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3525 var3502)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var3525!1 var997)
(declare-const var3502!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2313-init=([], java.util.HashMap), getLength-Arr-var1497-1=([java.lang.Object[]], int), cast-from-Int-to-Float64=([int], double), cast-from-Float64-to-Int=([double], int), <init>/613807010=([java.util.HashMap, int], void), var997-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1497=java.lang.Object, var1621=r0, var2313=java.util.HashMap, var1858=$r1, var1025=$i0, var894=$d0, var3712=$d1, var1135=$i1, var75=i4, var2484=$i2, var1256=r2, var166=$z0, var871=$z1, var997=java.lang.IllegalArgumentException, var3525=$r3, var543=$r4, var168=$r5, var3538=$r6, var250=$r7, var3054=$r8, var753=$r9, var3502=$r10}
; {java.lang.Object=var1497, r0=var1621, java.util.HashMap=var2313, $r1=var1858, $i0=var1025, $d0=var894, $d1=var3712, $i1=var1135, i4=var75, $i2=var2484, r2=var1256, $z0=var166, $z1=var871, java.lang.IllegalArgumentException=var997, $r3=var3525, $r4=var543, $r5=var168, $r6=var3538, $r7=var250, $r8=var3054, $r9=var753, $r10=var3502}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object[];	if r0 != null goto $r1 = new java.util.HashMap;	$r1 = new java.util.HashMap;	$i0 = lengthof r0;	$d0 = (double) $i0;	$d1 = $d0 * 1.5;	$i1 = (int) $d1;	specialinvoke $r1.<java.util.HashMap: void <init>(int)>($i1);	i4 = 0;	$i2 = lengthof r0;	if i4 >= $i2 goto return $r1;	r2 = r0[i4];	$z0 = r2 instanceof java.util.Map$Entry;	if $z0 == 0 goto $z1 = r2 instanceof java.lang.Object[];	$z1 = r2 instanceof java.lang.Object[];	if $z1 == 0 goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array element ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', is neither of type Map.Entry nor an Array");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 6
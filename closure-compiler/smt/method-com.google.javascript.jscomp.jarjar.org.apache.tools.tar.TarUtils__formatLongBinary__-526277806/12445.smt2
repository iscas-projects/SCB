(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2659 0)
(declare-sort var1363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2659_abs/-1279725619 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1363-init () var1363)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1363 String) void)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Bool Bool)
(declare-const var3325 Int) ; Statement: l4 := @parameter0: long 
(assert (not (= var3325 null-Int)))
(declare-const var3724 (Array Int Int)) ; Statement: r0 := @parameter1: byte[] 
(assert (not (= var3724 null-__Array__Int__Int__)))
(declare-const var3914 Int) ; Statement: i6 := @parameter2: int 
(assert (not (= var3914 null-Int)))
(declare-const var2762 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2762 null-Int)))
(declare-const var3766 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var3766 null-Bool)))
(define-const var3225 Int (- var2762 1)) ; Statement: $i1 = i0 - 1 
(define-const var1050 Int (* var3225 8)) ; Statement: i2 = $i1 * 8 
(define-const var2077 Int (* 1 (to_int (^ 2 var1050)))) ; Statement: l3 = 1L << i2 
(define-const var2771 Int (var2659_abs/-1279725619 var3325)) ; Statement: l13 = staticinvoke <java.lang.Math: long abs(long)>(l4) 
(define-const var3143 Int (ite (> var2771 var2077) 1 (ite (< var2771 var2077) (- 1) 0))) ; Statement: $b5 = l13 cmp l3 
(define-const var1698 Int (cast-from-Int-to-Int var3143)) ; Statement: $i17 = (int) $b5 
 ; Statement: if $i17 < 0 goto (branch) 
(assert (not (< var1698 0))) ; Negate: Cond: $i17 < 0  
(define-const var2423 var1363 var1363-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var1908 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1908)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1908!1 String)
(assert (= var1908!1 ""))
(assert true)
(define-const var2204 String (append/672562846 var1908!1 "Value ")) ; Statement: $r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value ") 
(declare-const var1908!2 String)
(assert (= var1908!2 (str.++ var1908!1 "Value ")))
(assert true)
(define-const var1828 String (append/-901862667 var2204 var3325)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l4) 
(declare-const var2204!1 String)
(assert (str.prefixof var2204 var2204!1))
(assert true)
(define-const var1538 String (append/672562846 var1828 " is too large for ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is too large for ") 
(declare-const var1828!1 String)
(assert (= var1828!1 (str.++ var1828 " is too large for ")))
(assert true)
(define-const var1460 String (append/-1001720160 var1538 var2762)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1538!1 String)
(assert (str.prefixof var1538 var1538!1))
(assert true)
(define-const var3909 String (append/672562846 var1460 " byte field.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" byte field.") 
(declare-const var1460!1 String)
(assert (= var1460!1 (str.++ var1460 " byte field.")))
(assert true)
(define-const var3548 String (toString/-2075883882 var3909)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2423 var3548)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2423!1 var1363)
(declare-const var3548!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2659_abs/-1279725619=([long], long), cast-from-Int-to-Int=([byte], int), var1363-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3325=l4, var3724=r0, var3914=i6, var2762=i0, var3766=z0, var3225=$i1, var1050=i2, var2077=l3, var2659=java.lang.Math, var2771=l13, var3143=$b5, var1698=$i17, var1363=java.lang.IllegalArgumentException, var2423=$r10, var1908=$r9, var2204=$r3, var1828=$r4, var1538=$r5, var1460=$r6, var3909=$r7, var3548=$r8}
; {l4=var3325, r0=var3724, i6=var3914, i0=var2762, z0=var3766, $i1=var3225, i2=var1050, l3=var2077, java.lang.Math=var2659, l13=var2771, $b5=var3143, $i17=var1698, java.lang.IllegalArgumentException=var1363, $r10=var2423, $r9=var1908, $r3=var2204, $r4=var1828, $r5=var1538, $r6=var1460, $r7=var3909, $r8=var3548}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l4 := @parameter0: long;	r0 := @parameter1: byte[];	i6 := @parameter2: int;	i0 := @parameter3: int;	z0 := @parameter4: boolean;	$i1 = i0 - 1;	i2 = $i1 * 8;	l3 = 1L << i2;	l13 = staticinvoke <java.lang.Math: long abs(long)>(l4);	$b5 = l13 cmp l3;	$i17 = (int) $b5;	if $i17 < 0 goto (branch);	$r10 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l4);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is too large for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" byte field.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r10
;block_num 2
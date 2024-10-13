(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3346-init () var3346)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3346 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var255 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var255 null-__Array__Int__Int__)))
(declare-const var20 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var20 null-Int)))
(declare-const var3361 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3361 null-Int)))
(define-const var3907 Int (getLength-Arr-Int-1 var255)) ; Statement: $i3 = lengthof r0 
(define-const var3155 Int (+ var20 var3361)) ; Statement: $i2 = i0 + i1 
 ; Statement: if $i3 >= $i2 goto return 
(assert (not (>= var3907 var3155))) ; Negate: Cond: $i3 >= $i2  
(define-const var925 var3346 var3346-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var141 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var141)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var141!1 String)
(assert (= var141!1 ""))
(assert true)
(define-const var381 String (append/672562846 var141!1 "Data only has ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Data only has ") 
(declare-const var141!2 String)
(assert (= var141!2 (str.++ var141!1 "Data only has ")))
(define-const var3342 Int (getLength-Arr-Int-1 var255)) ; Statement: $i4 = lengthof r0 
(assert true)
(define-const var3859 String (append/-1001720160 var381 var3342)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var381!1 String)
(assert (str.prefixof var381 var381!1))
(assert true)
(define-const var2289 String (append/672562846 var3859 "bytes, needed ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bytes, needed ") 
(declare-const var3859!1 String)
(assert (= var3859!1 (str.++ var3859 "bytes, needed ")))
(define-const var1157 Int (+ var20 var3361)) ; Statement: $i5 = i0 + i1 
(assert true)
(define-const var3364 String (append/-1001720160 var2289 var1157)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var2289!1 String)
(assert (str.prefixof var2289 var2289!1))
(assert true)
(define-const var2945 String (append/672562846 var3364 "bytes.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bytes.") 
(declare-const var3364!1 String)
(assert (= var3364!1 (str.++ var3364 "bytes.")))
(assert true)
(define-const var3462 String (toString/-2075883882 var2945)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var925 var3462)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var925!1 var3346)
(declare-const var3462!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), var3346-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var255=r0, var20=i0, var3361=i1, var3907=$i3, var3155=$i2, var3346=java.lang.IllegalArgumentException, var925=$r1, var141=$r2, var381=$r3, var3342=$i4, var3859=$r4, var2289=$r5, var1157=$i5, var3364=$r6, var2945=$r7, var3462=$r8}
; {r0=var255, i0=var20, i1=var3361, $i3=var3907, $i2=var3155, java.lang.IllegalArgumentException=var3346, $r1=var925, $r2=var141, $r3=var381, $i4=var3342, $r4=var3859, $r5=var2289, $i5=var1157, $r6=var3364, $r7=var2945, $r8=var3462}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$i3 = lengthof r0;	$i2 = i0 + i1;	if $i3 >= $i2 goto return;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Data only has ");	$i4 = lengthof r0;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bytes, needed ");	$i5 = i0 + i1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bytes.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2
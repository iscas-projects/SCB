(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2377 0)
(declare-sort var1996 0)
(declare-sort var1555 0)
(declare-sort var816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1996_requireNonNull/1378936425 (var1555 String) var1555)
(declare-fun cast-from-var2377-to-var1555 (var2377) var1555)
(declare-fun var816-init () var816)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1057600344 (var816 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var2377 var2377)
(declare-const var1342 (Array Int Int)) ; Statement: r5 := @parameter0: byte[] 
(assert (not (= var1342 null-__Array__Int__Int__)))
(declare-const var82 Int) ; Statement: l3 := @parameter1: long 
(assert (not (= var82 null-Int)))
(declare-const var3991 var2377) ; Statement: r0 := @parameter2: java.lang.Appendable 
(assert (not (= var3991 null-var2377)))
(declare-const var890 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var890 null-Int)))
(declare-const var2923 Int) ; Statement: i5 := @parameter4: int 
(assert (not (= var2923 null-Int)))
;(assert (var1996_requireNonNull/1378936425 (cast-from-var2377-to-var1555 var3991) "appendable")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "appendable") 

(declare-const var3991!1 var2377)
(declare-const var274 String)
 ; Statement: if i0 < 0 goto $r19 = new java.lang.ArrayIndexOutOfBoundsException 
(assert (< var890 0)) ; Cond: i0 < 0 
(define-const var136 var816 var816-init) ; Statement: $r19 = new java.lang.ArrayIndexOutOfBoundsException 
(define-const var3876 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3876)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3876!1 String)
(assert (= var3876!1 ""))
(assert true)
(define-const var2236 String (append/672562846 var3876!1 "illegal index: ")) ; Statement: $r3 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal index: ") 
(declare-const var3876!2 String)
(assert (= var3876!2 (str.++ var3876!1 "illegal index: ")))
(assert true)
(define-const var952 String (append/-1001720160 var2236 var890)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2236!1 String)
(assert (str.prefixof var2236 var2236!1))
(assert true)
(define-const var932 String (append/672562846 var952 " into array of length ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into array of length ") 
(declare-const var952!1 String)
(assert (= var952!1 (str.++ var952 " into array of length ")))
(define-const var1705 Int (getLength-Arr-Int-1 var1342)) ; Statement: $i1 = lengthof r5 
(assert true)
(define-const var2354 String (append/-1001720160 var932 var1705)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var932!1 String)
(assert (str.prefixof var932 var932!1))
(assert true)
(define-const var3982 String (toString/-2075883882 var2354)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1057600344 var136 var3982)) ; Statement: specialinvoke $r19.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r8) 

(declare-const var136!1 var816)
(declare-const var3982!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1996_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var2377-to-var1555=([java.lang.Appendable], java.lang.Object), var816-init=([], java.lang.ArrayIndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1057600344=([java.lang.ArrayIndexOutOfBoundsException, java.lang.String], void)}
; {var1342=r5, var82=l3, var2377=java.lang.Appendable, var3991=r0, var890=i0, var2923=i5, var1996=java.util.Objects, var1555=java.lang.Object, var274="appendable", var816=java.lang.ArrayIndexOutOfBoundsException, var136=$r19, var3876=$r18, var2236=$r3, var952=$r4, var932=$r6, var1705=$i1, var2354=$r7, var3982=$r8}
; {r5=var1342, l3=var82, java.lang.Appendable=var2377, r0=var3991, i0=var890, i5=var2923, java.util.Objects=var1996, java.lang.Object=var1555, "appendable"=var274, java.lang.ArrayIndexOutOfBoundsException=var816, $r19=var136, $r18=var3876, $r3=var2236, $r4=var952, $r6=var932, $i1=var1705, $r7=var2354, $r8=var3982}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @parameter0: byte[];	l3 := @parameter1: long;	r0 := @parameter2: java.lang.Appendable;	i0 := @parameter3: int;	i5 := @parameter4: int;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "appendable");	if i0 < 0 goto $r19 = new java.lang.ArrayIndexOutOfBoundsException;	$r19 = new java.lang.ArrayIndexOutOfBoundsException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal index: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into array of length ");	$i1 = lengthof r5;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.ArrayIndexOutOfBoundsException: void <init>(java.lang.String)>($r8);	throw $r19
;block_num 2
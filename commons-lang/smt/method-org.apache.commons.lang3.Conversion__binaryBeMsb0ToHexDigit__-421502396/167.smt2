(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Bool-1 ((Array Int Bool)) Int)
(declare-fun Int_compareUnsigned/-842762252 (Int Int) Int)
(declare-fun var571-init () var571)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var571 String) void)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const null-Int Int)
(declare-const var1639 (Array Int Bool)) ; Statement: r0 := @parameter0: boolean[] 
(assert (not (= var1639 null-__Array__Int__Bool__)))
(declare-const var3944 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3944 null-Int)))
(define-const var2520 Int (getLength-Arr-Bool-1 var1639)) ; Statement: $i1 = lengthof r0 
(define-const var537 Int (Int_compareUnsigned/-842762252 var3944 var2520)) ; Statement: $i2 = staticinvoke <java.lang.Integer: int compareUnsigned(int,int)>(i0, $i1) 
 ; Statement: if $i2 < 0 goto $i3 = lengthof r0 
(assert (not (< var537 0))) ; Negate: Cond: $i2 < 0  
(define-const var805 Int (getLength-Arr-Bool-1 var1639)) ; Statement: $i13 = lengthof r0 
 ; Statement: if $i13 != 0 goto $r1 = new java.lang.IndexOutOfBoundsException 
(assert (not (= var805 0))) ; Cond: $i13 != 0 
(define-const var412 var571 var571-init) ; Statement: $r1 = new java.lang.IndexOutOfBoundsException 
(define-const var3930 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3930)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3930!1 String)
(assert (= var3930!1 ""))
(assert true)
(define-const var1345 String (append/-1001720160 var3930!1 var3944)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3930!2 String)
(assert (str.prefixof var3930!1 var3930!2))
(assert true)
(define-const var654 String (append/672562846 var1345 " is not within array length ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not within array length ") 
(declare-const var1345!1 String)
(assert (= var1345!1 (str.++ var1345 " is not within array length ")))
(define-const var466 Int (getLength-Arr-Bool-1 var1639)) ; Statement: $i14 = lengthof r0 
(assert true)
(define-const var3261 String (append/-1001720160 var654 var466)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i14) 
(declare-const var654!1 String)
(assert (str.prefixof var654 var654!1))
(assert true)
(define-const var1093 String (toString/-2075883882 var3261)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var412 var1093)) ; Statement: specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r6) 

(declare-const var412!1 var571)
(declare-const var1093!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Bool-1=([boolean[]], int), Int_compareUnsigned/-842762252=([int, int], int), var571-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1639=r0, var3944=i0, var2520=$i1, var537=$i2, var805=$i13, var571=java.lang.IndexOutOfBoundsException, var412=$r1, var3930=$r2, var1345=$r3, var654=$r4, var466=$i14, var3261=$r5, var1093=$r6}
; {r0=var1639, i0=var3944, $i1=var2520, $i2=var537, $i13=var805, java.lang.IndexOutOfBoundsException=var571, $r1=var412, $r2=var3930, $r3=var1345, $r4=var654, $i14=var466, $r5=var3261, $r6=var1093}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: boolean[];	i0 := @parameter1: int;	$i1 = lengthof r0;	$i2 = staticinvoke <java.lang.Integer: int compareUnsigned(int,int)>(i0, $i1);	if $i2 < 0 goto $i3 = lengthof r0;	$i13 = lengthof r0;	if $i13 != 0 goto $r1 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.IndexOutOfBoundsException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not within array length ");	$i14 = lengthof r0;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i14);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1371 0)
(declare-sort var1991 0)
(declare-sort var3968 0)
(declare-sort var3967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1991_requireNonNull/1378936425 (var3968 String) var3968)
(declare-fun cast-from-__Array__Int__Int__-to-var3968 ((Array Int Int)) var3968)
(declare-fun var3967-init () var3967)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var3967 String) void)
(declare-const null-var1371 var1371)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var151 var1371) ; Statement: r10 := @this: org.apache.commons.io.input.CharSequenceInputStream 
(assert (not (= var151 null-var1371)))
(declare-const var159 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var159 null-__Array__Int__Int__)))
(declare-const var3657 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var3657 null-Int)))
(declare-const var2042 Int) ; Statement: i6 := @parameter2: int 
(assert (not (= var2042 null-Int)))
;(assert (var1991_requireNonNull/1378936425 (cast-from-__Array__Int__Int__-to-var3968 var159) "array")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "array") 

(declare-const var159!1 (Array Int Int))
(declare-const var1966 String)
 ; Statement: if i6 < 0 goto $r20 = new java.lang.IndexOutOfBoundsException 
(assert (< var2042 0)) ; Cond: i6 < 0 
(define-const var2568 var3967 var3967-init) ; Statement: $r20 = new java.lang.IndexOutOfBoundsException 
(define-const var2214 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2214)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2214!1 String)
(assert (= var2214!1 ""))
(assert true)
(define-const var3387 String (append/672562846 var2214!1 "Array Size=")) ; Statement: $r3 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array Size=") 
(declare-const var2214!2 String)
(assert (= var2214!2 (str.++ var2214!1 "Array Size=")))
(define-const var2890 Int (getLength-Arr-Int-1 var159!1)) ; Statement: $i0 = lengthof r0 
(assert true)
(define-const var3118 String (append/-1001720160 var3387 var2890)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3387!1 String)
(assert (str.prefixof var3387 var3387!1))
(assert true)
(define-const var3563 String (append/672562846 var3118 ", offset=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset=") 
(declare-const var3118!1 String)
(assert (= var3118!1 (str.++ var3118 ", offset=")))
(assert true)
(define-const var2340 String (append/-1001720160 var3563 var3657)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5) 
(declare-const var3563!1 String)
(assert (str.prefixof var3563 var3563!1))
(assert true)
(define-const var923 String (append/672562846 var2340 ", length=")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length=") 
(declare-const var2340!1 String)
(assert (= var2340!1 (str.++ var2340 ", length=")))
(assert true)
(define-const var922 String (append/-1001720160 var923 var2042)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var923!1 String)
(assert (str.prefixof var923 var923!1))
(assert true)
(define-const var1157 String (toString/-2075883882 var922)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var2568 var1157)) ; Statement: specialinvoke $r20.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r9) 

(declare-const var2568!1 var3967)
(declare-const var1157!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var1991_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var3968=([byte[]], java.lang.Object), var3967-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-Int-1=([byte[]], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1371=org.apache.commons.io.input.CharSequenceInputStream, var151=r10, var159=r0, var3657=i5, var2042=i6, var1991=java.util.Objects, var3968=java.lang.Object, var1966="array", var3967=java.lang.IndexOutOfBoundsException, var2568=$r20, var2214=$r19, var3387=$r3, var2890=$i0, var3118=$r4, var3563=$r5, var2340=$r6, var923=$r7, var922=$r8, var1157=$r9}
; {org.apache.commons.io.input.CharSequenceInputStream=var1371, r10=var151, r0=var159, i5=var3657, i6=var2042, java.util.Objects=var1991, java.lang.Object=var3968, "array"=var1966, java.lang.IndexOutOfBoundsException=var3967, $r20=var2568, $r19=var2214, $r3=var3387, $i0=var2890, $r4=var3118, $r5=var3563, $r6=var2340, $r7=var923, $r8=var922, $r9=var1157}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.commons.io.input.CharSequenceInputStream;	r0 := @parameter0: byte[];	i5 := @parameter1: int;	i6 := @parameter2: int;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "array");	if i6 < 0 goto $r20 = new java.lang.IndexOutOfBoundsException;	$r20 = new java.lang.IndexOutOfBoundsException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array Size=");	$i0 = lengthof r0;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset=");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length=");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r9);	throw $r20
;block_num 2
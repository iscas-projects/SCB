(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3505 0)
(declare-sort var2264 0)
(declare-sort var3017 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2264_read/200421467 (var3505 (Array Int Int) Int Int) Int)
(declare-fun var3017-init () var3017)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1131757835 (var3017 String) void)
(declare-const null-var3505 var3505)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2249 var3505) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var2249 null-var3505)))
(declare-const var626 (Array Int Int)) ; Statement: r1 := @parameter1: byte[] 
(assert (not (= var626 null-__Array__Int__Int__)))
(declare-const var1176 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1176 null-Int)))
(declare-const var3851 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3851 null-Int)))
(define-const var3440 Int (var2264_read/200421467 var2249 var626 var1176 var3851)) ; Statement: i2 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.io.InputStream,byte[],int,int)>(r0, r1, i0, i1) 
 ; Statement: if i2 == i1 goto return 
(assert (not (= var3440 var3851))) ; Negate: Cond: i2 == i1  
(define-const var2659 var3017 var3017-init) ; Statement: $r2 = new java.io.EOFException 
(define-const var1004 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1004)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1004!1 String)
(assert (= var1004!1 ""))
(assert true)
(define-const var3294 String (append/672562846 var1004!1 "Length to read: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length to read: ") 
(declare-const var1004!2 String)
(assert (= var1004!2 (str.++ var1004!1 "Length to read: ")))
(assert true)
(define-const var3889 String (append/-1001720160 var3294 var3851)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3294!1 String)
(assert (str.prefixof var3294 var3294!1))
(assert true)
(define-const var827 String (append/672562846 var3889 " actual: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual: ") 
(declare-const var3889!1 String)
(assert (= var3889!1 (str.++ var3889 " actual: ")))
(assert true)
(define-const var3727 String (append/-1001720160 var827 var3440)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var827!1 String)
(assert (str.prefixof var827 var827!1))
(assert true)
(define-const var453 String (toString/-2075883882 var3727)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1131757835 var2659 var453)) ; Statement: specialinvoke $r2.<java.io.EOFException: void <init>(java.lang.String)>($r8) 

(declare-const var2659!1 var3017)
(declare-const var453!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2264_read/200421467=([java.io.InputStream, byte[], int, int], int), var3017-init=([], java.io.EOFException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1131757835=([java.io.EOFException, java.lang.String], void)}
; {var3505=java.io.InputStream, var2249=r0, var626=r1, var1176=i0, var3851=i1, var2264=org.apache.commons.io.IOUtils, var3440=i2, var3017=java.io.EOFException, var2659=$r2, var1004=$r3, var3294=$r4, var3889=$r5, var827=$r6, var3727=$r7, var453=$r8}
; {java.io.InputStream=var3505, r0=var2249, r1=var626, i0=var1176, i1=var3851, org.apache.commons.io.IOUtils=var2264, i2=var3440, java.io.EOFException=var3017, $r2=var2659, $r3=var1004, $r4=var3294, $r5=var3889, $r6=var827, $r7=var3727, $r8=var453}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.InputStream;	r1 := @parameter1: byte[];	i0 := @parameter2: int;	i1 := @parameter3: int;	i2 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.io.InputStream,byte[],int,int)>(r0, r1, i0, i1);	if i2 == i1 goto return;	$r2 = new java.io.EOFException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length to read: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.EOFException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2
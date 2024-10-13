(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1874 0)
(declare-sort var82 0)
(declare-sort var2901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var82_read/-695534317 (var1874 (Array Int Int) Int Int) Int)
(declare-fun var2901-init () var2901)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1131757835 (var2901 String) void)
(declare-const null-var1874 var1874)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2844 var1874) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var2844 null-var1874)))
(declare-const var3074 (Array Int Int)) ; Statement: r1 := @parameter1: byte[] 
(assert (not (= var3074 null-__Array__Int__Int__)))
(declare-const var1390 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1390 null-Int)))
(declare-const var29 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var29 null-Int)))
(define-const var2735 Int (var82_read/-695534317 var2844 var3074 var1390 var29)) ; Statement: i2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams: int read(java.io.InputStream,byte[],int,int)>(r0, r1, i0, i1) 
 ; Statement: if i2 == i1 goto return 
(assert (not (= var2735 var29))) ; Negate: Cond: i2 == i1  
(define-const var3276 var2901 var2901-init) ; Statement: $r2 = new java.io.EOFException 
(define-const var649 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var649)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var649!1 String)
(assert (= var649!1 ""))
(assert true)
(define-const var291 String (append/672562846 var649!1 "reached end of stream after reading ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reached end of stream after reading ") 
(declare-const var649!2 String)
(assert (= var649!2 (str.++ var649!1 "reached end of stream after reading ")))
(assert true)
(define-const var1004 String (append/-1001720160 var291 var2735)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var291!1 String)
(assert (str.prefixof var291 var291!1))
(assert true)
(define-const var162 String (append/672562846 var1004 " bytes; ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes; ") 
(declare-const var1004!1 String)
(assert (= var1004!1 (str.++ var1004 " bytes; ")))
(assert true)
(define-const var3289 String (append/-1001720160 var162 var29)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var162!1 String)
(assert (str.prefixof var162 var162!1))
(assert true)
(define-const var1955 String (append/672562846 var3289 " bytes expected")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes expected") 
(declare-const var3289!1 String)
(assert (= var3289!1 (str.++ var3289 " bytes expected")))
(assert true)
(define-const var2375 String (toString/-2075883882 var1955)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1131757835 var3276 var2375)) ; Statement: specialinvoke $r2.<java.io.EOFException: void <init>(java.lang.String)>($r9) 

(declare-const var3276!1 var2901)
(declare-const var2375!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var82_read/-695534317=([java.io.InputStream, byte[], int, int], int), var2901-init=([], java.io.EOFException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1131757835=([java.io.EOFException, java.lang.String], void)}
; {var1874=java.io.InputStream, var2844=r0, var3074=r1, var1390=i0, var29=i1, var82=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams, var2735=i2, var2901=java.io.EOFException, var3276=$r2, var649=$r3, var291=$r4, var1004=$r5, var162=$r6, var3289=$r7, var1955=$r8, var2375=$r9}
; {java.io.InputStream=var1874, r0=var2844, r1=var3074, i0=var1390, i1=var29, com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams=var82, i2=var2735, java.io.EOFException=var2901, $r2=var3276, $r3=var649, $r4=var291, $r5=var1004, $r6=var162, $r7=var3289, $r8=var1955, $r9=var2375}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.InputStream;	r1 := @parameter1: byte[];	i0 := @parameter2: int;	i1 := @parameter3: int;	i2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams: int read(java.io.InputStream,byte[],int,int)>(r0, r1, i0, i1);	if i2 == i1 goto return;	$r2 = new java.io.EOFException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reached end of stream after reading ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes; ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes expected");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.EOFException: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2
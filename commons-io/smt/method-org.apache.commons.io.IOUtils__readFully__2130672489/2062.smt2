(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2137 0)
(declare-sort var1145 0)
(declare-sort var2524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1145_read/-655843064 (var2137 (Array Int Int) Int Int) Int)
(declare-fun var2524-init () var2524)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1131757835 (var2524 String) void)
(declare-const null-var2137 var2137)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var316 var2137) ; Statement: r0 := @parameter0: java.io.Reader 
(assert (not (= var316 null-var2137)))
(declare-const var3293 (Array Int Int)) ; Statement: r1 := @parameter1: char[] 
(assert (not (= var3293 null-__Array__Int__Int__)))
(declare-const var2875 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2875 null-Int)))
(declare-const var1606 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1606 null-Int)))
(define-const var207 Int (var1145_read/-655843064 var316 var3293 var2875 var1606)) ; Statement: i2 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.io.Reader,char[],int,int)>(r0, r1, i0, i1) 
 ; Statement: if i2 == i1 goto return 
(assert (not (= var207 var1606))) ; Negate: Cond: i2 == i1  
(define-const var2951 var2524 var2524-init) ; Statement: $r2 = new java.io.EOFException 
(define-const var3518 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3518)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3518!1 String)
(assert (= var3518!1 ""))
(assert true)
(define-const var3261 String (append/672562846 var3518!1 "Length to read: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length to read: ") 
(declare-const var3518!2 String)
(assert (= var3518!2 (str.++ var3518!1 "Length to read: ")))
(assert true)
(define-const var1040 String (append/-1001720160 var3261 var1606)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3261!1 String)
(assert (str.prefixof var3261 var3261!1))
(assert true)
(define-const var2314 String (append/672562846 var1040 " actual: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual: ") 
(declare-const var1040!1 String)
(assert (= var1040!1 (str.++ var1040 " actual: ")))
(assert true)
(define-const var1473 String (append/-1001720160 var2314 var207)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2314!1 String)
(assert (str.prefixof var2314 var2314!1))
(assert true)
(define-const var515 String (toString/-2075883882 var1473)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1131757835 var2951 var515)) ; Statement: specialinvoke $r2.<java.io.EOFException: void <init>(java.lang.String)>($r8) 

(declare-const var2951!1 var2524)
(declare-const var515!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1145_read/-655843064=([java.io.Reader, char[], int, int], int), var2524-init=([], java.io.EOFException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1131757835=([java.io.EOFException, java.lang.String], void)}
; {var2137=java.io.Reader, var316=r0, var3293=r1, var2875=i0, var1606=i1, var1145=org.apache.commons.io.IOUtils, var207=i2, var2524=java.io.EOFException, var2951=$r2, var3518=$r3, var3261=$r4, var1040=$r5, var2314=$r6, var1473=$r7, var515=$r8}
; {java.io.Reader=var2137, r0=var316, r1=var3293, i0=var2875, i1=var1606, org.apache.commons.io.IOUtils=var1145, i2=var207, java.io.EOFException=var2524, $r2=var2951, $r3=var3518, $r4=var3261, $r5=var1040, $r6=var2314, $r7=var1473, $r8=var515}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.Reader;	r1 := @parameter1: char[];	i0 := @parameter2: int;	i1 := @parameter3: int;	i2 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.io.Reader,char[],int,int)>(r0, r1, i0, i1);	if i2 == i1 goto return;	$r2 = new java.io.EOFException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length to read: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.EOFException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2
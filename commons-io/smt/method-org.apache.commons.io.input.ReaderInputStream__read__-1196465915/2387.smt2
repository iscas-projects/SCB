(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2978 0)
(declare-sort var1001 0)
(declare-sort var850 0)
(declare-sort var2283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1001_requireNonNull/1378936425 (var850 String) var850)
(declare-fun cast-from-__Array__Int__Int__-to-var850 ((Array Int Int)) var850)
(declare-fun var2283-init () var2283)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var2283 String) void)
(declare-const null-var2978 var2978)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1341 var2978) ; Statement: r1 := @this: org.apache.commons.io.input.ReaderInputStream 
(assert (not (= var1341 null-var2978)))
(declare-const var1962 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1962 null-__Array__Int__Int__)))
(declare-const var1354 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var1354 null-Int)))
(declare-const var467 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var467 null-Int)))
;(assert (var1001_requireNonNull/1378936425 (cast-from-__Array__Int__Int__-to-var850 var1962) "array")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "array") 

(declare-const var1962!1 (Array Int Int))
(declare-const var3452 String)
 ; Statement: if i5 < 0 goto $r15 = new java.lang.IndexOutOfBoundsException 
(assert (< var467 0)) ; Cond: i5 < 0 
(define-const var2078 var2283 var2283-init) ; Statement: $r15 = new java.lang.IndexOutOfBoundsException 
(define-const var936 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var936)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var936!1 String)
(assert (= var936!1 ""))
(assert true)
(define-const var1126 String (append/672562846 var936!1 "Array size=")) ; Statement: $r7 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array size=") 
(declare-const var936!2 String)
(assert (= var936!2 (str.++ var936!1 "Array size=")))
(define-const var3199 Int (getLength-Arr-Int-1 var1962!1)) ; Statement: $i6 = lengthof r0 
(assert true)
(define-const var323 String (append/-1001720160 var1126 var3199)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var1126!1 String)
(assert (str.prefixof var1126 var1126!1))
(assert true)
(define-const var1339 String (append/672562846 var323 ", offset=")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset=") 
(declare-const var323!1 String)
(assert (= var323!1 (str.++ var323 ", offset=")))
(assert true)
(define-const var1885 String (append/-1001720160 var1339 var1354)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var1339!1 String)
(assert (str.prefixof var1339 var1339!1))
(assert true)
(define-const var536 String (append/672562846 var1885 ", length=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length=") 
(declare-const var1885!1 String)
(assert (= var1885!1 (str.++ var1885 ", length=")))
(assert true)
(define-const var749 String (append/-1001720160 var536 var467)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5) 
(declare-const var536!1 String)
(assert (str.prefixof var536 var536!1))
(assert true)
(define-const var1680 String (toString/-2075883882 var749)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var2078 var1680)) ; Statement: specialinvoke $r15.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r13) 

(declare-const var2078!1 var2283)
(declare-const var1680!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var1001_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var850=([byte[]], java.lang.Object), var2283-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-Int-1=([byte[]], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var2978=org.apache.commons.io.input.ReaderInputStream, var1341=r1, var1962=r0, var1354=i4, var467=i5, var1001=java.util.Objects, var850=java.lang.Object, var3452="array", var2283=java.lang.IndexOutOfBoundsException, var2078=$r15, var936=$r14, var1126=$r7, var3199=$i6, var323=$r8, var1339=$r9, var1885=$r10, var536=$r11, var749=$r12, var1680=$r13}
; {org.apache.commons.io.input.ReaderInputStream=var2978, r1=var1341, r0=var1962, i4=var1354, i5=var467, java.util.Objects=var1001, java.lang.Object=var850, "array"=var3452, java.lang.IndexOutOfBoundsException=var2283, $r15=var2078, $r14=var936, $r7=var1126, $i6=var3199, $r8=var323, $r9=var1339, $r10=var1885, $r11=var536, $r12=var749, $r13=var1680}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.input.ReaderInputStream;	r0 := @parameter0: byte[];	i4 := @parameter1: int;	i5 := @parameter2: int;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "array");	if i5 < 0 goto $r15 = new java.lang.IndexOutOfBoundsException;	$r15 = new java.lang.IndexOutOfBoundsException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array size=");	$i6 = lengthof r0;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset=");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length=");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r13);	throw $r15
;block_num 2
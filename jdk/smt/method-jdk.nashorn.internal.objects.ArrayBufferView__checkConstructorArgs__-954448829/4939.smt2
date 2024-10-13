(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2888-init () var2888)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2888 String) void)
(declare-const null-Int Int)
(declare-const var3136 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var3136 null-Int)))
(declare-const var2263 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2263 null-Int)))
(declare-const var945 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var945 null-Int)))
(declare-const var1225 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1225 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.RuntimeException 
(assert (< var945 0)) ; Cond: i0 < 0 
(define-const var3804 var2888 var2888-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var637 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var637)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var637!1 String)
(assert (= var637!1 ""))
(assert true)
(define-const var3010 String (append/672562846 var637!1 "byteOffset or length must not be negative, byteOffset=")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteOffset or length must not be negative, byteOffset=") 
(declare-const var637!2 String)
(assert (= var637!2 (str.++ var637!1 "byteOffset or length must not be negative, byteOffset=")))
(assert true)
(define-const var1017 String (append/-1001720160 var3010 var945)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3010!1 String)
(assert (str.prefixof var3010 var3010!1))
(assert true)
(define-const var3917 String (append/672562846 var1017 ", elementLength=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", elementLength=") 
(declare-const var1017!1 String)
(assert (= var1017!1 (str.++ var1017 ", elementLength=")))
(assert true)
(define-const var2326 String (append/-1001720160 var3917 var1225)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3917!1 String)
(assert (str.prefixof var3917 var3917!1))
(assert true)
(define-const var1991 String (append/672562846 var2326 ", bytesPerElement=")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", bytesPerElement=") 
(declare-const var2326!1 String)
(assert (= var2326!1 (str.++ var2326 ", bytesPerElement=")))
(assert true)
(define-const var3645 String (append/-1001720160 var1991 var2263)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var1991!1 String)
(assert (str.prefixof var1991 var1991!1))
(assert true)
(define-const var2501 String (toString/-2075883882 var3645)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3804 var2501)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8) 

(declare-const var3804!1 var2888)
(declare-const var2501!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2888-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3136=i4, var2263=i2, var945=i0, var1225=i1, var2888=java.lang.RuntimeException, var3804=$r0, var637=$r1, var3010=$r2, var1017=$r3, var3917=$r4, var2326=$r5, var1991=$r6, var3645=$r7, var2501=$r8}
; {i4=var3136, i2=var2263, i0=var945, i1=var1225, java.lang.RuntimeException=var2888, $r0=var3804, $r1=var637, $r2=var3010, $r3=var1017, $r4=var3917, $r5=var2326, $r6=var1991, $r7=var3645, $r8=var2501}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i4 := @parameter0: int;	i2 := @parameter1: int;	i0 := @parameter2: int;	i1 := @parameter3: int;	if i0 < 0 goto $r0 = new java.lang.RuntimeException;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteOffset or length must not be negative, byteOffset=");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", elementLength=");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", bytesPerElement=");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 2
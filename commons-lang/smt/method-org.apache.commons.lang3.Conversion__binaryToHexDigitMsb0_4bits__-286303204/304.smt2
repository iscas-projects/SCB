(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Bool-1 ((Array Int Bool)) Int)
(declare-fun var2769-init () var2769)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2769 String) void)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const null-Int Int)
(declare-const var83 (Array Int Bool)) ; Statement: r0 := @parameter0: boolean[] 
(assert (not (= var83 null-__Array__Int__Bool__)))
(declare-const var2182 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2182 null-Int)))
(define-const var626 Int (getLength-Arr-Bool-1 var83)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 8 goto $i2 = lengthof r0 
(assert (not (<= var626 8))) ; Negate: Cond: $i0 <= 8  
(define-const var3994 var2769 var2769-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var881 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var881)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var881!1 String)
(assert (= var881!1 ""))
(assert true)
(define-const var1569 String (append/672562846 var881!1 "src.length>8: src.length=")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("src.length>8: src.length=") 
(declare-const var881!2 String)
(assert (= var881!2 (str.++ var881!1 "src.length>8: src.length=")))
(define-const var1229 Int (getLength-Arr-Bool-1 var83)) ; Statement: $i12 = lengthof r0 
(assert true)
(define-const var2412 String (append/-1001720160 var1569 var1229)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12) 
(declare-const var1569!1 String)
(assert (str.prefixof var1569 var1569!1))
(assert true)
(define-const var1859 String (toString/-2075883882 var2412)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3994 var1859)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var3994!1 var2769)
(declare-const var1859!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Bool-1=([boolean[]], int), var2769-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var83=r0, var2182=i1, var626=$i0, var2769=java.lang.IllegalArgumentException, var3994=$r8, var881=$r9, var1569=$r10, var1229=$i12, var2412=$r11, var1859=$r12}
; {r0=var83, i1=var2182, $i0=var626, java.lang.IllegalArgumentException=var2769, $r8=var3994, $r9=var881, $r10=var1569, $i12=var1229, $r11=var2412, $r12=var1859}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: boolean[];	i1 := @parameter1: int;	$i0 = lengthof r0;	if $i0 <= 8 goto $i2 = lengthof r0;	$r8 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("src.length>8: src.length=");	$i12 = lengthof r0;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r8
;block_num 2
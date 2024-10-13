(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2833 0)
(declare-sort var2696 0)
(declare-sort var2487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2696_skip/1212734288 (var2833 Int) Int)
(declare-fun var2487-init () var2487)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1131757835 (var2487 String) void)
(declare-const null-var2833 var2833)
(declare-const null-Int Int)
(declare-const var3810 var2833) ; Statement: r0 := @parameter0: java.io.Reader 
(assert (not (= var3810 null-var2833)))
(declare-const var1756 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1756 null-Int)))
(define-const var3973 Int (var2696_skip/1212734288 var3810 var1756)) ; Statement: l1 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.io.Reader,long)>(r0, l0) 
(define-const var1720 Int (ite (> var3973 var1756) 1 (ite (< var3973 var1756) (- 1) 0))) ; Statement: $b2 = l1 cmp l0 
 ; Statement: if $b2 == 0 goto return 
(assert (not (= var1720 0))) ; Negate: Cond: $b2 == 0  
(define-const var3818 var2487 var2487-init) ; Statement: $r1 = new java.io.EOFException 
(define-const var1542 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1542)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1542!1 String)
(assert (= var1542!1 ""))
(assert true)
(define-const var3526 String (append/672562846 var1542!1 "Chars to skip: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Chars to skip: ") 
(declare-const var1542!2 String)
(assert (= var1542!2 (str.++ var1542!1 "Chars to skip: ")))
(assert true)
(define-const var3694 String (append/-901862667 var3526 var1756)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var3526!1 String)
(assert (str.prefixof var3526 var3526!1))
(assert true)
(define-const var3704 String (append/672562846 var3694 " actual: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual: ") 
(declare-const var3694!1 String)
(assert (= var3694!1 (str.++ var3694 " actual: ")))
(assert true)
(define-const var1111 String (append/-901862667 var3704 var3973)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1) 
(declare-const var3704!1 String)
(assert (str.prefixof var3704 var3704!1))
(assert true)
(define-const var2943 String (toString/-2075883882 var1111)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1131757835 var3818 var2943)) ; Statement: specialinvoke $r1.<java.io.EOFException: void <init>(java.lang.String)>($r7) 

(declare-const var3818!1 var2487)
(declare-const var2943!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2696_skip/1212734288=([java.io.Reader, long], long), var2487-init=([], java.io.EOFException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1131757835=([java.io.EOFException, java.lang.String], void)}
; {var2833=java.io.Reader, var3810=r0, var1756=l0, var2696=org.apache.commons.io.IOUtils, var3973=l1, var1720=$b2, var2487=java.io.EOFException, var3818=$r1, var1542=$r2, var3526=$r3, var3694=$r4, var3704=$r5, var1111=$r6, var2943=$r7}
; {java.io.Reader=var2833, r0=var3810, l0=var1756, org.apache.commons.io.IOUtils=var2696, l1=var3973, $b2=var1720, java.io.EOFException=var2487, $r1=var3818, $r2=var1542, $r3=var3526, $r4=var3694, $r5=var3704, $r6=var1111, $r7=var2943}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.Reader;	l0 := @parameter1: long;	l1 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.io.Reader,long)>(r0, l0);	$b2 = l1 cmp l0;	if $b2 == 0 goto return;	$r1 = new java.io.EOFException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Chars to skip: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.io.EOFException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 2
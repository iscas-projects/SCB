(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var855 0)
(declare-sort var389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var389-init () var389)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var389 String) void)
(declare-const null-var855 var855)
(declare-const null-Int Int)
(declare-const var2521 var855) ; Statement: r0 := @parameter0: java.nio.channels.ReadableByteChannel 
(assert (not (= var2521 null-var855)))
(declare-const var168 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var168 null-Int)))
(define-const var756 Int (ite (> var168 0) 1 (ite (< var168 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var913 Int (cast-from-Int-to-Int var756)) ; Statement: $i4 = (int) $b1 
 ; Statement: if $i4 >= 0 goto l2 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.nio.channels.ReadableByteChannel,long)>(r0, l0) 
(assert (not (>= var913 0))) ; Negate: Cond: $i4 >= 0  
(define-const var3635 var389 var389-init) ; Statement: $r14 = new java.lang.IllegalArgumentException 
(define-const var677 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var677)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var677!1 String)
(assert (= var677!1 ""))
(assert true)
(define-const var1692 String (append/672562846 var677!1 "Bytes to skip must not be negative: ")) ; Statement: $r10 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes to skip must not be negative: ") 
(declare-const var677!2 String)
(assert (= var677!2 (str.++ var677!1 "Bytes to skip must not be negative: ")))
(assert true)
(define-const var465 String (append/-901862667 var1692 var168)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1692!1 String)
(assert (str.prefixof var1692 var1692!1))
(assert true)
(define-const var3932 String (toString/-2075883882 var465)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3635 var3932)) ; Statement: specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var3635!1 var389)
(declare-const var3932!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var389-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var855=java.nio.channels.ReadableByteChannel, var2521=r0, var168=l0, var756=$b1, var913=$i4, var389=java.lang.IllegalArgumentException, var3635=$r14, var677=$r13, var1692=$r10, var465=$r11, var3932=$r12}
; {java.nio.channels.ReadableByteChannel=var855, r0=var2521, l0=var168, $b1=var756, $i4=var913, java.lang.IllegalArgumentException=var389, $r14=var3635, $r13=var677, $r10=var1692, $r11=var465, $r12=var3932}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.nio.channels.ReadableByteChannel;	l0 := @parameter1: long;	$b1 = l0 cmp 0L;	$i4 = (int) $b1;	if $i4 >= 0 goto l2 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.nio.channels.ReadableByteChannel,long)>(r0, l0);	$r14 = new java.lang.IllegalArgumentException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes to skip must not be negative: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r14
;block_num 2
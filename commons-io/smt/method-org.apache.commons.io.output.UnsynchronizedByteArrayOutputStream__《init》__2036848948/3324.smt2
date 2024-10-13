(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1749 0)
(declare-sort var1499 0)
(declare-sort var3592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1688704720 (var1499) void)
(declare-fun cast-from-var1749-to-var1499 (var1749) var1499)
(declare-fun var3592-init () var3592)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3592 String) void)
(declare-const null-var1749 var1749)
(declare-const null-Int Int)
(declare-const var3864 var1749) ; Statement: r0 := @this: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream 
(assert (not (= var3864 null-var1749)))
(declare-const var911 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var911 null-Int)))
(assert true)
;(assert (<init>/1688704720 (cast-from-var1749-to-var1499 var3864))) ; Statement: specialinvoke r0.<org.apache.commons.io.output.AbstractByteArrayOutputStream: void <init>()>() 

(declare-const var3864!1 var1749)
 ; Statement: if i0 >= 0 goto virtualinvoke r0.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: void needNewBuffer(int)>(i0) 
(assert (not (>= var911 0))) ; Negate: Cond: i0 >= 0  
(define-const var3923 var3592 var3592-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var165 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var165)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var165!1 String)
(assert (= var165!1 ""))
(assert true)
(define-const var376 String (append/672562846 var165!1 "Negative initial size: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Negative initial size: ") 
(declare-const var165!2 String)
(assert (= var165!2 (str.++ var165!1 "Negative initial size: ")))
(assert true)
(define-const var739 String (append/-1001720160 var376 var911)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var376!1 String)
(assert (str.prefixof var376 var376!1))
(assert true)
(define-const var3159 String (toString/-2075883882 var739)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3923 var3159)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3923!1 var3592)
(declare-const var3159!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1688704720=([org.apache.commons.io.output.AbstractByteArrayOutputStream], void), cast-from-var1749-to-var1499=([org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream], org.apache.commons.io.output.AbstractByteArrayOutputStream), var3592-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1749=org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream, var3864=r0, var911=i0, var1499=org.apache.commons.io.output.AbstractByteArrayOutputStream, var3592=java.lang.IllegalArgumentException, var3923=$r1, var165=$r2, var376=$r3, var739=$r4, var3159=$r5}
; {org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream=var1749, r0=var3864, i0=var911, org.apache.commons.io.output.AbstractByteArrayOutputStream=var1499, java.lang.IllegalArgumentException=var3592, $r1=var3923, $r2=var165, $r3=var376, $r4=var739, $r5=var3159}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;	i0 := @parameter0: int;	specialinvoke r0.<org.apache.commons.io.output.AbstractByteArrayOutputStream: void <init>()>();	if i0 >= 0 goto virtualinvoke r0.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: void needNewBuffer(int)>(i0);	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Negative initial size: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2
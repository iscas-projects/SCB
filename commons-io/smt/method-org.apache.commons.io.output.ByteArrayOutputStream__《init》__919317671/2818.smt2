(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1192 0)
(declare-sort var421 0)
(declare-sort var985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1688704720 (var421) void)
(declare-fun cast-from-var1192-to-var421 (var1192) var421)
(declare-fun var985-init () var985)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var985 String) void)
(declare-const null-var1192 var1192)
(declare-const null-Int Int)
(declare-const var2421 var1192) ; Statement: r0 := @this: org.apache.commons.io.output.ByteArrayOutputStream 
(assert (not (= var2421 null-var1192)))
(declare-const var3047 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3047 null-Int)))
(assert true)
;(assert (<init>/1688704720 (cast-from-var1192-to-var421 var2421))) ; Statement: specialinvoke r0.<org.apache.commons.io.output.AbstractByteArrayOutputStream: void <init>()>() 

(declare-const var2421!1 var1192)
 ; Statement: if i0 >= 0 goto entermonitor r0 
(assert (not (>= var3047 0))) ; Negate: Cond: i0 >= 0  
(define-const var2225 var985 var985-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2207 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2207)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2207!1 String)
(assert (= var2207!1 ""))
(assert true)
(define-const var1819 String (append/672562846 var2207!1 "Negative initial size: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Negative initial size: ") 
(declare-const var2207!2 String)
(assert (= var2207!2 (str.++ var2207!1 "Negative initial size: ")))
(assert true)
(define-const var1846 String (append/-1001720160 var1819 var3047)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1819!1 String)
(assert (str.prefixof var1819 var1819!1))
(assert true)
(define-const var3007 String (toString/-2075883882 var1846)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2225 var3007)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2225!1 var985)
(declare-const var3007!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1688704720=([org.apache.commons.io.output.AbstractByteArrayOutputStream], void), cast-from-var1192-to-var421=([org.apache.commons.io.output.ByteArrayOutputStream], org.apache.commons.io.output.AbstractByteArrayOutputStream), var985-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1192=org.apache.commons.io.output.ByteArrayOutputStream, var2421=r0, var3047=i0, var421=org.apache.commons.io.output.AbstractByteArrayOutputStream, var985=java.lang.IllegalArgumentException, var2225=$r1, var2207=$r2, var1819=$r3, var1846=$r4, var3007=$r5}
; {org.apache.commons.io.output.ByteArrayOutputStream=var1192, r0=var2421, i0=var3047, org.apache.commons.io.output.AbstractByteArrayOutputStream=var421, java.lang.IllegalArgumentException=var985, $r1=var2225, $r2=var2207, $r3=var1819, $r4=var1846, $r5=var3007}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.output.ByteArrayOutputStream;	i0 := @parameter0: int;	specialinvoke r0.<org.apache.commons.io.output.AbstractByteArrayOutputStream: void <init>()>();	if i0 >= 0 goto entermonitor r0;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Negative initial size: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2
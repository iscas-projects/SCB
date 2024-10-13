(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2789 0)
(declare-sort var2120 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2120-init () var2120)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2120 String) void)
(declare-const null-var2789 var2789)
(declare-const null-Int Int)
(declare-const var168 var2789) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var168 null-var2789)))
(declare-const var1056 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1056 null-Int)))
 ; Statement: if i0 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = i0 
(assert (not (>= var1056 0))) ; Negate: Cond: i0 >= 0  
(define-const var1704 var2120 var2120-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2703 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2703)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2703!1 String)
(assert (= var2703!1 ""))
(assert true)
(define-const var3622 String (append/672562846 var2703!1 "Minor device number is out of range: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Minor device number is out of range: ") 
(declare-const var2703!2 String)
(assert (= var2703!2 (str.++ var2703!1 "Minor device number is out of range: ")))
(assert true)
(define-const var1310 String (append/-1001720160 var3622 var1056)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3622!1 String)
(assert (str.prefixof var3622 var3622!1))
(assert true)
(define-const var264 String (toString/-2075883882 var1310)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1704 var264)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1704!1 var2120)
(declare-const var264!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2120-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2789=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var168=r0, var1056=i0, var2120=java.lang.IllegalArgumentException, var1704=$r1, var2703=$r2, var3622=$r3, var1310=$r4, var264=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var2789, r0=var168, i0=var1056, java.lang.IllegalArgumentException=var2120, $r1=var1704, $r2=var2703, $r3=var3622, $r4=var1310, $r5=var264}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	i0 := @parameter0: int;	if i0 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = i0;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Minor device number is out of range: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2
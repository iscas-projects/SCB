(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3791 0)
(declare-sort var357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var357-init () var357)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var357 String) void)
(declare-const null-var3791 var3791)
(declare-const null-Int Int)
(declare-const var1288 var3791) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.AllocatedBuffer$2 
(assert (not (= var1288 null-var3791)))
(declare-const var1305 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1305 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException 
(assert (< var1305 0)) ; Cond: i0 < 0 
(define-const var396 var357 var357-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var215 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var215)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var215!1 String)
(assert (= var215!1 ""))
(assert true)
(define-const var1068 String (append/672562846 var215!1 "Invalid position: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid position: ") 
(declare-const var215!2 String)
(assert (= var215!2 (str.++ var215!1 "Invalid position: ")))
(assert true)
(define-const var3646 String (append/-1001720160 var1068 var1305)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1068!1 String)
(assert (str.prefixof var1068 var1068!1))
(assert true)
(define-const var3683 String (toString/-2075883882 var3646)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var396 var3683)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var396!1 var357)
(declare-const var3683!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var357-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3791=com.google.javascript.jscomp.jarjar.com.google.protobuf.AllocatedBuffer$2, var1288=r5, var1305=i0, var357=java.lang.IllegalArgumentException, var396=$r0, var215=$r1, var1068=$r2, var3646=$r3, var3683=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.AllocatedBuffer$2=var3791, r5=var1288, i0=var1305, java.lang.IllegalArgumentException=var357, $r0=var396, $r1=var215, $r2=var1068, $r3=var3646, $r4=var3683}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.AllocatedBuffer$2;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid position: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2
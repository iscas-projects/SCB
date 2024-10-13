(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1148 0)
(declare-sort var3621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3621-init () var3621)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var3621 String) void)
(declare-const null-var1148 var1148)
(declare-const null-Int Int)
(declare-const var246 var1148) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var246 null-var1148)))
(declare-const var3952 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3952 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IndexOutOfBoundsException 
(assert (< var3952 0)) ; Cond: i0 < 0 
(define-const var455 var3621 var3621-init) ; Statement: $r0 = new java.lang.IndexOutOfBoundsException 
(define-const var2240 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2240)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2240!1 String)
(assert (= var2240!1 ""))
(assert true)
(define-const var2661 String (append/672562846 var2240!1 "Group index out of bounds: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Group index out of bounds: ") 
(declare-const var2240!2 String)
(assert (= var2240!2 (str.++ var2240!1 "Group index out of bounds: ")))
(assert true)
(define-const var1452 String (append/-1001720160 var2661 var3952)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2661!1 String)
(assert (str.prefixof var2661 var2661!1))
(assert true)
(define-const var1011 String (toString/-2075883882 var1452)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var455 var1011)) ; Statement: specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r4) 

(declare-const var455!1 var3621)
(declare-const var1011!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3621-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1148=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var246=r5, var3952=i0, var3621=java.lang.IndexOutOfBoundsException, var455=$r0, var2240=$r1, var2661=$r2, var1452=$r3, var1011=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var1148, r5=var246, i0=var3952, java.lang.IndexOutOfBoundsException=var3621, $r0=var455, $r1=var2240, $r2=var2661, $r3=var1452, $r4=var1011}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.IndexOutOfBoundsException;	$r0 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Group index out of bounds: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2
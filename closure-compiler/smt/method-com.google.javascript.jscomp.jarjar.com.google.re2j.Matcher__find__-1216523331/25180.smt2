(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3226 0)
(declare-sort var60 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var60-init () var60)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var60 String) void)
(declare-const null-var3226 var3226)
(declare-const null-Int Int)
(declare-const var2446 var3226) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var2446 null-var3226)))
(declare-const var3658 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3658 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IndexOutOfBoundsException 
(assert (< var3658 0)) ; Cond: i0 < 0 
(define-const var201 var60 var60-init) ; Statement: $r0 = new java.lang.IndexOutOfBoundsException 
(define-const var3184 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3184)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3184!1 String)
(assert (= var3184!1 ""))
(assert true)
(define-const var2084 String (append/672562846 var3184!1 "start index out of bounds: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("start index out of bounds: ") 
(declare-const var3184!2 String)
(assert (= var3184!2 (str.++ var3184!1 "start index out of bounds: ")))
(assert true)
(define-const var280 String (append/-1001720160 var2084 var3658)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2084!1 String)
(assert (str.prefixof var2084 var2084!1))
(assert true)
(define-const var528 String (toString/-2075883882 var280)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var201 var528)) ; Statement: specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r4) 

(declare-const var201!1 var60)
(declare-const var528!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var60-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3226=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var2446=r5, var3658=i0, var60=java.lang.IndexOutOfBoundsException, var201=$r0, var3184=$r1, var2084=$r2, var280=$r3, var528=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var3226, r5=var2446, i0=var3658, java.lang.IndexOutOfBoundsException=var60, $r0=var201, $r1=var3184, $r2=var2084, $r3=var280, $r4=var528}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.IndexOutOfBoundsException;	$r0 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("start index out of bounds: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2
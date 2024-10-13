(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var382 0)
(declare-sort var96 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var96-init () var96)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var96 String) void)
(declare-const null-var382 var382)
(declare-const null-Int Int)
(declare-const var1456 var382) ; Statement: r0 := @this: freemarker.template.Configuration 
(assert (not (= var1456 null-var382)))
(declare-const var3202 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3202 null-Int)))
 ; Statement: if i0 >= 1 goto (branch) 
(assert (>= var3202 1)) ; Cond: i0 >= 1 
 ; Statement: if i0 <= 256 goto r0.<freemarker.template.Configuration: int tabSize> = i0 
(assert (not (<= var3202 256))) ; Negate: Cond: i0 <= 256  
(define-const var2795 var96 var96-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var3090 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3090)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3090!1 String)
(assert (= var3090!1 ""))
(assert true)
(define-const var3638 String (append/672562846 var3090!1 "\u0022tabSize\u0022 can\u0027t be more than 256, but was ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"tabSize\" can\'t be more than 256, but was ") 
(declare-const var3090!2 String)
(assert (= var3090!2 (str.++ var3090!1 "\u0022tabSize\u0022 can\u0027t be more than 256, but was ")))
(assert true)
(define-const var828 String (append/-1001720160 var3638 var3202)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3638!1 String)
(assert (str.prefixof var3638 var3638!1))
(assert true)
(define-const var1594 String (toString/-2075883882 var828)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2795 var1594)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2795!1 var96)
(declare-const var1594!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var96-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var382=freemarker.template.Configuration, var1456=r0, var3202=i0, var96=java.lang.IllegalArgumentException, var2795=$r1, var3090=$r2, var3638=$r3, var828=$r4, var1594=$r5}
; {freemarker.template.Configuration=var382, r0=var1456, i0=var3202, java.lang.IllegalArgumentException=var96, $r1=var2795, $r2=var3090, $r3=var3638, $r4=var828, $r5=var1594}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.template.Configuration;	i0 := @parameter0: int;	if i0 >= 1 goto (branch);	if i0 <= 256 goto r0.<freemarker.template.Configuration: int tabSize> = i0;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"tabSize\" can\'t be more than 256, but was ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 3
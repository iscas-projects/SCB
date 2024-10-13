(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1190 0)
(declare-sort var1054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1054-init () var1054)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1054 String) void)
(declare-const null-var1190 var1190)
(declare-const null-Int Int)
(declare-const var874 var1190) ; Statement: r8 := @this: freemarker.template.Configuration 
(assert (not (= var874 null-var1190)))
(declare-const var3004 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3004 null-Int)))
 ; Statement: if i0 != 10 goto (branch) 
(assert (not (= var3004 10))) ; Cond: i0 != 10 
 ; Statement: if i0 != 11 goto (branch) 
(assert (not (= var3004 11))) ; Cond: i0 != 11 
 ; Statement: if i0 != 12 goto $r0 = new java.lang.IllegalArgumentException 
(assert (not (= var3004 12))) ; Cond: i0 != 12 
(define-const var79 var1054 var1054-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var792 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var792)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var792!1 String)
(assert (= var792!1 ""))
(assert true)
(define-const var1617 String (append/672562846 var792!1 "Unsupported naming convention constant: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported naming convention constant: ") 
(declare-const var792!2 String)
(assert (= var792!2 (str.++ var792!1 "Unsupported naming convention constant: ")))
(assert true)
(define-const var494 String (append/-1001720160 var1617 var3004)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1617!1 String)
(assert (str.prefixof var1617 var1617!1))
(assert true)
(define-const var745 String (toString/-2075883882 var494)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var79 var745)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var79!1 var1054)
(declare-const var745!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1054-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1190=freemarker.template.Configuration, var874=r8, var3004=i0, var1054=java.lang.IllegalArgumentException, var79=$r0, var792=$r1, var1617=$r2, var494=$r3, var745=$r4}
; {freemarker.template.Configuration=var1190, r8=var874, i0=var3004, java.lang.IllegalArgumentException=var1054, $r0=var79, $r1=var792, $r2=var1617, $r3=var494, $r4=var745}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: freemarker.template.Configuration;	i0 := @parameter0: int;	if i0 != 10 goto (branch);	if i0 != 11 goto (branch);	if i0 != 12 goto $r0 = new java.lang.IllegalArgumentException;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported naming convention constant: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 4
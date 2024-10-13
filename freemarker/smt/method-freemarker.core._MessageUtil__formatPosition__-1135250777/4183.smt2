(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var2214 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2214 null-Int)))
(declare-const var8 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var8 null-Int)))
(define-const var2335 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2335)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2335!1 String)
(assert (= var2335!1 ""))
(assert true)
(define-const var58 String (append/672562846 var2335!1 "line ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("line ") 
(declare-const var2335!2 String)
(assert (= var2335!2 (str.++ var2335!1 "line ")))
 ; Statement: if i0 < 0 goto $i2 = i0 - -1000000001 
(assert (< var2214 0)) ; Cond: i0 < 0 
(define-const var2561 Int (- var2214 (- 1000000001))) ; Statement: $i2 = i0 - -1000000001 
(assert true) ; Non Conditional
(assert true)
(define-const var420 String (append/-1001720160 var58 var2561)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var58!1 String)
(assert (str.prefixof var58 var58!1))
(assert true)
(define-const var561 String (append/672562846 var420 ", column ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var420!1 String)
(assert (= var420!1 (str.++ var420 ", column ")))
(assert true)
(define-const var3492 String (append/-1001720160 var561 var8)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var561!1 String)
(assert (str.prefixof var561 var561!1))
(assert true)
(define-const var36 String (toString/-2075883882 var3492)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2214=i0, var8=i1, var2335=$r0, var58=$r1, var2561=$i2, var420=$r2, var561=$r3, var3492=$r4, var36=$r5}
; {i0=var2214, i1=var8, $r0=var2335, $r1=var58, $i2=var2561, $r2=var420, $r3=var561, $r4=var3492, $r5=var36}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("line ");	if i0 < 0 goto $i2 = i0 - -1000000001;	$i2 = i0 - -1000000001;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3
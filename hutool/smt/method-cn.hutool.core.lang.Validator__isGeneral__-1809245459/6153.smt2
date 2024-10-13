(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2757_isMatchRegex/314582760 (String String) Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var634 String) ; Statement: r6 := @parameter0: java.lang.CharSequence 
(assert (not (= var634 null-String)))
(declare-const var2717 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2717 null-Int)))
(declare-const var2746 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2746 null-Int)))
 ; Statement: if i1 >= 0 goto $r0 = new java.lang.StringBuilder 
(assert (>= var2717 0)) ; Cond: i1 >= 0 
(define-const var1294 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1294)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1294!1 String)
(assert (= var1294!1 ""))
(assert true)
(define-const var3519 String (append/672562846 var1294!1 "^\u005cw{")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^\\w{") 
(declare-const var1294!2 String)
(assert (= var1294!2 (str.++ var1294!1 "^\u005cw{")))
(assert true)
(define-const var3826 String (append/-1001720160 var3519 var2717)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3519!1 String)
(assert (str.prefixof var3519 var3519!1))
(assert true)
(define-const var2426 String (append/672562846 var3826 ",")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3826!1 String)
(assert (= var3826!1 (str.++ var3826 ",")))
(assert true)
(define-const var1240 String (append/-1001720160 var2426 var2746)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2426!1 String)
(assert (str.prefixof var2426 var2426!1))
(assert true)
(define-const var1951 String (append/672562846 var1240 "}$")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}$") 
(declare-const var1240!1 String)
(assert (= var1240!1 (str.++ var1240 "}$")))
(assert true)
(define-const var3187 String (toString/-2075883882 var1951)) ; Statement: r11 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i0 > 0 goto $z0 = staticinvoke <cn.hutool.core.lang.Validator: boolean isMatchRegex(java.lang.String,java.lang.CharSequence)>(r11, r6) 
(assert (> var2746 0)) ; Cond: i0 > 0 
(define-const var2611 Bool (var2757_isMatchRegex/314582760 var3187 var634)) ; Statement: $z0 = staticinvoke <cn.hutool.core.lang.Validator: boolean isMatchRegex(java.lang.String,java.lang.CharSequence)>(r11, r6) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2757_isMatchRegex/314582760=([java.lang.String, java.lang.CharSequence], boolean)}
; {var634=r6, var2717=i1, var2746=i0, var1294=$r0, var3519=$r1, var3826=$r2, var2426=$r3, var1240=$r4, var1951=$r5, var3187=r11, var2757=cn.hutool.core.lang.Validator, var2611=$z0}
; {r6=var634, i1=var2717, i0=var2746, $r0=var1294, $r1=var3519, $r2=var3826, $r3=var2426, $r4=var1240, $r5=var1951, r11=var3187, cn.hutool.core.lang.Validator=var2757, $z0=var2611}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: java.lang.CharSequence;	i1 := @parameter1: int;	i0 := @parameter2: int;	if i1 >= 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^\\w{");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}$");	r11 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	if i0 > 0 goto $z0 = staticinvoke <cn.hutool.core.lang.Validator: boolean isMatchRegex(java.lang.String,java.lang.CharSequence)>(r11, r6);	$z0 = staticinvoke <cn.hutool.core.lang.Validator: boolean isMatchRegex(java.lang.String,java.lang.CharSequence)>(r11, r6);	return $z0
;block_num 3
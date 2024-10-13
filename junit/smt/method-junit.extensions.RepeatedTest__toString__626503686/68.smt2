(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var796 0)
(declare-sort var2708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/1091548327 (var2708) String)
(declare-fun cast-from-var796-to-var2708 (var796) var2708)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var796 var796)
(declare-const var2767 var796) ; Statement: r1 := @this: junit.extensions.RepeatedTest 
(assert (not (= var2767 null-var796)))
(define-const var3492 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3492)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3492!1 String)
(assert (= var3492!1 ""))
(assert true)
(define-const var2689 String (toString/1091548327 (cast-from-var796-to-var2708 var2767))) ; Statement: $r2 = specialinvoke r1.<junit.extensions.TestDecorator: java.lang.String toString()>() 
(assert true)
(define-const var3522 String (append/672562846 var3492!1 var2689)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3492!2 String)
(assert (= var3492!2 (str.++ var3492!1 var2689)))
(assert true)
(define-const var2706 String (append/672562846 var3522 "(repeated)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(repeated)") 
(declare-const var3522!1 String)
(assert (= var3522!1 (str.++ var3522 "(repeated)")))
(assert true)
(define-const var83 String (toString/-2075883882 var2706)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/1091548327=([junit.extensions.TestDecorator], java.lang.String), cast-from-var796-to-var2708=([junit.extensions.RepeatedTest], junit.extensions.TestDecorator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var796=junit.extensions.RepeatedTest, var2767=r1, var3492=$r0, var2708=junit.extensions.TestDecorator, var2689=$r2, var3522=$r3, var2706=$r4, var83=$r5}
; {junit.extensions.RepeatedTest=var796, r1=var2767, $r0=var3492, junit.extensions.TestDecorator=var2708, $r2=var2689, $r3=var3522, $r4=var2706, $r5=var83}
;seq <java.lang.StringBuilder: void <init>()>;	<junit.extensions.TestDecorator: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: junit.extensions.RepeatedTest;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<junit.extensions.TestDecorator: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(repeated)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
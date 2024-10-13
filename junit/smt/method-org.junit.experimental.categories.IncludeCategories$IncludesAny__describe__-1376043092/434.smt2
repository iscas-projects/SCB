(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3934 0)
(declare-sort var2215 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun describe/-1757923735 (var2215) String)
(declare-fun cast-from-var3934-to-var2215 (var3934) var2215)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3934 var3934)
(declare-const var661 var3934) ; Statement: r1 := @this: org.junit.experimental.categories.IncludeCategories$IncludesAny 
(assert (not (= var661 null-var3934)))
(define-const var212 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var212)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var212!1 String)
(assert (= var212!1 ""))
(assert true)
(define-const var3829 String (append/672562846 var212!1 "includes ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("includes ") 
(declare-const var212!2 String)
(assert (= var212!2 (str.++ var212!1 "includes ")))
(assert true)
(define-const var131 String (describe/-1757923735 (cast-from-var3934-to-var2215 var661))) ; Statement: $r2 = specialinvoke r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.lang.String describe()>() 
(assert true)
(define-const var3452 String (append/672562846 var3829 var131)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3829!1 String)
(assert (= var3829!1 (str.++ var3829 var131)))
(assert true)
(define-const var87 String (toString/-2075883882 var3452)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), describe/-1757923735=([org.junit.experimental.categories.Categories$CategoryFilter], java.lang.String), cast-from-var3934-to-var2215=([org.junit.experimental.categories.IncludeCategories$IncludesAny], org.junit.experimental.categories.Categories$CategoryFilter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3934=org.junit.experimental.categories.IncludeCategories$IncludesAny, var661=r1, var212=$r0, var3829=$r3, var2215=org.junit.experimental.categories.Categories$CategoryFilter, var131=$r2, var3452=$r4, var87=$r5}
; {org.junit.experimental.categories.IncludeCategories$IncludesAny=var3934, r1=var661, $r0=var212, $r3=var3829, org.junit.experimental.categories.Categories$CategoryFilter=var2215, $r2=var131, $r4=var3452, $r5=var87}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.experimental.categories.IncludeCategories$IncludesAny;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("includes ");	$r2 = specialinvoke r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.lang.String describe()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
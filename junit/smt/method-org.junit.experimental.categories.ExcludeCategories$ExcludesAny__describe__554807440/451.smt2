(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1949 0)
(declare-sort var2254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun describe/-1757923735 (var2254) String)
(declare-fun cast-from-var1949-to-var2254 (var1949) var2254)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1949 var1949)
(declare-const var592 var1949) ; Statement: r1 := @this: org.junit.experimental.categories.ExcludeCategories$ExcludesAny 
(assert (not (= var592 null-var1949)))
(define-const var1676 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1676)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1676!1 String)
(assert (= var1676!1 ""))
(assert true)
(define-const var1938 String (append/672562846 var1676!1 "excludes ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("excludes ") 
(declare-const var1676!2 String)
(assert (= var1676!2 (str.++ var1676!1 "excludes ")))
(assert true)
(define-const var62 String (describe/-1757923735 (cast-from-var1949-to-var2254 var592))) ; Statement: $r2 = specialinvoke r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.lang.String describe()>() 
(assert true)
(define-const var3289 String (append/672562846 var1938 var62)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1938!1 String)
(assert (= var1938!1 (str.++ var1938 var62)))
(assert true)
(define-const var416 String (toString/-2075883882 var3289)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), describe/-1757923735=([org.junit.experimental.categories.Categories$CategoryFilter], java.lang.String), cast-from-var1949-to-var2254=([org.junit.experimental.categories.ExcludeCategories$ExcludesAny], org.junit.experimental.categories.Categories$CategoryFilter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1949=org.junit.experimental.categories.ExcludeCategories$ExcludesAny, var592=r1, var1676=$r0, var1938=$r3, var2254=org.junit.experimental.categories.Categories$CategoryFilter, var62=$r2, var3289=$r4, var416=$r5}
; {org.junit.experimental.categories.ExcludeCategories$ExcludesAny=var1949, r1=var592, $r0=var1676, $r3=var1938, org.junit.experimental.categories.Categories$CategoryFilter=var2254, $r2=var62, $r4=var3289, $r5=var416}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.experimental.categories.ExcludeCategories$ExcludesAny;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("excludes ");	$r2 = specialinvoke r1.<org.junit.experimental.categories.Categories$CategoryFilter: java.lang.String describe()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTitle/-1789626563 (var3236) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3236 var3236)
(declare-const var1535 var3236) ; Statement: r1 := @this: jdk.jfr.internal.tool.Print 
(assert (not (= var1535 null-var3236)))
(define-const var1634 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1634)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1634!1 String)
(assert (= var1634!1 ""))
(assert true)
(define-const var2301 String (getTitle/-1789626563 var1535)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.internal.tool.Print: java.lang.String getTitle()>() 
(assert true)
(define-const var3374 String (append/672562846 var1634!1 var2301)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1634!2 String)
(assert (= var1634!2 (str.++ var1634!1 var2301)))
(assert true)
(define-const var3610 String (append/672562846 var3374 ". See \u0027jfr help print\u0027 for details.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". See \'jfr help print\' for details.") 
(declare-const var3374!1 String)
(assert (= var3374!1 (str.++ var3374 ". See \u0027jfr help print\u0027 for details.")))
(assert true)
(define-const var1467 String (toString/-2075883882 var3610)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTitle/-1789626563=([jdk.jfr.internal.tool.Print], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3236=jdk.jfr.internal.tool.Print, var1535=r1, var1634=$r0, var2301=$r2, var3374=$r3, var3610=$r4, var1467=$r5}
; {jdk.jfr.internal.tool.Print=var3236, r1=var1535, $r0=var1634, $r2=var2301, $r3=var3374, $r4=var3610, $r5=var1467}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.tool.Print;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<jdk.jfr.internal.tool.Print: java.lang.String getTitle()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". See \'jfr help print\' for details.");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
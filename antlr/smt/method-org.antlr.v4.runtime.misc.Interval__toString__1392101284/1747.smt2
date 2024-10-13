(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun a/1351597580 (var1406) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun b/1351597580 (var1406) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1406 var1406)
(declare-const var488 var1406) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.Interval 
(assert (not (= var488 null-var1406)))
(define-const var1128 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1128)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1128!1 String)
(assert (= var1128!1 ""))
(define-const var3255 Int (a/1351597580 var488)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.misc.Interval: int a> 
(assert true)
(define-const var397 String (append/-1001720160 var1128!1 var3255)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1128!2 String)
(assert (str.prefixof var1128!1 var1128!2))
(assert true)
(define-const var3998 String (append/672562846 var397 "..")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..") 
(declare-const var397!1 String)
(assert (= var397!1 (str.++ var397 "..")))
(define-const var2505 Int (b/1351597580 var488)) ; Statement: $i1 = r1.<org.antlr.v4.runtime.misc.Interval: int b> 
(assert true)
(define-const var413 String (append/-1001720160 var3998 var2505)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3998!1 String)
(assert (str.prefixof var3998 var3998!1))
(assert true)
(define-const var1522 String (toString/-2075883882 var413)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), a/1351597580=([org.antlr.v4.runtime.misc.Interval], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), b/1351597580=([org.antlr.v4.runtime.misc.Interval], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1406=org.antlr.v4.runtime.misc.Interval, var488=r1, var1128=$r0, var3255=$i0, var397=$r2, var3998=$r3, var2505=$i1, var413=$r4, var1522=$r5}
; {org.antlr.v4.runtime.misc.Interval=var1406, r1=var488, $r0=var1128, $i0=var3255, $r2=var397, $r3=var3998, $i1=var2505, $r4=var413, $r5=var1522}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.Interval;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<org.antlr.v4.runtime.misc.Interval: int a>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..");	$i1 = r1.<org.antlr.v4.runtime.misc.Interval: int b>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun a/-946785625 (var1755) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun b/-946785625 (var1755) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1755 var1755)
(declare-const var1722 var1755) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.Interval 
(assert (not (= var1722 null-var1755)))
(define-const var2989 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2989)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2989!1 String)
(assert (= var2989!1 ""))
(define-const var2278 Int (a/-946785625 var1722)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a> 
(assert true)
(define-const var3925 String (append/-1001720160 var2989!1 var2278)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2989!2 String)
(assert (str.prefixof var2989!1 var2989!2))
(assert true)
(define-const var2988 String (append/672562846 var3925 "..")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..") 
(declare-const var3925!1 String)
(assert (= var3925!1 (str.++ var3925 "..")))
(define-const var2773 Int (b/-946785625 var1722)) ; Statement: $i1 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int b> 
(assert true)
(define-const var3665 String (append/-1001720160 var2988 var2773)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2988!1 String)
(assert (str.prefixof var2988 var2988!1))
(assert true)
(define-const var1782 String (toString/-2075883882 var3665)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), a/-946785625=([com.github.jknack.handlebars.internal.antlr.misc.Interval], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), b/-946785625=([com.github.jknack.handlebars.internal.antlr.misc.Interval], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1755=com.github.jknack.handlebars.internal.antlr.misc.Interval, var1722=r1, var2989=$r0, var2278=$i0, var3925=$r2, var2988=$r3, var2773=$i1, var3665=$r4, var1782=$r5}
; {com.github.jknack.handlebars.internal.antlr.misc.Interval=var1755, r1=var1722, $r0=var2989, $i0=var2278, $r2=var3925, $r3=var2988, $i1=var2773, $r4=var3665, $r5=var1782}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.Interval;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..");	$i1 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int b>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
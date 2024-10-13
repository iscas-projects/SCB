(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var916 0)
(declare-sort var2828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var916 var916)
(declare-const null-var2828 var2828)
(declare-const null-Int Int)
(declare-const var2470 var916) ; Statement: r5 := @this: freemarker.cache.TemplateCache 
(assert (not (= var2470 null-var916)))
(declare-const var2089 var2828) ; Statement: r2 := @parameter0: java.util.List 
(assert (not (= var2089 null-var2828)))
(declare-const var1905 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1905 null-Int)))
(declare-const var2819 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2819 null-Int)))
(define-const var72 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3892 Int (- var2819 var1905)) ; Statement: $i2 = i0 - i1 
(define-const var935 Int (* var3892 16)) ; Statement: $i3 = $i2 * 16 
(assert true)
;(assert (<init>/543593434 var72 var935)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i3) 

(declare-const var72!1 String)
(declare-const var935!1 Int)
(define-const var436 Int var1905) ; Statement: i4 = i1 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var436 var2819)) ; Cond: i4 >= i0 
(assert true)
(define-const var974 String (toString/-2075883882 var72!1)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var916=freemarker.cache.TemplateCache, var2470=r5, var2828=java.util.List, var2089=r2, var1905=i1, var2819=i0, var72=$r0, var3892=$i2, var935=$i3, var436=i4, var974=$r1}
; {freemarker.cache.TemplateCache=var916, r5=var2470, java.util.List=var2828, r2=var2089, i1=var1905, i0=var2819, $r0=var72, $i2=var3892, $i3=var935, i4=var436, $r1=var974}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: freemarker.cache.TemplateCache;	r2 := @parameter0: java.util.List;	i1 := @parameter1: int;	i0 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	$i2 = i0 - i1;	$i3 = $i2 * 16;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i3);	i4 = i1;	if i4 >= i0 goto $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 3
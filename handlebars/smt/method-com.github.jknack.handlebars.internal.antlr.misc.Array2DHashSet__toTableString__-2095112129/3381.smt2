(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1350 0)
(declare-sort var3527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buckets/-1682346005 (var1350) (Array Int (Array Int var3527)))
(declare-fun getLength-Arr-var3527-2 ((Array Int (Array Int var3527))) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1350 var1350)
(declare-const null-__Array__Int__var3527__ (Array Int var3527))
(declare-const var702 var1350) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet 
(assert (not (= var702 null-var1350)))
(define-const var1024 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1024)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1024!1 String)
(assert (= var1024!1 ""))
(define-const var750 (Array Int (Array Int var3527)) (buckets/-1682346005 var702)) ; Statement: r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet: java.lang.Object[][] buckets> 
(define-const var2838 Int (getLength-Arr-var3527-2 var750)) ; Statement: i0 = lengthof r2 
(define-const var2279 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (>= var2279 var2838))) ; Negate: Cond: i2 >= i0  
(define-const var2386 (Array Int var3527) (select var750 var2279)) ; Statement: r4 = r2[i2] 
 ; Statement: if r4 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(assert (not (not (= var2386 null-__Array__Int__var3527__)))) ; Negate: Cond: r4 != null  
(assert true)
;(assert (append/672562846 var1024!1 "null\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null\n") 
(declare-const var1024!2 String)
(assert (= var1024!2 (str.++ var1024!1 "null\n")))
 ; Statement: goto [?= i2 = i2 + 1] 
(assert true) ; Non Conditional
(define-const var2279!1 Int (+ var2279 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2279!1 var2838)) ; Cond: i2 >= i0 
(assert true)
(define-const var3966 String (toString/-2075883882 var1024!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buckets/-1682346005=([com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet], java.lang.Object[][]), getLength-Arr-var3527-2=([java.lang.Object[][]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1350=com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet, var702=r1, var1024=$r0, var3527=java.lang.Object, var750=r2, var2838=i0, var2279=i2, var2386=r4, var3966=$r3}
; {com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet=var1350, r1=var702, $r0=var1024, java.lang.Object=var3527, r2=var750, i0=var2838, i2=var2279, r4=var2386, $r3=var3966}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet: java.lang.Object[][] buckets>;	i0 = lengthof r2;	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	r4 = r2[i2];	if r4 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null\n");	goto [?= i2 = i2 + 1];	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7
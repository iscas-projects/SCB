(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1373 0)
(declare-sort var3348 0)
(declare-sort var352 0)
(declare-sort var3778 0)
(declare-sort var3269 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3778-init () var3778)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3269_toString/379479 (var352) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var3778 String) void)
(declare-const null-var1373 var1373)
(declare-const null-var3348 var3348)
(declare-const null-var352 var352)
(declare-const var1894 var1373) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap$Builder 
(assert (not (= var1894 null-var1373)))
(declare-const var2734 var3348) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2734 null-var3348)))
(declare-const var2046 var352) ; Statement: r4 := @parameter1: java.lang.Iterable 
(assert (not (= var2046 null-var352)))
 ; Statement: if r0 != null goto $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap$Builder: java.util.Map builderMap> 
(assert (not (not (= var2734 null-var3348)))) ; Negate: Cond: r0 != null  
(define-const var3210 var3778 var3778-init) ; Statement: $r6 = new java.lang.NullPointerException 
(define-const var2573 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2573)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2573!1 String)
(assert (= var2573!1 ""))
(assert true)
(define-const var569 String (append/672562846 var2573!1 "null key in entry: null=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null key in entry: null=") 
(declare-const var2573!2 String)
(assert (= var2573!2 (str.++ var2573!1 "null key in entry: null=")))
(define-const var578 String (var3269_toString/379479 var2046)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables: java.lang.String toString(java.lang.Iterable)>(r4) 
(assert true)
(define-const var882 String (append/672562846 var569 var578)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var569!1 String)
(assert (= var569!1 (str.++ var569 var578)))
(assert true)
(define-const var3565 String (toString/-2075883882 var882)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var3210 var3565)) ; Statement: specialinvoke $r6.<java.lang.NullPointerException: void <init>(java.lang.String)>($r11) 

(declare-const var3210!1 var3778)
(declare-const var3565!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3778-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3269_toString/379479=([java.lang.Iterable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var1373=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap$Builder, var1894=r1, var3348=java.lang.Object, var2734=r0, var352=java.lang.Iterable, var2046=r4, var3778=java.lang.NullPointerException, var3210=$r6, var2573=$r7, var569=$r9, var3269=com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables, var578=$r8, var882=$r10, var3565=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap$Builder=var1373, r1=var1894, java.lang.Object=var3348, r0=var2734, java.lang.Iterable=var352, r4=var2046, java.lang.NullPointerException=var3778, $r6=var3210, $r7=var2573, $r9=var569, com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables=var3269, $r8=var578, $r10=var882, $r11=var3565}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables: java.lang.String toString(java.lang.Iterable)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap$Builder;	r0 := @parameter0: java.lang.Object;	r4 := @parameter1: java.lang.Iterable;	if r0 != null goto $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap$Builder: java.util.Map builderMap>;	$r6 = new java.lang.NullPointerException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null key in entry: null=");	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables: java.lang.String toString(java.lang.Iterable)>(r4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.NullPointerException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2
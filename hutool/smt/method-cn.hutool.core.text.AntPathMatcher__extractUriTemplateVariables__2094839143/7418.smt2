(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1505 0)
(declare-sort var2573 0)
(declare-sort var3467 0)
(declare-sort var1895 0)
(declare-sort var2514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3467-init () var3467)
(declare-fun <init>/-1461814690 (var3467) void)
(declare-fun doMatch/261993127 (var1505 String String Bool var1895) Bool)
(declare-fun cast-from-var3467-to-var1895 (var3467) var1895)
(declare-fun var2514-init () var2514)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2514 String) void)
(declare-const null-var1505 var1505)
(declare-const null-String String)
(declare-const var949 var1505) ; Statement: r1 := @this: cn.hutool.core.text.AntPathMatcher 
(assert (not (= var949 null-var1505)))
(declare-const var3306 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3306 null-String)))
(declare-const var3370 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3370 null-String)))
(define-const var1576 var3467 var3467-init) ; Statement: $r0 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var1576)) ; Statement: specialinvoke $r0.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var1576!1 var3467)
(assert true)
(define-const var3684 Bool (doMatch/261993127 var949 var3306 var3370 (ite (= 1 1) true false) (cast-from-var3467-to-var1895 var1576!1))) ; Statement: z0 = virtualinvoke r1.<cn.hutool.core.text.AntPathMatcher: boolean doMatch(java.lang.String,java.lang.String,boolean,java.util.Map)>(r2, r3, 1, $r0) 
 ; Statement: if z0 != 0 goto return $r0 
(assert (not (not (= (ite var3684 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var914 var2514 var2514-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(define-const var3910 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3910)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3910!1 String)
(assert (= var3910!1 ""))
(assert true)
(define-const var2564 String (append/672562846 var3910!1 "Pattern \u0022")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Pattern \"") 
(declare-const var3910!2 String)
(assert (= var3910!2 (str.++ var3910!1 "Pattern \u0022")))
(assert true)
(define-const var1712 String (append/672562846 var2564 var3306)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2564!1 String)
(assert (= var2564!1 (str.++ var2564 var3306)))
(assert true)
(define-const var3969 String (append/672562846 var1712 "\u0022 is not a match for \u0022")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" is not a match for \"") 
(declare-const var1712!1 String)
(assert (= var1712!1 (str.++ var1712 "\u0022 is not a match for \u0022")))
(assert true)
(define-const var3081 String (append/672562846 var3969 var3370)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3969!1 String)
(assert (= var3969!1 (str.++ var3969 var3370)))
(assert true)
(define-const var2742 String (append/672562846 var3081 "\u0022")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3081!1 String)
(assert (= var3081!1 (str.++ var3081 "\u0022")))
(assert true)
(define-const var3296 String (toString/-2075883882 var2742)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var914 var3296)) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11) 

(declare-const var914!1 var2514)
(declare-const var3296!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3467-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), doMatch/261993127=([cn.hutool.core.text.AntPathMatcher, java.lang.String, java.lang.String, boolean, java.util.Map], boolean), cast-from-var3467-to-var1895=([java.util.LinkedHashMap], java.util.Map), var2514-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1505=cn.hutool.core.text.AntPathMatcher, var949=r1, var3306=r2, var2573=null_type, var3370=r3, var3467=java.util.LinkedHashMap, var1576=$r0, var1895=java.util.Map, var3684=z0, var2514=java.lang.IllegalStateException, var914=$r4, var3910=$r5, var2564=$r6, var1712=$r7, var3969=$r8, var3081=$r9, var2742=$r10, var3296=$r11}
; {cn.hutool.core.text.AntPathMatcher=var1505, r1=var949, r2=var3306, null_type=var2573, r3=var3370, java.util.LinkedHashMap=var3467, $r0=var1576, java.util.Map=var1895, z0=var3684, java.lang.IllegalStateException=var2514, $r4=var914, $r5=var3910, $r6=var2564, $r7=var1712, $r8=var3969, $r9=var3081, $r10=var2742, $r11=var3296}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.text.AntPathMatcher;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.util.LinkedHashMap;	specialinvoke $r0.<java.util.LinkedHashMap: void <init>()>();	z0 = virtualinvoke r1.<cn.hutool.core.text.AntPathMatcher: boolean doMatch(java.lang.String,java.lang.String,boolean,java.util.Map)>(r2, r3, 1, $r0);	if z0 != 0 goto return $r0;	$r4 = new java.lang.IllegalStateException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Pattern \"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" is not a match for \"");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11);	throw $r4
;block_num 2
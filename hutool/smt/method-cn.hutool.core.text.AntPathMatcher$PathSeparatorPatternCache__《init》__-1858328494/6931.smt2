(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2992 0)
(declare-sort var3303 0)
(declare-sort var2923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2923) void)
(declare-fun cast-from-var2992-to-var2923 (var2992) var2923)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun endsOnWildCard/1454429228 (var2992) String)
(declare-fun endsOnDoubleWildCard/1454429228 (var2992) String)
(declare-const null-var2992 var2992)
(declare-const null-String String)
(declare-const var3334 var2992) ; Statement: r0 := @this: cn.hutool.core.text.AntPathMatcher$PathSeparatorPatternCache 
(assert (not (= var3334 null-var2992)))
(declare-const var1319 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1319 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2992-to-var2923 var3334))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3334!1 var2992)
(define-const var3599 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3599)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3599!1 String)
(assert (= var3599!1 ""))
(assert true)
(define-const var3667 String (append/672562846 var3599!1 var1319)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3599!2 String)
(assert (= var3599!2 (str.++ var3599!1 var1319)))
(assert true)
(define-const var1856 String (append/672562846 var3667 "*")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*") 
(declare-const var3667!1 String)
(assert (= var3667!1 (str.++ var3667 "*")))
(assert true)
(define-const var3245 String (toString/-2075883882 var1856)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3334!2 var2992)
(assert (not (= var3334!2 null-var2992)))
(assert (= (endsOnWildCard/1454429228 var3334!2) var3245)) ; Statement: r0.<cn.hutool.core.text.AntPathMatcher$PathSeparatorPatternCache: java.lang.String endsOnWildCard> = $r5 
(define-const var213 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var213)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var213!1 String)
(assert (= var213!1 ""))
(assert true)
(define-const var3115 String (append/672562846 var213!1 var1319)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var213!2 String)
(assert (= var213!2 (str.++ var213!1 var1319)))
(assert true)
(define-const var81 String (append/672562846 var3115 "**")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**") 
(declare-const var3115!1 String)
(assert (= var3115!1 (str.++ var3115 "**")))
(assert true)
(define-const var471 String (toString/-2075883882 var81)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3334!3 var2992)
(assert (not (= var3334!3 null-var2992)))
(assert (= (endsOnDoubleWildCard/1454429228 var3334!3) var471)) ; Statement: r0.<cn.hutool.core.text.AntPathMatcher$PathSeparatorPatternCache: java.lang.String endsOnDoubleWildCard> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2992-to-var2923=([cn.hutool.core.text.AntPathMatcher$PathSeparatorPatternCache], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), endsOnWildCard/1454429228=([cn.hutool.core.text.AntPathMatcher$PathSeparatorPatternCache], java.lang.String), endsOnDoubleWildCard/1454429228=([cn.hutool.core.text.AntPathMatcher$PathSeparatorPatternCache], java.lang.String)}
; {var2992=cn.hutool.core.text.AntPathMatcher$PathSeparatorPatternCache, var3334=r0, var1319=r2, var3303=null_type, var2923=java.lang.Object, var3599=$r1, var3667=$r3, var1856=$r4, var3245=$r5, var213=$r6, var3115=$r7, var81=$r8, var471=$r9}
; {cn.hutool.core.text.AntPathMatcher$PathSeparatorPatternCache=var2992, r0=var3334, r2=var1319, null_type=var3303, java.lang.Object=var2923, $r1=var3599, $r3=var3667, $r4=var1856, $r5=var3245, $r6=var213, $r7=var3115, $r8=var81, $r9=var471}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: cn.hutool.core.text.AntPathMatcher$PathSeparatorPatternCache;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<cn.hutool.core.text.AntPathMatcher$PathSeparatorPatternCache: java.lang.String endsOnWildCard> = $r5;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<cn.hutool.core.text.AntPathMatcher$PathSeparatorPatternCache: java.lang.String endsOnDoubleWildCard> = $r9;	return
;block_num 1
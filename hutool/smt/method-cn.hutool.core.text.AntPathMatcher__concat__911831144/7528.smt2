(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2927 0)
(declare-sort var2281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pathSeparator/-340427970 (var2927) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2927 var2927)
(declare-const null-String String)
(declare-const var2786 var2927) ; Statement: r1 := @this: cn.hutool.core.text.AntPathMatcher 
(assert (not (= var2786 null-var2927)))
(declare-const var1569 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1569 null-String)))
(declare-const var2117 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2117 null-String)))
(define-const var105 String (pathSeparator/-340427970 var2786)) ; Statement: $r2 = r1.<cn.hutool.core.text.AntPathMatcher: java.lang.String pathSeparator> 
(assert true)
(define-const var3517 Bool (endsWith/985337093 var1569 var105)) ; Statement: z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>($r2) 
(define-const var3443 String (pathSeparator/-340427970 var2786)) ; Statement: $r4 = r1.<cn.hutool.core.text.AntPathMatcher: java.lang.String pathSeparator> 
(assert true)
(define-const var3530 Bool (startsWith/-1785782452 var2117 var3443)) ; Statement: z1 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>($r4) 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var3517 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z0 != 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= (ite var3517 1 0) 0))) ; Cond: z0 != 0 
(define-const var2930 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2930)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2930!1 String)
(assert (= var2930!1 ""))
(assert true)
(define-const var1808 String (append/672562846 var2930!1 var1569)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2930!2 String)
(assert (= var2930!2 (str.++ var2930!1 var1569)))
(assert true)
(define-const var280 String (append/672562846 var1808 var2117)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1808!1 String)
(assert (= var1808!1 (str.++ var1808 var2117)))
(assert true)
(define-const var1587 String (toString/-2075883882 var280)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {pathSeparator/-340427970=([cn.hutool.core.text.AntPathMatcher], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2927=cn.hutool.core.text.AntPathMatcher, var2786=r1, var1569=r0, var2281=null_type, var2117=r3, var105=$r2, var3517=z0, var3443=$r4, var3530=z1, var2930=$r5, var1808=$r6, var280=$r7, var1587=$r8}
; {cn.hutool.core.text.AntPathMatcher=var2927, r1=var2786, r0=var1569, null_type=var2281, r3=var2117, $r2=var105, z0=var3517, $r4=var3443, z1=var3530, $r5=var2930, $r6=var1808, $r7=var280, $r8=var1587}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.text.AntPathMatcher;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r2 = r1.<cn.hutool.core.text.AntPathMatcher: java.lang.String pathSeparator>;	z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>($r2);	$r4 = r1.<cn.hutool.core.text.AntPathMatcher: java.lang.String pathSeparator>;	z1 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>($r4);	if z0 == 0 goto (branch);	if z0 != 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3
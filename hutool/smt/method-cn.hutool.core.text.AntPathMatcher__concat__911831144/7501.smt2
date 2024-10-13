(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2995 0)
(declare-sort var2435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pathSeparator/-340427970 (var2995) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2995 var2995)
(declare-const null-String String)
(declare-const var2378 var2995) ; Statement: r1 := @this: cn.hutool.core.text.AntPathMatcher 
(assert (not (= var2378 null-var2995)))
(declare-const var1821 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1821 null-String)))
(declare-const var1036 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1036 null-String)))
(define-const var3980 String (pathSeparator/-340427970 var2378)) ; Statement: $r2 = r1.<cn.hutool.core.text.AntPathMatcher: java.lang.String pathSeparator> 
(assert true)
(define-const var1260 Bool (endsWith/985337093 var1821 var3980)) ; Statement: z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>($r2) 
(define-const var442 String (pathSeparator/-340427970 var2378)) ; Statement: $r4 = r1.<cn.hutool.core.text.AntPathMatcher: java.lang.String pathSeparator> 
(assert true)
(define-const var2166 Bool (startsWith/-1785782452 var1036 var442)) ; Statement: z1 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>($r4) 
 ; Statement: if z0 == 0 goto (branch) 
(assert (not (= (ite var1260 1 0) 0))) ; Negate: Cond: z0 == 0  
 ; Statement: if z1 == 0 goto (branch) 
(assert (not (= (ite var2166 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var1128 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1128)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1128!1 String)
(assert (= var1128!1 ""))
(assert true)
(define-const var597 String (append/672562846 var1128!1 var1821)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1128!2 String)
(assert (= var1128!2 (str.++ var1128!1 var1821)))
(assert (and true (and (>= 1 0) (>= (str.len var1036) 1))))
(define-const var283 String (substring/850833817 var1036 1)) ; Statement: $r16 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(1) 
(assert true)
(define-const var2855 String (append/672562846 var597 var283)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var597!1 String)
(assert (= var597!1 (str.++ var597 var283)))
(assert true)
(define-const var1893 String (toString/-2075883882 var2855)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {pathSeparator/-340427970=([cn.hutool.core.text.AntPathMatcher], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2995=cn.hutool.core.text.AntPathMatcher, var2378=r1, var1821=r0, var2435=null_type, var1036=r3, var3980=$r2, var1260=z0, var442=$r4, var2166=z1, var1128=$r15, var597=$r17, var283=$r16, var2855=$r18, var1893=$r19}
; {cn.hutool.core.text.AntPathMatcher=var2995, r1=var2378, r0=var1821, null_type=var2435, r3=var1036, $r2=var3980, z0=var1260, $r4=var442, z1=var2166, $r15=var1128, $r17=var597, $r16=var283, $r18=var2855, $r19=var1893}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.text.AntPathMatcher;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r2 = r1.<cn.hutool.core.text.AntPathMatcher: java.lang.String pathSeparator>;	z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>($r2);	$r4 = r1.<cn.hutool.core.text.AntPathMatcher: java.lang.String pathSeparator>;	z1 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>($r4);	if z0 == 0 goto (branch);	if z1 == 0 goto (branch);	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r16 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 3
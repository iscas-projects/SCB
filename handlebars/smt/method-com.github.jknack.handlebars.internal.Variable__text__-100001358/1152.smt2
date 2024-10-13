(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2752 0)
(declare-sort var2486 0)
(declare-sort var444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun startDelimiter/553368507 (var2752) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun suffix/-1118018418 (var2752) String)
(declare-fun name/553368507 (var2752) String)
(declare-fun params/-1588764717 (var444) var2486)
(declare-fun cast-from-var2752-to-var444 (var2752) var444)
(declare-fun paramsToString/1912981027 (var444 var2486) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun hashToString/826253629 (var444) String)
(declare-fun endDelimiter/553368507 (var2752) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2752 var2752)
(declare-const var2577 var2752) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.Variable 
(assert (not (= var2577 null-var2752)))
(define-const var173 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var173)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var173!1 String)
(assert (= var173!1 ""))
(define-const var3104 String (startDelimiter/553368507 var2577)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String startDelimiter> 
(assert true)
(define-const var2695 String (append/672562846 var173!1 var3104)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var173!2 String)
(assert (= var173!2 (str.++ var173!1 var3104)))
(assert true)
(define-const var3808 String (suffix/-1118018418 var2577)) ; Statement: $r3 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String suffix()>() 
(assert true)
(define-const var3107 String (append/672562846 var2695 var3808)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2695!1 String)
(assert (= var2695!1 (str.++ var2695 var3808)))
(define-const var1107 String (name/553368507 var2577)) ; Statement: $r5 = r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String name> 
(assert true)
;(assert (append/672562846 var3107 var1107)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3107!1 String)
(assert (= var3107!1 (str.++ var3107 var1107)))
(define-const var3495 var2486 (params/-1588764717 (cast-from-var2752-to-var444 var2577))) ; Statement: $r7 = r1.<com.github.jknack.handlebars.internal.Variable: java.util.List params> 
(assert true)
(define-const var652 String (paramsToString/1912981027 (cast-from-var2752-to-var444 var2577) var3495)) ; Statement: r8 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String paramsToString(java.util.List)>($r7) 
(assert true)
(define-const var1380 Int (length/-134980193 var652)) ; Statement: $i0 = virtualinvoke r8.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r14 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String hashToString()>() 
(assert (<= var1380 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var1481 String (hashToString/826253629 (cast-from-var2752-to-var444 var2577))) ; Statement: $r14 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String hashToString()>() 
(assert true)
(define-const var15 Int (length/-134980193 var1481)) ; Statement: $i1 = virtualinvoke $r14.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 0 goto $r9 = r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String endDelimiter> 
(assert (<= var15 0)) ; Cond: $i1 <= 0 
(define-const var3455 String (endDelimiter/553368507 var2577)) ; Statement: $r9 = r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String endDelimiter> 
(assert true)
(define-const var3554 String (append/672562846 var173!2 var3455)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var173!3 String)
(assert (= var173!3 (str.++ var173!2 var3455)))
(assert true)
(define-const var1225 String (toString/-2075883882 var3554)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), startDelimiter/553368507=([com.github.jknack.handlebars.internal.Variable], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), suffix/-1118018418=([com.github.jknack.handlebars.internal.Variable], java.lang.String), name/553368507=([com.github.jknack.handlebars.internal.Variable], java.lang.String), params/-1588764717=([com.github.jknack.handlebars.internal.HelperResolver], java.util.List), cast-from-var2752-to-var444=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.internal.HelperResolver), paramsToString/1912981027=([com.github.jknack.handlebars.internal.HelperResolver, java.util.List], java.lang.String), length/-134980193=([java.lang.String], int), hashToString/826253629=([com.github.jknack.handlebars.internal.HelperResolver], java.lang.String), endDelimiter/553368507=([com.github.jknack.handlebars.internal.Variable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2752=com.github.jknack.handlebars.internal.Variable, var2577=r1, var173=$r0, var3104=$r2, var2695=$r4, var3808=$r3, var3107=$r6, var1107=$r5, var2486=java.util.List, var444=com.github.jknack.handlebars.internal.HelperResolver, var3495=$r7, var652=r8, var1380=$i0, var1481=$r14, var15=$i1, var3455=$r9, var3554=$r10, var1225=$r11}
; {com.github.jknack.handlebars.internal.Variable=var2752, r1=var2577, $r0=var173, $r2=var3104, $r4=var2695, $r3=var3808, $r6=var3107, $r5=var1107, java.util.List=var2486, com.github.jknack.handlebars.internal.HelperResolver=var444, $r7=var3495, r8=var652, $i0=var1380, $r14=var1481, $i1=var15, $r9=var3455, $r10=var3554, $r11=var1225}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.Variable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String startDelimiter>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String suffix()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String name>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = r1.<com.github.jknack.handlebars.internal.Variable: java.util.List params>;	r8 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String paramsToString(java.util.List)>($r7);	$i0 = virtualinvoke r8.<java.lang.String: int length()>();	if $i0 <= 0 goto $r14 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String hashToString()>();	$r14 = virtualinvoke r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String hashToString()>();	$i1 = virtualinvoke $r14.<java.lang.String: int length()>();	if $i1 <= 0 goto $r9 = r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String endDelimiter>;	$r9 = r1.<com.github.jknack.handlebars.internal.Variable: java.lang.String endDelimiter>;	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3
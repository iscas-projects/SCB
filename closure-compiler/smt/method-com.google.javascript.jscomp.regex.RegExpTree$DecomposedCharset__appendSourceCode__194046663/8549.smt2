(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2314 0)
(declare-sort var3224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ranges/-1785785728 (var2314) var3224)
(declare-fun isEmpty/791471500 (var3224) Bool)
(declare-fun inverted/-1785785728 (var2314) Bool)
(declare-fun namedGroups/-1785785728 (var2314) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2314 var2314)
(declare-const null-String String)
(declare-const var3896 var2314) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset 
(assert (not (= var3896 null-var2314)))
(declare-const var648 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var648 null-String)))
(define-const var2362 var3224 (ranges/-1785785728 var3896)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(assert true)
(define-const var2838 Bool (isEmpty/791471500 var2362)) ; Statement: $z0 = virtualinvoke $r1.<com.google.javascript.jscomp.regex.CharRanges: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(assert (not (= (ite var2838 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var6 Bool (inverted/-1785785728 var3896)) ; Statement: $z4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: boolean inverted> 
 ; Statement: if $z4 != 0 goto $r7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(assert (not (not (= (ite var6 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3906 String (namedGroups/-1785785728 var3896)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups> 
(assert true)
(define-const var2806 Int (length/-134980193 var3906)) ; Statement: $i8 = virtualinvoke $r9.<java.lang.String: int length()>() 
 ; Statement: if $i8 != 2 goto $r7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(assert (not (not (= var2806 2)))) ; Negate: Cond: $i8 != 2  
(define-const var3746 String (namedGroups/-1785785728 var3896)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups> 
(assert true)
;(assert (append/672562846 var648 var3746)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var648!1 String)
(assert (= var648!1 (str.++ var648 var3746)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {ranges/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], com.google.javascript.jscomp.regex.CharRanges), isEmpty/791471500=([com.google.javascript.jscomp.regex.CharRanges], boolean), inverted/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], boolean), namedGroups/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], java.lang.String), length/-134980193=([java.lang.String], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2314=com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset, var3896=r0, var648=r2, var3224=com.google.javascript.jscomp.regex.CharRanges, var2362=$r1, var2838=$z0, var6=$z4, var3906=$r9, var2806=$i8, var3746=$r10}
; {com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset=var2314, r0=var3896, r2=var648, com.google.javascript.jscomp.regex.CharRanges=var3224, $r1=var2362, $z0=var2838, $z4=var6, $r9=var3906, $i8=var2806, $r10=var3746}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset;	r2 := @parameter0: java.lang.StringBuilder;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges>;	$z0 = virtualinvoke $r1.<com.google.javascript.jscomp.regex.CharRanges: boolean isEmpty()>();	if $z0 == 0 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$z4 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: boolean inverted>;	if $z4 != 0 goto $r7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges>;	$r9 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups>;	$i8 = virtualinvoke $r9.<java.lang.String: int length()>();	if $i8 != 2 goto $r7 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges>;	$r10 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups>;	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	return
;block_num 4
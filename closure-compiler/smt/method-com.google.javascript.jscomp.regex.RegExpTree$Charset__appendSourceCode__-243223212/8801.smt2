(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var99 0)
(declare-sort var586 0)
(declare-sort var3854 0)
(declare-sort var562 0)
(declare-sort var2188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ranges/-399732909 (var99) var3854)
(declare-fun equals/394569855 (var3854 var562) Bool)
(declare-fun cast-from-var3854-to-var562 (var3854) var562)
(declare-fun decompose/-472132631 (var99) var2188)
(declare-fun appendSourceCode/194046663 (var2188 String) void)
(declare-const null-var99 var99)
(declare-const null-String String)
(declare-const var586-DOT_CHARSET var99)
(declare-const var1362 var99) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert (not (= var1362 null-var99)))
(declare-const var2404 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2404 null-String)))
(define-const var2270 var99 var586-DOT_CHARSET) ; Statement: $r0 = <com.google.javascript.jscomp.regex.RegExpTree: com.google.javascript.jscomp.regex.RegExpTree$Charset DOT_CHARSET> 
(define-const var3852 var3854 (ranges/-399732909 var2270)) ; Statement: $r3 = $r0.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(define-const var1943 var3854 (ranges/-399732909 var1362)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(assert true)
(define-const var3544 Bool (equals/394569855 var3852 (cast-from-var3854-to-var562 var1943))) ; Statement: $z0 = virtualinvoke $r3.<com.google.javascript.jscomp.regex.CharRanges: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset decompose()>() 
(assert (= (ite var3544 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1503 var2188 (decompose/-472132631 var1362)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset decompose()>() 
(assert true)
;(assert (appendSourceCode/194046663 var1503 var2404)) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: void appendSourceCode(java.lang.StringBuilder)>(r4) 

(declare-const var1503!1 var2188)
(declare-const var2404!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {ranges/-399732909=([com.google.javascript.jscomp.regex.RegExpTree$Charset], com.google.javascript.jscomp.regex.CharRanges), equals/394569855=([com.google.javascript.jscomp.regex.CharRanges, java.lang.Object], boolean), cast-from-var3854-to-var562=([com.google.javascript.jscomp.regex.CharRanges], java.lang.Object), decompose/-472132631=([com.google.javascript.jscomp.regex.RegExpTree$Charset], com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset), appendSourceCode/194046663=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset, java.lang.StringBuilder], void)}
; {var99=com.google.javascript.jscomp.regex.RegExpTree$Charset, var1362=r1, var2404=r4, var586=com.google.javascript.jscomp.regex.RegExpTree, var2270=$r0, var3854=com.google.javascript.jscomp.regex.CharRanges, var3852=$r3, var1943=$r2, var562=java.lang.Object, var3544=$z0, var2188=com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset, var1503=$r5}
; {com.google.javascript.jscomp.regex.RegExpTree$Charset=var99, r1=var1362, r4=var2404, com.google.javascript.jscomp.regex.RegExpTree=var586, $r0=var2270, com.google.javascript.jscomp.regex.CharRanges=var3854, $r3=var3852, $r2=var1943, java.lang.Object=var562, $z0=var3544, com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset=var2188, $r5=var1503}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Charset;	r4 := @parameter0: java.lang.StringBuilder;	$r0 = <com.google.javascript.jscomp.regex.RegExpTree: com.google.javascript.jscomp.regex.RegExpTree$Charset DOT_CHARSET>;	$r3 = $r0.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ranges>;	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ranges>;	$z0 = virtualinvoke $r3.<com.google.javascript.jscomp.regex.CharRanges: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r5 = virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset decompose()>();	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset decompose()>();	virtualinvoke $r5.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: void appendSourceCode(java.lang.StringBuilder)>(r4);	return
;block_num 2
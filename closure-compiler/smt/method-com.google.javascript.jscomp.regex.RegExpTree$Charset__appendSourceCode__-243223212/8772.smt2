(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3363 0)
(declare-sort var339 0)
(declare-sort var1612 0)
(declare-sort var844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ranges/-399732909 (var3363) var1612)
(declare-fun equals/394569855 (var1612 var844) Bool)
(declare-fun cast-from-var1612-to-var844 (var1612) var844)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var3363 var3363)
(declare-const null-String String)
(declare-const var339-DOT_CHARSET var3363)
(declare-const var1373 var3363) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert (not (= var1373 null-var3363)))
(declare-const var3937 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3937 null-String)))
(define-const var1593 var3363 var339-DOT_CHARSET) ; Statement: $r0 = <com.google.javascript.jscomp.regex.RegExpTree: com.google.javascript.jscomp.regex.RegExpTree$Charset DOT_CHARSET> 
(define-const var2940 var1612 (ranges/-399732909 var1593)) ; Statement: $r3 = $r0.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(define-const var3565 var1612 (ranges/-399732909 var1373)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(assert true)
(define-const var333 Bool (equals/394569855 var2940 (cast-from-var1612-to-var844 var3565))) ; Statement: $z0 = virtualinvoke $r3.<com.google.javascript.jscomp.regex.CharRanges: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset decompose()>() 
(assert (not (= (ite var333 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/-1166366385 var3937 46)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3937!1 String)
(assert (str.prefixof var3937 var3937!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {ranges/-399732909=([com.google.javascript.jscomp.regex.RegExpTree$Charset], com.google.javascript.jscomp.regex.CharRanges), equals/394569855=([com.google.javascript.jscomp.regex.CharRanges, java.lang.Object], boolean), cast-from-var1612-to-var844=([com.google.javascript.jscomp.regex.CharRanges], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3363=com.google.javascript.jscomp.regex.RegExpTree$Charset, var1373=r1, var3937=r4, var339=com.google.javascript.jscomp.regex.RegExpTree, var1593=$r0, var1612=com.google.javascript.jscomp.regex.CharRanges, var2940=$r3, var3565=$r2, var844=java.lang.Object, var333=$z0}
; {com.google.javascript.jscomp.regex.RegExpTree$Charset=var3363, r1=var1373, r4=var3937, com.google.javascript.jscomp.regex.RegExpTree=var339, $r0=var1593, com.google.javascript.jscomp.regex.CharRanges=var1612, $r3=var2940, $r2=var3565, java.lang.Object=var844, $z0=var333}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Charset;	r4 := @parameter0: java.lang.StringBuilder;	$r0 = <com.google.javascript.jscomp.regex.RegExpTree: com.google.javascript.jscomp.regex.RegExpTree$Charset DOT_CHARSET>;	$r3 = $r0.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ranges>;	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ranges>;	$z0 = virtualinvoke $r3.<com.google.javascript.jscomp.regex.CharRanges: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r5 = virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset decompose()>();	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	return
;block_num 2
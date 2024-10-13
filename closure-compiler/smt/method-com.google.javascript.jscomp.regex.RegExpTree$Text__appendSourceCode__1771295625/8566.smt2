(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-1721619322 (var601) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var601 var601)
(declare-const null-String String)
(declare-const var1147 var601) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$Text 
(assert (not (= var1147 null-var601)))
(declare-const var359 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var359 null-String)))
(define-const var874 Int 0) ; Statement: i4 = 0 
(define-const var751 String (text/-1721619322 var1147)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Text: java.lang.String text> 
(assert true)
(define-const var3519 Int (length/-134980193 var751)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto return 
(assert (>= var874 var3519)) ; Cond: i4 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-1721619322=([com.google.javascript.jscomp.regex.RegExpTree$Text], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var601=com.google.javascript.jscomp.regex.RegExpTree$Text, var1147=r0, var359=r3, var874=i4, var751=$r1, var3519=i0}
; {com.google.javascript.jscomp.regex.RegExpTree$Text=var601, r0=var1147, r3=var359, i4=var874, $r1=var751, i0=var3519}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$Text;	r3 := @parameter0: java.lang.StringBuilder;	i4 = 0;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Text: java.lang.String text>;	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if i4 >= i0 goto return;	return
;block_num 3
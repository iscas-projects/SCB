(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-1721619322 (var2103) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2103 var2103)
(declare-const var1174 var2103) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$Text 
(assert (not (= var1174 null-var2103)))
(define-const var3975 Int 0) ; Statement: i2 = 0 
(define-const var1412 String (text/-1721619322 var1174)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Text: java.lang.String text> 
(assert true)
(define-const var1646 Int (length/-134980193 var1412)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return 0 
(assert (>= var3975 var1646)) ; Cond: i2 >= i0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-1721619322=([com.google.javascript.jscomp.regex.RegExpTree$Text], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2103=com.google.javascript.jscomp.regex.RegExpTree$Text, var1174=r0, var3975=i2, var1412=$r1, var1646=i0}
; {com.google.javascript.jscomp.regex.RegExpTree$Text=var2103, r0=var1174, i2=var3975, $r1=var1412, i0=var1646}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$Text;	i2 = 0;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Text: java.lang.String text>;	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if i2 >= i0 goto return 0;	return 0
;block_num 3
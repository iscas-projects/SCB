(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3159 0)
(declare-sort var3282 0)
(declare-sort var695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-1721619322 (var3159) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3159 var3159)
(declare-const null-String String)
(declare-const var695-INSTANCE var695)
(declare-const var94 var3159) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$Text 
(assert (not (= var94 null-var3159)))
(declare-const var283 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var283 null-String)))
(define-const var3348 String (text/-1721619322 var94)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Text: java.lang.String text> 
(assert true)
(define-const var139 Int (length/-134980193 var3348)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto $i1 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(105) 
(assert (not (not (= var139 0)))) ; Negate: Cond: i0 != 0  
(define-const var1609 var695 var695-INSTANCE) ; Statement: $r7 = <com.google.javascript.jscomp.regex.RegExpTree$Empty: com.google.javascript.jscomp.regex.RegExpTree$Empty INSTANCE> 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-1721619322=([com.google.javascript.jscomp.regex.RegExpTree$Text], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3159=com.google.javascript.jscomp.regex.RegExpTree$Text, var94=r0, var283=r2, var3282=null_type, var3348=$r1, var139=i0, var695=com.google.javascript.jscomp.regex.RegExpTree$Empty, var1609=$r7}
; {com.google.javascript.jscomp.regex.RegExpTree$Text=var3159, r0=var94, r2=var283, null_type=var3282, $r1=var3348, i0=var139, com.google.javascript.jscomp.regex.RegExpTree$Empty=var695, $r7=var1609}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$Text;	r2 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$Text: java.lang.String text>;	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if i0 != 0 goto $i1 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(105);	$r7 = <com.google.javascript.jscomp.regex.RegExpTree$Empty: com.google.javascript.jscomp.regex.RegExpTree$Empty INSTANCE>;	return $r7
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2853 0)
(declare-sort var3029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formatToken/-1920232736 (var2853) var3029)
(declare-fun getWidth/1724390228 (var3029) Int)
(declare-fun getPrecision/-1119948004 (var3029) Int)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var2853 var2853)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2669 var2853) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat 
(assert (not (= var2669 null-var2853)))
(declare-const var349 String) ; Statement: r6 := @parameter0: java.lang.CharSequence 
(assert (not (= var349 null-String)))
(declare-const var954 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var954 null-Int)))
(define-const var1247 Int var954) ; Statement: i4 = i0 
(define-const var2385 var3029 (formatToken/-1920232736 var2669)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken> 
(assert true)
(define-const var2443 Int (getWidth/1724390228 var2385)) ; Statement: i5 = virtualinvoke $r1.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: int getWidth()>() 
(define-const var2814 var3029 (formatToken/-1920232736 var2669)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken> 
(assert true)
(define-const var2090 Int (getPrecision/-1119948004 var2814)) ; Statement: i1 = virtualinvoke $r2.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: int getPrecision()>() 
(define-const var2075 Int (String_length/-667254855 var349)) ; Statement: i6 = interfaceinvoke r6.<java.lang.CharSequence: int length()>() 
 ; Statement: if i1 < 0 goto (branch) 
(assert (< var2090 0)) ; Cond: i1 < 0 
 ; Statement: if i5 <= 0 goto (branch) 
(assert (<= var2443 0)) ; Cond: i5 <= 0 
 ; Statement: if i6 < i5 goto c7 = 32 
(assert (not (< var2075 var2443))) ; Negate: Cond: i6 < i5  
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {formatToken/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken), getWidth/1724390228=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], int), getPrecision/-1119948004=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], int), String_length/-667254855=([java.lang.CharSequence], int)}
; {var2853=com.google.javascript.jscomp.base.format.SimpleFormat, var2669=r0, var349=r6, var954=i0, var1247=i4, var3029=com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken, var2385=$r1, var2443=i5, var2814=$r2, var2090=i1, var2075=i6}
; {com.google.javascript.jscomp.base.format.SimpleFormat=var2853, r0=var2669, r6=var349, i0=var954, i4=var1247, com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken=var3029, $r1=var2385, i5=var2443, $r2=var2814, i1=var2090, i6=var2075}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat;	r6 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i4 = i0;	$r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken>;	i5 = virtualinvoke $r1.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: int getWidth()>();	$r2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken>;	i1 = virtualinvoke $r2.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: int getPrecision()>();	i6 = interfaceinvoke r6.<java.lang.CharSequence: int length()>();	if i1 < 0 goto (branch);	if i5 <= 0 goto (branch);	if i6 < i5 goto c7 = 32;	return r6
;block_num 4
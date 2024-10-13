(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2845 0)
(declare-sort var1105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun delegate/1519540417 (var2845) var1105)
(declare-fun decodeTo/-64350114 (var1105 (Array Int Int) String) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2845 var2845)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var1923 var2845) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding 
(assert (not (= var1923 null-var2845)))
(declare-const var3766 (Array Int Int)) ; Statement: r3 := @parameter0: byte[] 
(assert (not (= var3766 null-__Array__Int__Int__)))
(declare-const var2838 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2838 null-String)))
(define-const var531 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(define-const var1707 Int (String_length/-667254855 var2838)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert true)
;(assert (<init>/543593434 var531 var1707)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var531!1 String)
(declare-const var1707!1 Int)
(define-const var805 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var3941 Int (String_length/-667254855 var2838)) ; Statement: $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if i5 >= $i1 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate> 
(assert (>= var805 var3941)) ; Cond: i5 >= $i1 
(define-const var1741 var1105 (delegate/1519540417 var1923)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate> 
(assert true)
(define-const var2212 Int (decodeTo/-64350114 var1741 var3766 (cast-from-String-to-String var531!1))) ; Statement: $i2 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: int decodeTo(byte[],java.lang.CharSequence)>(r3, $r6) 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), String_length/-667254855=([java.lang.CharSequence], int), <init>/543593434=([java.lang.StringBuilder, int], void), delegate/1519540417=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding), decodeTo/-64350114=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, byte[], java.lang.CharSequence], int), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence)}
; {var2845=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding, var1923=r2, var3766=r3, var2838=r1, var531=$r6, var1707=$i0, var805=i5, var3941=$i1, var1105=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, var1741=$r4, var2212=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding=var2845, r2=var1923, r3=var3766, r1=var2838, $r6=var531, $i0=var1707, i5=var805, $i1=var3941, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding=var1105, $r4=var1741, $i2=var2212}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding;	r3 := @parameter0: byte[];	r1 := @parameter1: java.lang.CharSequence;	$r6 = new java.lang.StringBuilder;	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>($i0);	i5 = 0;	$i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	if i5 >= $i1 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate>;	$r4 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate>;	$i2 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: int decodeTo(byte[],java.lang.CharSequence)>(r3, $r6);	return $i2
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var3685 var3685)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1042 var3685) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter 
(assert (not (= var1042 null-var3685)))
(declare-const var878 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var878 null-__Array__Int__Int__)))
(define-const var1156 Int (getLength-Arr-Int-1 var878)) ; Statement: $i0 = lengthof r0 
(define-const var3879 Int (- var1156 1)) ; Statement: $i1 = $i0 - 1 
(define-const var1934 Int (div var3879 3)) ; Statement: $i2 = $i1 / 3 
(define-const var3599 Int (+ var1934 1)) ; Statement: $i3 = $i2 + 1 
(define-const var1645 Int (* var3599 4)) ; Statement: $i4 = $i3 * 4 
(define-const var2769 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i4] 
(define-const var2933 Int 0) ; Statement: i43 = 0 
(define-const var2545 Int 0) ; Statement: i44 = 0 
(assert true) ; Non Conditional
(define-const var260 Int (+ var2545 3)) ; Statement: $i6 = i44 + 3 
(define-const var1693 Int (getLength-Arr-Int-1 var878)) ; Statement: $i5 = lengthof r0 
 ; Statement: if $i6 > $i5 goto $i7 = lengthof r0 
(assert (> var260 var1693)) ; Cond: $i6 > $i5 
(define-const var2042 Int (getLength-Arr-Int-1 var878)) ; Statement: $i7 = lengthof r0 
(define-const var464 Int (- var2042 var2545)) ; Statement: $i8 = $i7 - i44 
 ; Statement: if $i8 != 2 goto $i9 = lengthof r0 
(assert (not (= var464 2))) ; Cond: $i8 != 2 
(define-const var335 Int (getLength-Arr-Int-1 var878)) ; Statement: $i9 = lengthof r0 
(define-const var1279 Int (- var335 var2545)) ; Statement: $i10 = $i9 - i44 
 ; Statement: if $i10 != 1 goto $r13 = new java.lang.String 
(assert (not (= var1279 1))) ; Cond: $i10 != 1 
(define-const var3055 String String-init) ; Statement: $r13 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3055 var2769)) ; Statement: specialinvoke $r13.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var3055!1 String)
(declare-const var2769!1 (Array Int Int))
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3685=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter, var1042=r11, var878=r0, var1156=$i0, var3879=$i1, var1934=$i2, var3599=$i3, var1645=$i4, var2769=r1, var2933=i43, var2545=i44, var260=$i6, var1693=$i5, var2042=$i7, var464=$i8, var335=$i9, var1279=$i10, var3055=$r13}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter=var3685, r11=var1042, r0=var878, $i0=var1156, $i1=var3879, $i2=var1934, $i3=var3599, $i4=var1645, r1=var2769, i43=var2933, i44=var2545, $i6=var260, $i5=var1693, $i7=var2042, $i8=var464, $i9=var335, $i10=var1279, $r13=var3055}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter;	r0 := @parameter0: byte[];	$i0 = lengthof r0;	$i1 = $i0 - 1;	$i2 = $i1 / 3;	$i3 = $i2 + 1;	$i4 = $i3 * 4;	r1 = newarray (char)[$i4];	i43 = 0;	i44 = 0;	$i6 = i44 + 3;	$i5 = lengthof r0;	if $i6 > $i5 goto $i7 = lengthof r0;	$i7 = lengthof r0;	$i8 = $i7 - i44;	if $i8 != 2 goto $i9 = lengthof r0;	$i9 = lengthof r0;	$i10 = $i9 - i44;	if $i10 != 1 goto $r13 = new java.lang.String;	$r13 = new java.lang.String;	specialinvoke $r13.<java.lang.String: void <init>(char[])>(r1);	return $r13
;block_num 5
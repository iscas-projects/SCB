(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var173 0)
(declare-sort var1109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var173) void)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1109-UTF_8 var173)
(declare-const var2639 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2639 null-__Array__Int__Int__)))
(define-const var2840 var173 var1109-UTF_8) ; Statement: r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(define-const var2605 Int 0) ; Statement: b15 = 0 
(define-const var1025 Int 0) ; Statement: b22 = 0 
(define-const var996 Int 0) ; Statement: b21 = 0 
(define-const var3586 Int (getLength-Arr-Int-1 var2639)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 1 goto $i16 = lengthof r0 
(assert (<= var3586 1)) ; Cond: $i0 <= 1 
(define-const var1539 Int (getLength-Arr-Int-1 var2639)) ; Statement: $i16 = lengthof r0 
 ; Statement: if $i16 <= 1 goto $i17 = lengthof r0 
(assert (<= var1539 1)) ; Cond: $i16 <= 1 
(define-const var637 Int (getLength-Arr-Int-1 var2639)) ; Statement: $i17 = lengthof r0 
 ; Statement: if $i17 <= 2 goto $i18 = lengthof r0 
(assert (<= var637 2)) ; Cond: $i17 <= 2 
(define-const var803 Int (getLength-Arr-Int-1 var2639)) ; Statement: $i18 = lengthof r0 
 ; Statement: if $i18 <= 3 goto $r4 = new java.lang.String 
(assert (<= var803 3)) ; Cond: $i18 <= 3 
(define-const var425 String String-init) ; Statement: $r4 = new java.lang.String 
(define-const var1062 Int (getLength-Arr-Int-1 var2639)) ; Statement: $i19 = lengthof r0 
(define-const var3613 Int (- var1062 var996)) ; Statement: $i20 = $i19 - b21 
(assert true)
;(assert (<init>/-1019213948 var425 var2639 var1025 var3613 var2840)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r0, b22, $i20, r1) 

(declare-const var425!1 String)
(declare-const var2639!1 (Array Int Int))
(declare-const var1025!1 Int)
(declare-const var3613!1 Int)
(declare-const var2840!1 var173)
(assert true)
(define-const var2417 (Array Int Int) (toCharArray/415275702 var425!1)) ; Statement: $r3 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), String-init=([], java.lang.String), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void), toCharArray/415275702=([java.lang.String], char[])}
; {var2639=r0, var173=java.nio.charset.Charset, var1109=java.nio.charset.StandardCharsets, var2840=r1, var2605=b15, var1025=b22, var996=b21, var3586=$i0, var1539=$i16, var637=$i17, var803=$i18, var425=$r4, var1062=$i19, var3613=$i20, var2417=$r3}
; {r0=var2639, java.nio.charset.Charset=var173, java.nio.charset.StandardCharsets=var1109, r1=var2840, b15=var2605, b22=var1025, b21=var996, $i0=var3586, $i16=var1539, $i17=var637, $i18=var803, $r4=var425, $i19=var1062, $i20=var3613, $r3=var2417}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1,"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: byte[];	r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	b15 = 0;	b22 = 0;	b21 = 0;	$i0 = lengthof r0;	if $i0 <= 1 goto $i16 = lengthof r0;	$i16 = lengthof r0;	if $i16 <= 1 goto $i17 = lengthof r0;	$i17 = lengthof r0;	if $i17 <= 2 goto $i18 = lengthof r0;	$i18 = lengthof r0;	if $i18 <= 3 goto $r4 = new java.lang.String;	$r4 = new java.lang.String;	$i19 = lengthof r0;	$i20 = $i19 - b21;	specialinvoke $r4.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r0, b22, $i20, r1);	$r3 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>();	return $r3
;block_num 5
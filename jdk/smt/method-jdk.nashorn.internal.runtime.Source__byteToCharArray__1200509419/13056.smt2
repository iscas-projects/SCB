(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2105 0)
(declare-sort var993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var2105) void)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var993-UTF_8 var2105)
(declare-const var993-UTF_16BE var2105)
(declare-const var2071 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2071 null-__Array__Int__Int__)))
(define-const var2368 var2105 var993-UTF_8) ; Statement: r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(define-const var3029 Int 0) ; Statement: b15 = 0 
(define-const var3152 Int 0) ; Statement: b22 = 0 
(define-const var3137 Int 0) ; Statement: b21 = 0 
(define-const var1257 Int (getLength-Arr-Int-1 var2071)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 1 goto $i16 = lengthof r0 
(assert (not (<= var1257 1))) ; Negate: Cond: $i0 <= 1  
(define-const var906 Int (select var2071 0)) ; Statement: $b13 = r0[0] 
(define-const var2137 Int (cast-from-Int-to-Int var906)) ; Statement: $i23 = (int) $b13 
(define-const var2000 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i25 = (int) -2 
 ; Statement: if $i23 != $i25 goto $i16 = lengthof r0 
(assert (not (not (= var2137 var2000)))) ; Negate: Cond: $i23 != $i25  
(define-const var356 Int (select var2071 1)) ; Statement: $b14 = r0[1] 
(define-const var2665 Int (cast-from-Int-to-Int var356)) ; Statement: $i26 = (int) $b14 
(define-const var1029 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i28 = (int) -1 
 ; Statement: if $i26 != $i28 goto $i16 = lengthof r0 
(assert (not (not (= var2665 var1029)))) ; Negate: Cond: $i26 != $i28  
(define-const var3029!1 Int 2) ; Statement: b15 = 2 
(define-const var3152!1 Int 2) ; Statement: b22 = 2 
(define-const var3137!1 Int 2) ; Statement: b21 = 2 
(define-const var2368!1 var2105 var993-UTF_16BE) ; Statement: r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16BE> 
 ; Statement: goto [?= $r4 = new java.lang.String] 
(assert true) ; Non Conditional
(define-const var2811 String String-init) ; Statement: $r4 = new java.lang.String 
(define-const var368 Int (getLength-Arr-Int-1 var2071)) ; Statement: $i19 = lengthof r0 
(define-const var2403 Int (- var368 var3137!1)) ; Statement: $i20 = $i19 - b21 
(assert true)
;(assert (<init>/-1019213948 var2811 var2071 var3152!1 var2403 var2368!1)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r0, b22, $i20, r1) 

(declare-const var2811!1 String)
(declare-const var2071!1 (Array Int Int))
(declare-const var3152!2 Int)
(declare-const var2403!1 Int)
(declare-const var2368!2 var2105)
(assert true)
(define-const var243 (Array Int Int) (toCharArray/415275702 var2811!1)) ; Statement: $r3 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.String), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void), toCharArray/415275702=([java.lang.String], char[])}
; {var2071=r0, var2105=java.nio.charset.Charset, var993=java.nio.charset.StandardCharsets, var2368=r1, var3029=b15, var3152=b22, var3137=b21, var1257=$i0, var906=$b13, var2137=$i23, var2000=$i25, var356=$b14, var2665=$i26, var1029=$i28, var2811=$r4, var368=$i19, var2403=$i20, var243=$r3}
; {r0=var2071, java.nio.charset.Charset=var2105, java.nio.charset.StandardCharsets=var993, r1=var2368, b15=var3029, b22=var3152, b21=var3137, $i0=var1257, $b13=var906, $i23=var2137, $i25=var2000, $b14=var356, $i26=var2665, $i28=var1029, $r4=var2811, $i19=var368, $i20=var2403, $r3=var243}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1,"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: byte[];	r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	b15 = 0;	b22 = 0;	b21 = 0;	$i0 = lengthof r0;	if $i0 <= 1 goto $i16 = lengthof r0;	$b13 = r0[0];	$i23 = (int) $b13;	$i25 = (int) -2;	if $i23 != $i25 goto $i16 = lengthof r0;	$b14 = r0[1];	$i26 = (int) $b14;	$i28 = (int) -1;	if $i26 != $i28 goto $i16 = lengthof r0;	b15 = 2;	b22 = 2;	b21 = 2;	r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16BE>;	goto [?= $r4 = new java.lang.String];	$r4 = new java.lang.String;	$i19 = lengthof r0;	$i20 = $i19 - b21;	specialinvoke $r4.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>(r0, b22, $i20, r1);	$r3 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>();	return $r3
;block_num 5
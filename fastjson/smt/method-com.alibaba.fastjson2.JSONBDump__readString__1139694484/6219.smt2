(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3400 0)
(declare-sort var3758 0)
(declare-sort var2733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bytes/302871663 (var3400) (Array Int Int))
(declare-fun offset/302871663 (var3400) Int)
(declare-fun strtype/302871663 (var3400) Int)
(declare-fun strBegin/302871663 (var3400) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun readLength/-767296169 (var3400) Int)
(declare-fun strlen/302871663 (var3400) Int)
(declare-fun String-init () String)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var3758) void)
(declare-const null-var3400 var3400)
(declare-const var2733-UTF_8 var3758)
(declare-const var2451 var3400) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONBDump 
(assert (not (= var2451 null-var3400)))
(define-const var2287 (Array Int Int) (bytes/302871663 var2451)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONBDump: byte[] bytes> 
(define-const var868 Int (offset/302871663 var2451)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONBDump: int offset> 
(define-const var2113 Int (+ var868 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var2451!1 var3400)
(assert (not (= var2451!1 null-var3400)))
(assert (= (offset/302871663 var2451!1) var2113)) ; Statement: r0.<com.alibaba.fastjson2.JSONBDump: int offset> = $i1 
(define-const var2505 Int (select var2287 var868)) ; Statement: $b2 = $r1[$i0] 
(declare-const var2451!2 var3400)
(assert (not (= var2451!2 null-var3400)))
(assert (= (strtype/302871663 var2451!2) var2505)) ; Statement: r0.<com.alibaba.fastjson2.JSONBDump: byte strtype> = $b2 
(define-const var1059 Int (offset/302871663 var2451!2)) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONBDump: int offset> 
(declare-const var2451!3 var3400)
(assert (not (= var2451!3 null-var3400)))
(assert (= (strBegin/302871663 var2451!3) var1059)) ; Statement: r0.<com.alibaba.fastjson2.JSONBDump: int strBegin> = $i3 
(define-const var2896 Int (strtype/302871663 var2451!3)) ; Statement: $b4 = r0.<com.alibaba.fastjson2.JSONBDump: byte strtype> 
(define-const var563 Int (cast-from-Int-to-Int var2896)) ; Statement: $i46 = (int) $b4 
 ; Statement: if $i46 < 73 goto $b5 = r0.<com.alibaba.fastjson2.JSONBDump: byte strtype> 
(assert (< var563 73)) ; Cond: $i46 < 73 
(define-const var1800 Int (strtype/302871663 var2451!3)) ; Statement: $b5 = r0.<com.alibaba.fastjson2.JSONBDump: byte strtype> 
(define-const var3930 Int (cast-from-Int-to-Int var1800)) ; Statement: $i50 = (int) $b5 
 ; Statement: if $i50 != 122 goto $b6 = r0.<com.alibaba.fastjson2.JSONBDump: byte strtype> 
(assert (not (not (= var3930 122)))) ; Negate: Cond: $i50 != 122  
(assert true)
(define-const var326 Int (readLength/-767296169 var2451!3)) ; Statement: $i37 = virtualinvoke r0.<com.alibaba.fastjson2.JSONBDump: int readLength()>() 
(declare-const var2451!4 var3400)
(assert (not (= var2451!4 null-var3400)))
(assert (= (strlen/302871663 var2451!4) var326)) ; Statement: r0.<com.alibaba.fastjson2.JSONBDump: int strlen> = $i37 
(define-const var3504 Int (offset/302871663 var2451!4)) ; Statement: $i38 = r0.<com.alibaba.fastjson2.JSONBDump: int offset> 
(declare-const var2451!5 var3400)
(assert (not (= var2451!5 null-var3400)))
(assert (= (strBegin/302871663 var2451!5) var3504)) ; Statement: r0.<com.alibaba.fastjson2.JSONBDump: int strBegin> = $i38 
(define-const var113 var3758 var2733-UTF_8) ; Statement: r27 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
 ; Statement: goto [?= $i45 = r0.<com.alibaba.fastjson2.JSONBDump: int strlen>] 
(assert true) ; Non Conditional
(define-const var2124 Int (strlen/302871663 var2451!5)) ; Statement: $i45 = r0.<com.alibaba.fastjson2.JSONBDump: int strlen> 
 ; Statement: if $i45 >= 0 goto $r34 = new java.lang.String 
(assert (>= var2124 0)) ; Cond: $i45 >= 0 
(define-const var2311 String String-init) ; Statement: $r34 = new java.lang.String 
(define-const var3939 (Array Int Int) (bytes/302871663 var2451!5)) ; Statement: $r15 = r0.<com.alibaba.fastjson2.JSONBDump: byte[] bytes> 
(define-const var646 Int (offset/302871663 var2451!5)) ; Statement: $i15 = r0.<com.alibaba.fastjson2.JSONBDump: int offset> 
(define-const var3484 Int (strlen/302871663 var2451!5)) ; Statement: $i14 = r0.<com.alibaba.fastjson2.JSONBDump: int strlen> 
(assert true)
;(assert (<init>/-1019213948 var2311 var3939 var646 var3484 var113)) ; Statement: specialinvoke $r34.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r15, $i15, $i14, r27) 

(declare-const var2311!1 String)
(declare-const var3939!1 (Array Int Int))
(declare-const var646!1 Int)
(declare-const var3484!1 Int)
(declare-const var113!1 var3758)
(define-const var3268 Int (offset/302871663 var2451!5)) ; Statement: $i17 = r0.<com.alibaba.fastjson2.JSONBDump: int offset> 
(define-const var2305 Int (strlen/302871663 var2451!5)) ; Statement: $i16 = r0.<com.alibaba.fastjson2.JSONBDump: int strlen> 
(define-const var645 Int (+ var3268 var2305)) ; Statement: $i18 = $i17 + $i16 
(declare-const var2451!6 var3400)
(assert (not (= var2451!6 null-var3400)))
(assert (= (offset/302871663 var2451!6) var645)) ; Statement: r0.<com.alibaba.fastjson2.JSONBDump: int offset> = $i18 
 ; Statement: return $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {bytes/302871663=([com.alibaba.fastjson2.JSONBDump], byte[]), offset/302871663=([com.alibaba.fastjson2.JSONBDump], int), strtype/302871663=([com.alibaba.fastjson2.JSONBDump], byte), strBegin/302871663=([com.alibaba.fastjson2.JSONBDump], int), cast-from-Int-to-Int=([byte], int), readLength/-767296169=([com.alibaba.fastjson2.JSONBDump], int), strlen/302871663=([com.alibaba.fastjson2.JSONBDump], int), String-init=([], java.lang.String), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void)}
; {var3400=com.alibaba.fastjson2.JSONBDump, var2451=r0, var2287=$r1, var868=$i0, var2113=$i1, var2505=$b2, var1059=$i3, var2896=$b4, var563=$i46, var1800=$b5, var3930=$i50, var326=$i37, var3504=$i38, var3758=java.nio.charset.Charset, var2733=java.nio.charset.StandardCharsets, var113=r27, var2124=$i45, var2311=$r34, var3939=$r15, var646=$i15, var3484=$i14, var3268=$i17, var2305=$i16, var645=$i18}
; {com.alibaba.fastjson2.JSONBDump=var3400, r0=var2451, $r1=var2287, $i0=var868, $i1=var2113, $b2=var2505, $i3=var1059, $b4=var2896, $i46=var563, $b5=var1800, $i50=var3930, $i37=var326, $i38=var3504, java.nio.charset.Charset=var3758, java.nio.charset.StandardCharsets=var2733, r27=var113, $i45=var2124, $r34=var2311, $r15=var3939, $i15=var646, $i14=var3484, $i17=var3268, $i16=var2305, $i18=var645}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONBDump;	$r1 = r0.<com.alibaba.fastjson2.JSONBDump: byte[] bytes>;	$i0 = r0.<com.alibaba.fastjson2.JSONBDump: int offset>;	$i1 = $i0 + 1;	r0.<com.alibaba.fastjson2.JSONBDump: int offset> = $i1;	$b2 = $r1[$i0];	r0.<com.alibaba.fastjson2.JSONBDump: byte strtype> = $b2;	$i3 = r0.<com.alibaba.fastjson2.JSONBDump: int offset>;	r0.<com.alibaba.fastjson2.JSONBDump: int strBegin> = $i3;	$b4 = r0.<com.alibaba.fastjson2.JSONBDump: byte strtype>;	$i46 = (int) $b4;	if $i46 < 73 goto $b5 = r0.<com.alibaba.fastjson2.JSONBDump: byte strtype>;	$b5 = r0.<com.alibaba.fastjson2.JSONBDump: byte strtype>;	$i50 = (int) $b5;	if $i50 != 122 goto $b6 = r0.<com.alibaba.fastjson2.JSONBDump: byte strtype>;	$i37 = virtualinvoke r0.<com.alibaba.fastjson2.JSONBDump: int readLength()>();	r0.<com.alibaba.fastjson2.JSONBDump: int strlen> = $i37;	$i38 = r0.<com.alibaba.fastjson2.JSONBDump: int offset>;	r0.<com.alibaba.fastjson2.JSONBDump: int strBegin> = $i38;	r27 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	goto [?= $i45 = r0.<com.alibaba.fastjson2.JSONBDump: int strlen>];	$i45 = r0.<com.alibaba.fastjson2.JSONBDump: int strlen>;	if $i45 >= 0 goto $r34 = new java.lang.String;	$r34 = new java.lang.String;	$r15 = r0.<com.alibaba.fastjson2.JSONBDump: byte[] bytes>;	$i15 = r0.<com.alibaba.fastjson2.JSONBDump: int offset>;	$i14 = r0.<com.alibaba.fastjson2.JSONBDump: int strlen>;	specialinvoke $r34.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r15, $i15, $i14, r27);	$i17 = r0.<com.alibaba.fastjson2.JSONBDump: int offset>;	$i16 = r0.<com.alibaba.fastjson2.JSONBDump: int strlen>;	$i18 = $i17 + $i16;	r0.<com.alibaba.fastjson2.JSONBDump: int offset> = $i18;	return $r34
;block_num 5
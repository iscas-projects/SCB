(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2320 0)
(declare-sort var3980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bytes/956814203 (var2320) (Array Int Int))
(declare-fun nameBegin/956814203 (var2320) Int)
(declare-fun nameEnd/956814203 (var2320) Int)
(declare-fun nameEscape/1287024874 (var3980) Bool)
(declare-fun cast-from-var2320-to-var3980 (var2320) var3980)
(declare-fun nameLength/956814203 (var2320) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var2320 var2320)
(declare-const var536 var2320) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8 
(assert (not (= var536 null-var2320)))
(define-const var1640 (Array Int Int) (bytes/956814203 var536)) ; Statement: r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes> 
(define-const var1471 Int (nameBegin/956814203 var536)) ; Statement: i30 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int nameBegin> 
(define-const var3255 Int (nameEnd/956814203 var536)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int nameEnd> 
(define-const var1505 Int (- var3255 var1471)) ; Statement: i1 = $i0 - i30 
(define-const var3632 Bool (nameEscape/1287024874 (cast-from-var2320-to-var3980 var536))) ; Statement: $z0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: boolean nameEscape> 
 ; Statement: if $z0 != 0 goto $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int nameLength> 
(assert (not (= (ite var3632 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1971 Int (nameLength/956814203 var536)) ; Statement: $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int nameLength> 
(define-const var2214 (Array Int Int) arr-Int-init) ; Statement: r23 = newarray (char)[$i2] 
(define-const var3070 Int 0) ; Statement: i32 = 0 
(assert true) ; Non Conditional
(define-const var1912 Int (nameEnd/956814203 var536)) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int nameEnd> 
 ; Statement: if i30 >= $i3 goto $r27 = new java.lang.String 
(assert (>= var1471 var1912)) ; Cond: i30 >= $i3 
(define-const var2204 String String-init) ; Statement: $r27 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var2204 var2214)) ; Statement: specialinvoke $r27.<java.lang.String: void <init>(char[])>(r23) 

(declare-const var2204!1 String)
(declare-const var2214!1 (Array Int Int))
 ; Statement: return $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {bytes/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], byte[]), nameBegin/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], int), nameEnd/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], int), nameEscape/1287024874=([com.alibaba.fastjson2.JSONReader], boolean), cast-from-var2320-to-var3980=([com.alibaba.fastjson2.JSONReaderUTF8], com.alibaba.fastjson2.JSONReader), nameLength/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], int), arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2320=com.alibaba.fastjson2.JSONReaderUTF8, var536=r0, var1640=r1, var1471=i30, var3255=$i0, var1505=i1, var3980=com.alibaba.fastjson2.JSONReader, var3632=$z0, var1971=$i2, var2214=r23, var3070=i32, var1912=$i3, var2204=$r27}
; {com.alibaba.fastjson2.JSONReaderUTF8=var2320, r0=var536, r1=var1640, i30=var1471, $i0=var3255, i1=var1505, com.alibaba.fastjson2.JSONReader=var3980, $z0=var3632, $i2=var1971, r23=var2214, i32=var3070, $i3=var1912, $r27=var2204}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8;	r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes>;	i30 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int nameBegin>;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int nameEnd>;	i1 = $i0 - i30;	$z0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: boolean nameEscape>;	if $z0 != 0 goto $i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int nameLength>;	$i2 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int nameLength>;	r23 = newarray (char)[$i2];	i32 = 0;	$i3 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int nameEnd>;	if i30 >= $i3 goto $r27 = new java.lang.String;	$r27 = new java.lang.String;	specialinvoke $r27.<java.lang.String: void <init>(char[])>(r23);	return $r27
;block_num 4
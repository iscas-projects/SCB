(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1700 0)
(declare-sort var936 0)
(declare-sort var2938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nameEscape/1287024874 (var936) Bool)
(declare-fun cast-from-var1700-to-var936 (var1700) var936)
(declare-fun str/-403530942 (var1700) String)
(declare-fun String-init () String)
(declare-fun chars/-403530942 (var1700) (Array Int Int))
(declare-fun nameBegin/-403530942 (var1700) Int)
(declare-fun nameEnd/-403530942 (var1700) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1700 var1700)
(declare-const null-String String)
(declare-const var3470 var1700) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var3470 null-var1700)))
(define-const var633 Bool (nameEscape/1287024874 (cast-from-var1700-to-var936 var3470))) ; Statement: $z0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: boolean nameEscape> 
 ; Statement: if $z0 != 0 goto $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameLength> 
(assert (not (not (= (ite var633 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1341 String (str/-403530942 var3470)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> 
 ; Statement: if $r4 == null goto $r9 = new java.lang.String 
(assert (= var1341 null-String)) ; Cond: $r4 == null 
(define-const var3908 String String-init) ; Statement: $r9 = new java.lang.String 
(define-const var1588 (Array Int Int) (chars/-403530942 var3470)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> 
(define-const var2695 Int (nameBegin/-403530942 var3470)) ; Statement: $i17 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameBegin> 
(define-const var3284 Int (nameEnd/-403530942 var3470)) ; Statement: $i15 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameEnd> 
(define-const var555 Int (nameBegin/-403530942 var3470)) ; Statement: $i14 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameBegin> 
(define-const var1977 Int (- var3284 var555)) ; Statement: $i16 = $i15 - $i14 
(assert true)
;(assert (<init>/-253222812 var3908 var1588 var2695 var1977)) ; Statement: specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r6, $i17, $i16) 

(declare-const var3908!1 String)
(declare-const var1588!1 (Array Int Int))
(declare-const var2695!1 Int)
(declare-const var1977!1 Int)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {nameEscape/1287024874=([com.alibaba.fastjson2.JSONReader], boolean), cast-from-var1700-to-var936=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), str/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], java.lang.String), String-init=([], java.lang.String), chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), nameBegin/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), nameEnd/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1700=com.alibaba.fastjson2.JSONReaderUTF16, var3470=r0, var936=com.alibaba.fastjson2.JSONReader, var633=$z0, var1341=$r4, var2938=null_type, var3908=$r9, var1588=$r6, var2695=$i17, var3284=$i15, var555=$i14, var1977=$i16}
; {com.alibaba.fastjson2.JSONReaderUTF16=var1700, r0=var3470, com.alibaba.fastjson2.JSONReader=var936, $z0=var633, $r4=var1341, null_type=var2938, $r9=var3908, $r6=var1588, $i17=var2695, $i15=var3284, $i14=var555, $i16=var1977}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	$z0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: boolean nameEscape>;	if $z0 != 0 goto $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameLength>;	$r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str>;	if $r4 == null goto $r9 = new java.lang.String;	$r9 = new java.lang.String;	$r6 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars>;	$i17 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameBegin>;	$i15 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameEnd>;	$i14 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameBegin>;	$i16 = $i15 - $i14;	specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r6, $i17, $i16);	return $r9
;block_num 3
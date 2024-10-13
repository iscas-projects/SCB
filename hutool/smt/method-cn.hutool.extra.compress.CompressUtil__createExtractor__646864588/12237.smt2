(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var879 0)
(declare-sort var751 0)
(declare-sort var3143 0)
(declare-sort var1238 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var1238-init () var1238)
(declare-fun <init>/395830674 (var1238 var3143) void)
(declare-const null-var879 var879)
(declare-const null-String String)
(declare-const null-var3143 var3143)
(declare-const var1992 var879) ; Statement: r3 := @parameter0: java.nio.charset.Charset 
(assert (not (= var1992 null-var879)))
(declare-const var2508 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2508 null-String)))
(declare-const var1860 var3143) ; Statement: r4 := @parameter2: java.io.InputStream 
(assert (not (= var1860 null-var3143)))
(define-const var609 String "7z") ; Statement: $r1 = "7z" 
(assert true)
(define-const var2069 Bool (equalsIgnoreCase/-92311102 var609 var2508)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new cn.hutool.extra.compress.extractor.StreamExtractor 
(assert (not (= (ite var2069 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var472 var1238 var1238-init) ; Statement: $r5 = new cn.hutool.extra.compress.extractor.SevenZExtractor 
(assert true)
;(assert (<init>/395830674 var472 var1860)) ; Statement: specialinvoke $r5.<cn.hutool.extra.compress.extractor.SevenZExtractor: void <init>(java.io.InputStream)>(r4) 

(declare-const var472!1 var1238)
(declare-const var1860!1 var3143)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var1238-init=([], cn.hutool.extra.compress.extractor.SevenZExtractor), <init>/395830674=([cn.hutool.extra.compress.extractor.SevenZExtractor, java.io.InputStream], void)}
; {var879=java.nio.charset.Charset, var1992=r3, var2508=r0, var751=null_type, var3143=java.io.InputStream, var1860=r4, var609=$r1, var2069=$z0, var1238=cn.hutool.extra.compress.extractor.SevenZExtractor, var472=$r5}
; {java.nio.charset.Charset=var879, r3=var1992, r0=var2508, null_type=var751, java.io.InputStream=var3143, r4=var1860, $r1=var609, $z0=var2069, cn.hutool.extra.compress.extractor.SevenZExtractor=var1238, $r5=var472}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @parameter0: java.nio.charset.Charset;	r0 := @parameter1: java.lang.String;	r4 := @parameter2: java.io.InputStream;	$r1 = "7z";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r2 = new cn.hutool.extra.compress.extractor.StreamExtractor;	$r5 = new cn.hutool.extra.compress.extractor.SevenZExtractor;	specialinvoke $r5.<cn.hutool.extra.compress.extractor.SevenZExtractor: void <init>(java.io.InputStream)>(r4);	return $r5
;block_num 2
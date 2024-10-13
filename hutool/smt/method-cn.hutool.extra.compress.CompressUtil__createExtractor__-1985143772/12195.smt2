(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var683 0)
(declare-sort var1878 0)
(declare-sort var70 0)
(declare-sort var2609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2609-init () var2609)
(declare-fun <init>/-635762658 (var2609 var70) void)
(declare-const null-var683 var683)
(declare-const null-String String)
(declare-const null-var70 var70)
(declare-const var1694 var683) ; Statement: r3 := @parameter0: java.nio.charset.Charset 
(assert (not (= var1694 null-var683)))
(declare-const var142 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var142 null-String)))
(declare-const var2612 var70) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var2612 null-var70)))
(define-const var2435 String "7z") ; Statement: $r1 = "7z" 
(assert true)
(define-const var1051 Bool (equalsIgnoreCase/-92311102 var2435 var142)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new cn.hutool.extra.compress.extractor.StreamExtractor 
(assert (not (= (ite var1051 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3341 var2609 var2609-init) ; Statement: $r5 = new cn.hutool.extra.compress.extractor.SevenZExtractor 
(assert true)
;(assert (<init>/-635762658 var3341 var2612)) ; Statement: specialinvoke $r5.<cn.hutool.extra.compress.extractor.SevenZExtractor: void <init>(java.io.File)>(r4) 

(declare-const var3341!1 var2609)
(declare-const var2612!1 var70)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2609-init=([], cn.hutool.extra.compress.extractor.SevenZExtractor), <init>/-635762658=([cn.hutool.extra.compress.extractor.SevenZExtractor, java.io.File], void)}
; {var683=java.nio.charset.Charset, var1694=r3, var142=r0, var1878=null_type, var70=java.io.File, var2612=r4, var2435=$r1, var1051=$z0, var2609=cn.hutool.extra.compress.extractor.SevenZExtractor, var3341=$r5}
; {java.nio.charset.Charset=var683, r3=var1694, r0=var142, null_type=var1878, java.io.File=var70, r4=var2612, $r1=var2435, $z0=var1051, cn.hutool.extra.compress.extractor.SevenZExtractor=var2609, $r5=var3341}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @parameter0: java.nio.charset.Charset;	r0 := @parameter1: java.lang.String;	r4 := @parameter2: java.io.File;	$r1 = "7z";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r2 = new cn.hutool.extra.compress.extractor.StreamExtractor;	$r5 = new cn.hutool.extra.compress.extractor.SevenZExtractor;	specialinvoke $r5.<cn.hutool.extra.compress.extractor.SevenZExtractor: void <init>(java.io.File)>(r4);	return $r5
;block_num 2
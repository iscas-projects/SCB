(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2571 0)
(declare-sort var558 0)
(declare-sort var1900 0)
(declare-sort var1311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bytes/956814203 (var558) (Array Int Int))
(declare-fun cast-from-var2571-to-var558 (var2571) var558)
(declare-fun nameBegin/956814203 (var558) Int)
(declare-fun nameEnd/956814203 (var558) Int)
(declare-fun nameEscape/1287024874 (var1900) Bool)
(declare-fun cast-from-var2571-to-var1900 (var2571) var1900)
(declare-fun str/-422033273 (var2571) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2571 var2571)
(declare-const null-String String)
(declare-const var3933 var2571) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderASCII 
(assert (not (= var3933 null-var2571)))
(define-const var1539 (Array Int Int) (bytes/956814203 (cast-from-var2571-to-var558 var3933))) ; Statement: r1 = r0.<com.alibaba.fastjson2.JSONReaderASCII: byte[] bytes> 
(define-const var3658 Int (nameBegin/956814203 (cast-from-var2571-to-var558 var3933))) ; Statement: i34 = r0.<com.alibaba.fastjson2.JSONReaderASCII: int nameBegin> 
(define-const var181 Int (nameEnd/956814203 (cast-from-var2571-to-var558 var3933))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderASCII: int nameEnd> 
(define-const var3278 Int (- var181 var3658)) ; Statement: i1 = $i0 - i34 
(define-const var1657 Bool (nameEscape/1287024874 (cast-from-var2571-to-var1900 var3933))) ; Statement: $z0 = r0.<com.alibaba.fastjson2.JSONReaderASCII: boolean nameEscape> 
 ; Statement: if $z0 != 0 goto $r2 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.BiFunction STRING_CREATOR_JDK11> 
(assert (not (not (= (ite var1657 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var861 String (str/-422033273 var3933)) ; Statement: $r9 = r0.<com.alibaba.fastjson2.JSONReaderASCII: java.lang.String str> 
 ; Statement: if $r9 == null goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID> 
(assert (not (= var861 null-String))) ; Negate: Cond: $r9 == null  
(define-const var162 String (str/-422033273 var3933)) ; Statement: $r13 = r0.<com.alibaba.fastjson2.JSONReaderASCII: java.lang.String str> 
(define-const var1954 Int (nameEnd/956814203 (cast-from-var2571-to-var558 var3933))) ; Statement: $i33 = r0.<com.alibaba.fastjson2.JSONReaderASCII: int nameEnd> 
(assert (not (and true (and (>= var3658 0) (>= (str.len var162) var1954) (>= var1954 var3658)))))
(check-sat)
(get-model)
(get-unsat-core)
; {bytes/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], byte[]), cast-from-var2571-to-var558=([com.alibaba.fastjson2.JSONReaderASCII], com.alibaba.fastjson2.JSONReaderUTF8), nameBegin/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], int), nameEnd/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], int), nameEscape/1287024874=([com.alibaba.fastjson2.JSONReader], boolean), cast-from-var2571-to-var1900=([com.alibaba.fastjson2.JSONReaderASCII], com.alibaba.fastjson2.JSONReader), str/-422033273=([com.alibaba.fastjson2.JSONReaderASCII], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2571=com.alibaba.fastjson2.JSONReaderASCII, var3933=r0, var558=com.alibaba.fastjson2.JSONReaderUTF8, var1539=r1, var3658=i34, var181=$i0, var3278=i1, var1900=com.alibaba.fastjson2.JSONReader, var1657=$z0, var861=$r9, var1311=null_type, var162=$r13, var1954=$i33, var2429=$r14}
; {com.alibaba.fastjson2.JSONReaderASCII=var2571, r0=var3933, com.alibaba.fastjson2.JSONReaderUTF8=var558, r1=var1539, i34=var3658, $i0=var181, i1=var3278, com.alibaba.fastjson2.JSONReader=var1900, $z0=var1657, $r9=var861, null_type=var1311, $r13=var162, $i33=var1954, $r14=var2429}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderASCII;	r1 = r0.<com.alibaba.fastjson2.JSONReaderASCII: byte[] bytes>;	i34 = r0.<com.alibaba.fastjson2.JSONReaderASCII: int nameBegin>;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderASCII: int nameEnd>;	i1 = $i0 - i34;	$z0 = r0.<com.alibaba.fastjson2.JSONReaderASCII: boolean nameEscape>;	if $z0 != 0 goto $r2 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.BiFunction STRING_CREATOR_JDK11>;	$r9 = r0.<com.alibaba.fastjson2.JSONReaderASCII: java.lang.String str>;	if $r9 == null goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>;	$r13 = r0.<com.alibaba.fastjson2.JSONReaderASCII: java.lang.String str>;	$i33 = r0.<com.alibaba.fastjson2.JSONReaderASCII: int nameEnd>;	$r14 = virtualinvoke $r13.<java.lang.String: java.lang.String substring(int,int)>(i34, $i33);	return $r14
;block_num 3
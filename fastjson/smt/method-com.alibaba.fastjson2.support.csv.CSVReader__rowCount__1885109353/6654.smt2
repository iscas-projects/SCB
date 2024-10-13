(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1541 0)
(declare-sort var2406 0)
(declare-sort var1109 0)
(declare-sort var2618 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1109-init () var1109)
(declare-fun <init>/-76331181 (var1109 (Array Int var2406)) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun rowCount/-1424776399 (var2618 String Int) void)
(declare-fun cast-from-var1109-to-var2618 (var1109) var2618)
(declare-fun rowCount/-1132888086 (var2618) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var2406__ (Array Int var2406))
(declare-const var2378 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2378 null-String)))
(declare-const var3577 (Array Int var2406)) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.stream.StreamReader$Feature[] 
(assert (not (= var3577 null-__Array__Int__var2406__)))
(define-const var966 var1109 var1109-init) ; Statement: $r0 = new com.alibaba.fastjson2.support.csv.CSVReaderUTF8 
(assert true)
;(assert (<init>/-76331181 var966 var3577)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.support.csv.CSVReaderUTF8: void <init>(com.alibaba.fastjson2.stream.StreamReader$Feature[])>(r1) 

(declare-const var966!1 var1109)
(declare-const var3577!1 (Array Int var2406))
(assert true)
(define-const var2529 Int (length/-134980193 var2378)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert true)
;(assert (rowCount/-1424776399 (cast-from-var1109-to-var2618 var966!1) var2378 var2529)) ; Statement: virtualinvoke $r0.<com.alibaba.fastjson2.support.csv.CSVReader: void rowCount(java.lang.String,int)>(r2, $i0) 

(declare-const var966!2 var1109)
(declare-const var2378!1 String)
(declare-const var2529!1 Int)
(assert true)
(define-const var1391 Int (rowCount/-1132888086 (cast-from-var1109-to-var2618 var966!2))) ; Statement: $i1 = virtualinvoke $r0.<com.alibaba.fastjson2.support.csv.CSVReader: int rowCount()>() 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1109-init=([], com.alibaba.fastjson2.support.csv.CSVReaderUTF8), <init>/-76331181=([com.alibaba.fastjson2.support.csv.CSVReaderUTF8, com.alibaba.fastjson2.stream.StreamReader$Feature[]], void), length/-134980193=([java.lang.String], int), rowCount/-1424776399=([com.alibaba.fastjson2.support.csv.CSVReader, java.lang.String, int], void), cast-from-var1109-to-var2618=([com.alibaba.fastjson2.support.csv.CSVReaderUTF8], com.alibaba.fastjson2.support.csv.CSVReader), rowCount/-1132888086=([com.alibaba.fastjson2.support.csv.CSVReader], int)}
; {var2378=r2, var1541=null_type, var2406=com.alibaba.fastjson2.stream.StreamReader$Feature, var3577=r1, var1109=com.alibaba.fastjson2.support.csv.CSVReaderUTF8, var966=$r0, var2529=$i0, var2618=com.alibaba.fastjson2.support.csv.CSVReader, var1391=$i1}
; {r2=var2378, null_type=var1541, com.alibaba.fastjson2.stream.StreamReader$Feature=var2406, r1=var3577, com.alibaba.fastjson2.support.csv.CSVReaderUTF8=var1109, $r0=var966, $i0=var2529, com.alibaba.fastjson2.support.csv.CSVReader=var2618, $i1=var1391}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r1 := @parameter1: com.alibaba.fastjson2.stream.StreamReader$Feature[];	$r0 = new com.alibaba.fastjson2.support.csv.CSVReaderUTF8;	specialinvoke $r0.<com.alibaba.fastjson2.support.csv.CSVReaderUTF8: void <init>(com.alibaba.fastjson2.stream.StreamReader$Feature[])>(r1);	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	virtualinvoke $r0.<com.alibaba.fastjson2.support.csv.CSVReader: void rowCount(java.lang.String,int)>(r2, $i0);	$i1 = virtualinvoke $r0.<com.alibaba.fastjson2.support.csv.CSVReader: int rowCount()>();	return $i1
;block_num 1
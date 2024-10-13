(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1097 0)
(declare-sort var670 0)
(declare-sort var2648 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/940323715 (var670) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun bytes/-2092162108 (var1097) (Array Int Int))
(declare-fun off/406343091 (var2648) Int)
(declare-fun cast-from-var1097-to-var2648 (var1097) var2648)
(declare-fun getBytes/2018643242 (String Int Int (Array Int Int) Int) void)
(declare-const null-var1097 var1097)
(declare-const null-var670 var670)
(declare-const var850 var1097) ; Statement: r2 := @this: com.alibaba.fastjson2.support.csv.CSVWriterUTF8 
(assert (not (= var850 null-var1097)))
(declare-const var3160 var670) ; Statement: r0 := @parameter0: java.math.BigDecimal 
(assert (not (= var3160 null-var670)))
 ; Statement: if r0 != null goto r1 = virtualinvoke r0.<java.math.BigDecimal: java.lang.String toString()>() 
(assert (not (= var3160 null-var670))) ; Cond: r0 != null 
(assert true)
(define-const var1530 String (toString/940323715 var3160)) ; Statement: r1 = virtualinvoke r0.<java.math.BigDecimal: java.lang.String toString()>() 
(assert true)
(define-const var3622 Int (length/-134980193 var1530)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1752 (Array Int Int) (bytes/-2092162108 var850)) ; Statement: $r3 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] bytes> 
(define-const var3156 Int (off/406343091 (cast-from-var1097-to-var2648 var850))) ; Statement: $i1 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: int off> 
(assert true)
;(assert (getBytes/2018643242 var1530 0 var3622 var1752 var3156)) ; Statement: virtualinvoke r1.<java.lang.String: void getBytes(int,int,byte[],int)>(0, i0, $r3, $i1) 

(declare-const var1530!1 String)
(declare-const var311 Int)
(declare-const var3622!1 Int)
(declare-const var1752!1 (Array Int Int))
(declare-const var3156!1 Int)
(define-const var147 Int (off/406343091 (cast-from-var1097-to-var2648 var850))) ; Statement: $i2 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: int off> 
(define-const var3560 Int (+ var147 var3622!1)) ; Statement: $i3 = $i2 + i0 
(declare-const var850!1 var1097)
(assert (not (= var850!1 null-var1097)))
(assert (= (off/406343091 (cast-from-var1097-to-var2648 var850!1)) var3560)) ; Statement: r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: int off> = $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/940323715=([java.math.BigDecimal], java.lang.String), length/-134980193=([java.lang.String], int), bytes/-2092162108=([com.alibaba.fastjson2.support.csv.CSVWriterUTF8], byte[]), off/406343091=([com.alibaba.fastjson2.support.csv.CSVWriter], int), cast-from-var1097-to-var2648=([com.alibaba.fastjson2.support.csv.CSVWriterUTF8], com.alibaba.fastjson2.support.csv.CSVWriter), getBytes/2018643242=([java.lang.String, int, int, byte[], int], void)}
; {var1097=com.alibaba.fastjson2.support.csv.CSVWriterUTF8, var850=r2, var670=java.math.BigDecimal, var3160=r0, var1530=r1, var3622=i0, var1752=$r3, var2648=com.alibaba.fastjson2.support.csv.CSVWriter, var3156=$i1, var311=0, var147=$i2, var3560=$i3}
; {com.alibaba.fastjson2.support.csv.CSVWriterUTF8=var1097, r2=var850, java.math.BigDecimal=var670, r0=var3160, r1=var1530, i0=var3622, $r3=var1752, com.alibaba.fastjson2.support.csv.CSVWriter=var2648, $i1=var3156, 0=var311, $i2=var147, $i3=var3560}
;seq <java.math.BigDecimal: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: void getBytes(int,int,byte[],int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void getBytes(int,int,byte[],int)>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.support.csv.CSVWriterUTF8;	r0 := @parameter0: java.math.BigDecimal;	if r0 != null goto r1 = virtualinvoke r0.<java.math.BigDecimal: java.lang.String toString()>();	r1 = virtualinvoke r0.<java.math.BigDecimal: java.lang.String toString()>();	i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r3 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: byte[] bytes>;	$i1 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: int off>;	virtualinvoke r1.<java.lang.String: void getBytes(int,int,byte[],int)>(0, i0, $r3, $i1);	$i2 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: int off>;	$i3 = $i2 + i0;	r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: int off> = $i3;	return
;block_num 2
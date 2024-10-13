(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var881 0)
(declare-sort var903 0)
(declare-sort var3908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/940323715 (var903) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun chars/-432516071 (var881) (Array Int Int))
(declare-fun off/406343091 (var3908) Int)
(declare-fun cast-from-var881-to-var3908 (var881) var3908)
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-const null-var881 var881)
(declare-const null-var903 var903)
(declare-const var3739 var881) ; Statement: r2 := @this: com.alibaba.fastjson2.support.csv.CSVWriterUTF16 
(assert (not (= var3739 null-var881)))
(declare-const var2686 var903) ; Statement: r0 := @parameter0: java.math.BigDecimal 
(assert (not (= var2686 null-var903)))
 ; Statement: if r0 != null goto r1 = virtualinvoke r0.<java.math.BigDecimal: java.lang.String toString()>() 
(assert (not (= var2686 null-var903))) ; Cond: r0 != null 
(assert true)
(define-const var2534 String (toString/940323715 var2686)) ; Statement: r1 = virtualinvoke r0.<java.math.BigDecimal: java.lang.String toString()>() 
(assert true)
(define-const var2665 Int (length/-134980193 var2534)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1229 (Array Int Int) (chars/-432516071 var3739)) ; Statement: $r3 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: char[] chars> 
(define-const var913 Int (off/406343091 (cast-from-var881-to-var3908 var3739))) ; Statement: $i1 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: int off> 
(assert true)
;(assert (getChars/1306883398 var2534 0 var2665 var1229 var913)) ; Statement: virtualinvoke r1.<java.lang.String: void getChars(int,int,char[],int)>(0, i0, $r3, $i1) 

(declare-const var2534!1 String)
(declare-const var302 Int)
(declare-const var2665!1 Int)
(declare-const var1229!1 (Array Int Int))
(declare-const var913!1 Int)
(define-const var238 Int (off/406343091 (cast-from-var881-to-var3908 var3739))) ; Statement: $i2 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: int off> 
(define-const var1858 Int (+ var238 var2665!1)) ; Statement: $i3 = $i2 + i0 
(declare-const var3739!1 var881)
(assert (not (= var3739!1 null-var881)))
(assert (= (off/406343091 (cast-from-var881-to-var3908 var3739!1)) var1858)) ; Statement: r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: int off> = $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/940323715=([java.math.BigDecimal], java.lang.String), length/-134980193=([java.lang.String], int), chars/-432516071=([com.alibaba.fastjson2.support.csv.CSVWriterUTF16], char[]), off/406343091=([com.alibaba.fastjson2.support.csv.CSVWriter], int), cast-from-var881-to-var3908=([com.alibaba.fastjson2.support.csv.CSVWriterUTF16], com.alibaba.fastjson2.support.csv.CSVWriter), getChars/1306883398=([java.lang.String, int, int, char[], int], void)}
; {var881=com.alibaba.fastjson2.support.csv.CSVWriterUTF16, var3739=r2, var903=java.math.BigDecimal, var2686=r0, var2534=r1, var2665=i0, var1229=$r3, var3908=com.alibaba.fastjson2.support.csv.CSVWriter, var913=$i1, var302=0, var238=$i2, var1858=$i3}
; {com.alibaba.fastjson2.support.csv.CSVWriterUTF16=var881, r2=var3739, java.math.BigDecimal=var903, r0=var2686, r1=var2534, i0=var2665, $r3=var1229, com.alibaba.fastjson2.support.csv.CSVWriter=var3908, $i1=var913, 0=var302, $i2=var238, $i3=var1858}
;seq <java.math.BigDecimal: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.support.csv.CSVWriterUTF16;	r0 := @parameter0: java.math.BigDecimal;	if r0 != null goto r1 = virtualinvoke r0.<java.math.BigDecimal: java.lang.String toString()>();	r1 = virtualinvoke r0.<java.math.BigDecimal: java.lang.String toString()>();	i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r3 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: char[] chars>;	$i1 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: int off>;	virtualinvoke r1.<java.lang.String: void getChars(int,int,char[],int)>(0, i0, $r3, $i1);	$i2 = r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: int off>;	$i3 = $i2 + i0;	r2.<com.alibaba.fastjson2.support.csv.CSVWriterUTF16: int off> = $i3;	return
;block_num 2
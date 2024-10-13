(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun size/1389889126 (var1322) Int)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun buffer/1389889126 (var1322) (Array Int Int))
(declare-fun append/-420189427 (String (Array Int Int) Int Int) String)
(declare-const null-var1322 var1322)
(declare-const var2075 var1322) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2075 null-var1322)))
(define-const var3573 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(define-const var2368 Int (size/1389889126 var2075)) ; Statement: $i0 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert true)
;(assert (<init>/1906106355 var3573 var2368)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>(int)>($i0) 

(declare-const var3573!1 String)
(declare-const var2368!1 Int)
(define-const var177 (Array Int Int) (buffer/1389889126 var2075)) ; Statement: $r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(define-const var304 Int (size/1389889126 var2075)) ; Statement: $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert true)
(define-const var366 String (append/-420189427 var3573!1 var177 0 var304)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>($r2, 0, $i1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), <init>/1906106355=([java.lang.StringBuffer, int], void), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), append/-420189427=([java.lang.StringBuffer, char[], int, int], java.lang.StringBuffer)}
; {var1322=org.apache.commons.lang3.text.StrBuilder, var2075=r1, var3573=$r0, var2368=$i0, var177=$r2, var304=$i1, var366=$r3}
; {org.apache.commons.lang3.text.StrBuilder=var1322, r1=var2075, $r0=var3573, $i0=var2368, $r2=var177, $i1=var304, $r3=var366}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	$r0 = new java.lang.StringBuffer;	$i0 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	specialinvoke $r0.<java.lang.StringBuffer: void <init>(int)>($i0);	$r2 = r1.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>($r2, 0, $i1);	return $r3
;block_num 1
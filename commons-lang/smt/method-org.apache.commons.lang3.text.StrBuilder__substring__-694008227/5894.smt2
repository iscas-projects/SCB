(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateRange/-28387379 (var1993 Int Int) Int)
(declare-fun String-init () String)
(declare-fun buffer/1389889126 (var1993) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1993 var1993)
(declare-const null-Int Int)
(declare-const var2852 var1993) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2852 null-var1993)))
(declare-const var272 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var272 null-Int)))
(declare-const var2931 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2931 null-Int)))
(assert true)
(define-const var2705 Int (validateRange/-28387379 var2852 var272 var2931)) ; Statement: i3 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: int validateRange(int,int)>(i0, i2) 
(define-const var1003 String String-init) ; Statement: $r1 = new java.lang.String 
(define-const var3907 (Array Int Int) (buffer/1389889126 var2852)) ; Statement: $r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(define-const var3885 Int (- var2705 var272)) ; Statement: $i1 = i3 - i0 
(assert true)
;(assert (<init>/-253222812 var1003 var3907 var272 var3885)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, i0, $i1) 

(declare-const var1003!1 String)
(declare-const var3907!1 (Array Int Int))
(declare-const var272!1 Int)
(declare-const var3885!1 Int)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {validateRange/-28387379=([org.apache.commons.lang3.text.StrBuilder, int, int], int), String-init=([], java.lang.String), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1993=org.apache.commons.lang3.text.StrBuilder, var2852=r0, var272=i0, var2931=i2, var2705=i3, var1003=$r1, var3907=$r2, var3885=$i1}
; {org.apache.commons.lang3.text.StrBuilder=var1993, r0=var2852, i0=var272, i2=var2931, i3=var2705, $r1=var1003, $r2=var3907, $i1=var3885}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i2 := @parameter1: int;	i3 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: int validateRange(int,int)>(i0, i2);	$r1 = new java.lang.String;	$r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$i1 = i3 - i0;	specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, i0, $i1);	return $r1
;block_num 1
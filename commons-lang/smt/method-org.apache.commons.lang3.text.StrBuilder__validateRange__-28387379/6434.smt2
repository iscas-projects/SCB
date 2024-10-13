(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1923 0)
(declare-sort var2736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var1923) Int)
(declare-fun var2736-init () var2736)
(declare-fun <init>/275026640 (var2736 String) void)
(declare-const null-var1923 var1923)
(declare-const null-Int Int)
(declare-const var1993 var1923) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1993 null-var1923)))
(declare-const var2151 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2151 null-Int)))
(declare-const var3100 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3100 null-Int)))
 ; Statement: if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (>= var2151 0)) ; Cond: i0 >= 0 
(define-const var2214 Int (size/1389889126 var1993)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i2 <= $i1 goto (branch) 
(assert (not (<= var3100 var2214))) ; Negate: Cond: i2 <= $i1  
(define-const var3100!1 Int (size/1389889126 var1993)) ; Statement: i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert true) ; Non Conditional
 ; Statement: if i0 <= i2 goto return i2 
(assert (not (<= var2151 var3100!1))) ; Negate: Cond: i0 <= i2  
(define-const var1729 var2736 var2736-init) ; Statement: $r1 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/275026640 var1729 "end < start")) ; Statement: specialinvoke $r1.<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>("end < start") 

(declare-const var1729!1 var2736)
(declare-const var2619 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), var2736-init=([], java.lang.StringIndexOutOfBoundsException), <init>/275026640=([java.lang.StringIndexOutOfBoundsException, java.lang.String], void)}
; {var1923=org.apache.commons.lang3.text.StrBuilder, var1993=r0, var2151=i0, var3100=i2, var2214=$i1, var2736=java.lang.StringIndexOutOfBoundsException, var1729=$r1, var2619="end < start"}
; {org.apache.commons.lang3.text.StrBuilder=var1923, r0=var1993, i0=var2151, i2=var3100, $i1=var2214, java.lang.StringIndexOutOfBoundsException=var2736, $r1=var1729, "end < start"=var2619}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i2 := @parameter1: int;	if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i2 <= $i1 goto (branch);	i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 <= i2 goto return i2;	$r1 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r1.<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>("end < start");	throw $r1
;block_num 5
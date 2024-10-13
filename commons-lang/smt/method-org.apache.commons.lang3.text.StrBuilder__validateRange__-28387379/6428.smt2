(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1042 0)
(declare-sort var172 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var1042) Int)
(declare-fun var172-init () var172)
(declare-fun <init>/275026640 (var172 String) void)
(declare-const null-var1042 var1042)
(declare-const null-Int Int)
(declare-const var1260 var1042) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1260 null-var1042)))
(declare-const var331 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var331 null-Int)))
(declare-const var398 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var398 null-Int)))
 ; Statement: if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (>= var331 0)) ; Cond: i0 >= 0 
(define-const var1305 Int (size/1389889126 var1260)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i2 <= $i1 goto (branch) 
(assert (<= var398 var1305)) ; Cond: i2 <= $i1 
 ; Statement: if i0 <= i2 goto return i2 
(assert (not (<= var331 var398))) ; Negate: Cond: i0 <= i2  
(define-const var1169 var172 var172-init) ; Statement: $r1 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/275026640 var1169 "end < start")) ; Statement: specialinvoke $r1.<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>("end < start") 

(declare-const var1169!1 var172)
(declare-const var3112 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), var172-init=([], java.lang.StringIndexOutOfBoundsException), <init>/275026640=([java.lang.StringIndexOutOfBoundsException, java.lang.String], void)}
; {var1042=org.apache.commons.lang3.text.StrBuilder, var1260=r0, var331=i0, var398=i2, var1305=$i1, var172=java.lang.StringIndexOutOfBoundsException, var1169=$r1, var3112="end < start"}
; {org.apache.commons.lang3.text.StrBuilder=var1042, r0=var1260, i0=var331, i2=var398, $i1=var1305, java.lang.StringIndexOutOfBoundsException=var172, $r1=var1169, "end < start"=var3112}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i2 := @parameter1: int;	if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i2 <= $i1 goto (branch);	if i0 <= i2 goto return i2;	$r1 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r1.<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>("end < start");	throw $r1
;block_num 4
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var859 0)
(declare-sort var2801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2801-init () var2801)
(declare-fun <init>/-25822930 (var2801 Int) void)
(declare-const null-var859 var859)
(declare-const null-Int Int)
(declare-const var1296 var859) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1296 null-var859)))
(declare-const var3242 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3242 null-Int)))
(declare-const var1887 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1887 null-Int)))
 ; Statement: if i0 >= 0 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (not (>= var3242 0))) ; Negate: Cond: i0 >= 0  
(define-const var2012 var2801 var2801-init) ; Statement: $r4 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/-25822930 var2012 var3242)) ; Statement: specialinvoke $r4.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0) 

(declare-const var2012!1 var2801)
(declare-const var3242!1 Int)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2801-init=([], java.lang.StringIndexOutOfBoundsException), <init>/-25822930=([java.lang.StringIndexOutOfBoundsException, int], void)}
; {var859=org.apache.commons.lang3.text.StrBuilder, var1296=r0, var3242=i0, var1887=i1, var2801=java.lang.StringIndexOutOfBoundsException, var2012=$r4}
; {org.apache.commons.lang3.text.StrBuilder=var859, r0=var1296, i0=var3242, i1=var1887, java.lang.StringIndexOutOfBoundsException=var2801, $r4=var2012}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(int)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i1 := @parameter1: int;	if i0 >= 0 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$r4 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r4.<java.lang.StringIndexOutOfBoundsException: void <init>(int)>(i0);	throw $r4
;block_num 2
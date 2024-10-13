(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var433 0)
(declare-sort var2558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2558-init () var2558)
(declare-fun <init>/-1084991535 (var2558 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var153 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var153 null-String)))
(declare-const var732 Int) ; Statement: l2 := @parameter1: long 
(assert (not (= var732 null-Int)))
(declare-const var1937 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var1937 null-Int)))
(assert true)
(define-const var2109 Int (length/-134980193 var153)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= 2 goto i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (>= var2109 2))) ; Negate: Cond: $i0 >= 2  
(define-const var3705 var2558 var2558-init) ; Statement: $r4 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/-1084991535 var3705 "\u81ea\u5b9a\u4e49\u8fdb\u5236\u6700\u5c11\u4e24\u4e2a\u5b57\u7b26\u54e6\uff01")) ; Statement: specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String)>("\u81ea\u5b9a\u4e49\u8fdb\u5236\u6700\u5c11\u4e24\u4e2a\u5b57\u7b26\u54e6\uff01") 

(declare-const var3705!1 var2558)
(declare-const var1490 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2558-init=([], java.lang.RuntimeException), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var153=r0, var433=null_type, var732=l2, var1937=i3, var2109=$i0, var2558=java.lang.RuntimeException, var3705=$r4, var1490="\u81ea\u5b9a\u4e49\u8fdb\u5236\u6700\u5c11\u4e24\u4e2a\u5b57\u7b26\u54e6\uff01"}
; {r0=var153, null_type=var433, l2=var732, i3=var1937, $i0=var2109, java.lang.RuntimeException=var2558, $r4=var3705, "\u81ea\u5b9a\u4e49\u8fdb\u5236\u6700\u5c11\u4e24\u4e2a\u5b57\u7b26\u54e6\uff01"=var1490}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	l2 := @parameter1: long;	i3 := @parameter2: int;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 >= 2 goto i1 = virtualinvoke r0.<java.lang.String: int length()>();	$r4 = new java.lang.RuntimeException;	specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String)>("\u81ea\u5b9a\u4e49\u8fdb\u5236\u6700\u5c11\u4e24\u4e2a\u5b57\u7b26\u54e6\uff01");	throw $r4
;block_num 2
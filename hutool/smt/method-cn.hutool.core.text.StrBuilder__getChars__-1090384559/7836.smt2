(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1116 0)
(declare-sort var724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var724-init () var724)
(declare-fun <init>/275026640 (var724 String) void)
(declare-const null-var1116 var1116)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var805 var1116) ; Statement: r0 := @this: cn.hutool.core.text.StrBuilder 
(assert (not (= var805 null-var1116)))
(declare-const var2507 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var2507 null-Int)))
(declare-const var1673 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var1673 null-Int)))
(declare-const var1065 (Array Int Int)) ; Statement: r1 := @parameter2: char[] 
(assert (not (= var1065 null-__Array__Int__Int__)))
(declare-const var1608 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1608 null-Int)))
 ; Statement: if i3 >= 0 goto (branch) 
(assert (>= var2507 0)) ; Cond: i3 >= 0 
 ; Statement: if i4 >= 0 goto $i0 = r0.<cn.hutool.core.text.StrBuilder: int position> 
(assert (not (>= var1673 0))) ; Negate: Cond: i4 >= 0  
(define-const var1673!1 Int 0) ; Statement: i4 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 <= i4 goto $r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value> 
(assert (not (<= var2507 var1673!1))) ; Negate: Cond: i3 <= i4  
(define-const var1339 var724 var724-init) ; Statement: $r3 = new java.lang.StringIndexOutOfBoundsException 
(assert true)
;(assert (<init>/275026640 var1339 "srcBegin > srcEnd")) ; Statement: specialinvoke $r3.<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>("srcBegin > srcEnd") 

(declare-const var1339!1 var724)
(declare-const var1589 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var724-init=([], java.lang.StringIndexOutOfBoundsException), <init>/275026640=([java.lang.StringIndexOutOfBoundsException, java.lang.String], void)}
; {var1116=cn.hutool.core.text.StrBuilder, var805=r0, var2507=i3, var1673=i4, var1065=r1, var1608=i1, var724=java.lang.StringIndexOutOfBoundsException, var1339=$r3, var1589="srcBegin > srcEnd"}
; {cn.hutool.core.text.StrBuilder=var1116, r0=var805, i3=var2507, i4=var1673, r1=var1065, i1=var1608, java.lang.StringIndexOutOfBoundsException=var724, $r3=var1339, "srcBegin > srcEnd"=var1589}
;seq <java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>
;cnt {"<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.core.text.StrBuilder;	i3 := @parameter0: int;	i4 := @parameter1: int;	r1 := @parameter2: char[];	i1 := @parameter3: int;	if i3 >= 0 goto (branch);	if i4 >= 0 goto $i0 = r0.<cn.hutool.core.text.StrBuilder: int position>;	i4 = 0;	goto [?= (branch)];	if i3 <= i4 goto $r2 = r0.<cn.hutool.core.text.StrBuilder: char[] value>;	$r3 = new java.lang.StringIndexOutOfBoundsException;	specialinvoke $r3.<java.lang.StringIndexOutOfBoundsException: void <init>(java.lang.String)>("srcBegin > srcEnd");	throw $r3
;block_num 5
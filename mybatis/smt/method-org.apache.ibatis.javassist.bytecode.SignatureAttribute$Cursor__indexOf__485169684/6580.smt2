(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1104 0)
(declare-sort var2029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/442744389 (var1104) Int)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-const null-var1104 var1104)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3124 var1104) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var3124 null-var1104)))
(declare-const var2145 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2145 null-String)))
(declare-const var3468 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3468 null-Int)))
(define-const var2803 Int (position/442744389 var3124)) ; Statement: $i1 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert true)
(define-const var3765 Int (indexOf/1426977840 var2145 var3468 var2803)) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(i0, $i1) 
 ; Statement: if i2 >= 0 goto $i3 = i2 + 1 
(assert (>= var3765 0)) ; Cond: i2 >= 0 
(define-const var1082 Int (+ var3765 1)) ; Statement: $i3 = i2 + 1 
(declare-const var3124!1 var1104)
(assert (not (= var3124!1 null-var1104)))
(assert (= (position/442744389 var3124!1) var1082)) ; Statement: r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i3 
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), indexOf/1426977840=([java.lang.String, int, int], int)}
; {var1104=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var3124=r1, var2145=r0, var2029=null_type, var3468=i0, var2803=$i1, var3765=i2, var1082=$i3}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var1104, r1=var3124, r0=var2145, null_type=var2029, i0=var3468, $i1=var2803, i2=var3765, $i3=var1082}
;seq <java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i1 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(i0, $i1);	if i2 >= 0 goto $i3 = i2 + 1;	$i3 = i2 + 1;	r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i3;	return i2
;block_num 2
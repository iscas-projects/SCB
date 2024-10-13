(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1666 0)
(declare-sort var899 0)
(declare-sort var464 0)
(declare-sort var2784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/442744389 (var1666) Int)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun var2784_access$000/1234693274 (String) var464)
(declare-const null-var1666 var1666)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3887 var1666) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var3887 null-var1666)))
(declare-const var1371 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1371 null-String)))
(declare-const var3193 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3193 null-Int)))
(define-const var1204 Int (position/442744389 var3887)) ; Statement: $i1 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert true)
(define-const var969 Int (indexOf/1426977840 var1371 var3193 var1204)) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(i0, $i1) 
 ; Statement: if i2 >= 0 goto $i3 = i2 + 1 
(assert (not (>= var969 0))) ; Negate: Cond: i2 >= 0  
(define-const var1785 var464 (var2784_access$000/1234693274 var1371)) ; Statement: $r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode access$000(java.lang.String)>(r0) 
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), indexOf/1426977840=([java.lang.String, int, int], int), var2784_access$000/1234693274=([java.lang.String], org.apache.ibatis.javassist.bytecode.BadBytecode)}
; {var1666=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var3887=r1, var1371=r0, var899=null_type, var3193=i0, var1204=$i1, var969=i2, var464=org.apache.ibatis.javassist.bytecode.BadBytecode, var2784=org.apache.ibatis.javassist.bytecode.SignatureAttribute, var1785=$r2}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var1666, r1=var3887, r0=var1371, null_type=var899, i0=var3193, $i1=var1204, i2=var969, org.apache.ibatis.javassist.bytecode.BadBytecode=var464, org.apache.ibatis.javassist.bytecode.SignatureAttribute=var2784, $r2=var1785}
;seq <java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i1 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(i0, $i1);	if i2 >= 0 goto $i3 = i2 + 1;	$r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode access$000(java.lang.String)>(r0);	throw $r2
;block_num 2
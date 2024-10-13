(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2609 0)
(declare-sort var2163 0)
(declare-sort var2051 0)
(declare-sort var3442 0)
(declare-sort var2560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/442744389 (var2163) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2051-init () var2051)
(declare-fun var2560_parseType/-103249938 (String var2163) var3442)
(declare-fun <init>/1855302899 (var2051 Int var3442) void)
(declare-const null-String String)
(declare-const null-var2163 var2163)
(declare-const var967 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var967 null-String)))
(declare-const var2232 var2163) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var2232 null-var2163)))
(define-const var3806 Int 1) ; Statement: i3 = 1 
(assert true) ; Non Conditional
(define-const var2026 Int (position/442744389 var2232)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var1461 Int (+ var2026 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var2232!1 var2163)
(assert (not (= var2232!1 null-var2163)))
(assert (= (position/442744389 var2232!1) var1461)) ; Statement: r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i1 
(assert (and true (and (> (str.len var967) var1461) (<= 0 var1461))))
(define-const var1507 Int (charAt/698050440 var967 var1461)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i1) 
(define-const var391 Int (cast-from-Int-to-Int var1507)) ; Statement: $i4 = (int) $c2 
 ; Statement: if $i4 != 91 goto $r4 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType 
(assert (not (= var391 91))) ; Cond: $i4 != 91 
(define-const var3875 var2051 var2051-init) ; Statement: $r4 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType 
(define-const var3691 var3442 (var2560_parseType/-103249938 var967 var2232!1)) ; Statement: $r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type parseType(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r0, r1) 
(assert true)
;(assert (<init>/1855302899 var3875 var3806 var3691)) ; Statement: specialinvoke $r4.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType: void <init>(int,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type)>(i3, $r3) 

(declare-const var3875!1 var2051)
(declare-const var3806!1 Int)
(declare-const var3691!1 var3442)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2051-init=([], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType), var2560_parseType/-103249938=([java.lang.String, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type), <init>/1855302899=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType, int, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type], void)}
; {var967=r0, var2609=null_type, var2163=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var2232=r1, var3806=i3, var2026=$i0, var1461=$i1, var1507=$c2, var391=$i4, var2051=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType, var3875=$r4, var3442=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type, var2560=org.apache.ibatis.javassist.bytecode.SignatureAttribute, var3691=$r3}
; {r0=var967, null_type=var2609, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var2163, r1=var2232, i3=var3806, $i0=var2026, $i1=var1461, $c2=var1507, $i4=var391, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType=var2051, $r4=var3875, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type=var3442, org.apache.ibatis.javassist.bytecode.SignatureAttribute=var2560, $r3=var3691}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	i3 = 1;	$i0 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i1 = $i0 + 1;	r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i1;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i1);	$i4 = (int) $c2;	if $i4 != 91 goto $r4 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType;	$r4 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType;	$r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type parseType(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r0, r1);	specialinvoke $r4.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType: void <init>(int,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type)>(i3, $r3);	return $r4
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var14 0)
(declare-sort var763 0)
(declare-sort var2282 0)
(declare-sort var1577 0)
(declare-sort var338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/442744389 (var763) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2282_make/-921465979 (String Int Int (Array Int var1577) var2282) var2282)
(declare-fun var338_parseClassType2/181761063 (String var763 var2282) var2282)
(declare-const null-String String)
(declare-const null-var763 var763)
(declare-const null-var2282 var2282)
(declare-const null-__Array__Int__var1577__ (Array Int var1577))
(declare-const var262 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var262 null-String)))
(declare-const var1780 var763) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var1780 null-var763)))
(declare-const var2780 var2282) ; Statement: r2 := @parameter2: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType 
(assert (not (= var2780 null-var2282)))
(define-const var3100 Int (position/442744389 var1780)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var1212 Int (+ var3100 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var1780!1 var763)
(assert (not (= var1780!1 null-var763)))
(assert (= (position/442744389 var1780!1) var1212)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i1 
(assert true) ; Non Conditional
(define-const var1095 Int (position/442744389 var1780!1)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var3475 Int (+ var1095 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var1780!2 var763)
(assert (not (= var1780!2 null-var763)))
(assert (= (position/442744389 var1780!2) var3475)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i3 
(assert (and true (and (> (str.len var262) var1095) (<= 0 var1095))))
(define-const var3177 Int (charAt/698050440 var262 var1095)) ; Statement: $c8 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i2) 
(define-const var2470 Int var3177) ; Statement: c9 = $c8 
(define-const var3139 Int (cast-from-Int-to-Int var3177)) ; Statement: $i12 = (int) $c8 
 ; Statement: if $i12 == 36 goto $i10 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert (= var3139 36)) ; Cond: $i12 == 36 
(define-const var3128 Int (position/442744389 var1780!2)) ; Statement: $i10 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var1674 Int (- var3128 1)) ; Statement: $i11 = $i10 - 1 
(define-const var3153 Int (cast-from-Int-to-Int var3177)) ; Statement: $i15 = (int) $c8 
 ; Statement: if $i15 != 60 goto r5 = null 
(assert (not (= var3153 60))) ; Cond: $i15 != 60 
(define-const var1463 (Array Int var1577) null-__Array__Int__var1577__) ; Statement: r5 = null 
(assert true) ; Non Conditional
(define-const var126 var2282 (var2282_make/-921465979 var262 var1212 var1674 var1463 var2780)) ; Statement: $r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType make(java.lang.String,int,int,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[],org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, $i1, $i11, r5, r2) 
(define-const var1285 Int (cast-from-Int-to-Int var2470)) ; Statement: $i16 = (int) c9 
 ; Statement: if $i16 == 36 goto $i4 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert (= var1285 36)) ; Cond: $i16 == 36 
(define-const var914 Int (position/442744389 var1780!2)) ; Statement: $i4 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var2646 Int (- var914 1)) ; Statement: $i5 = $i4 - 1 
(declare-const var1780!3 var763)
(assert (not (= var1780!3 null-var763)))
(assert (= (position/442744389 var1780!3) var2646)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i5 
(define-const var713 var2282 (var338_parseClassType2/181761063 var262 var1780!3 var126)) ; Statement: $r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, $r4) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2282_make/-921465979=([java.lang.String, int, int, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType), var338_parseClassType2/181761063=([java.lang.String, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)}
; {var262=r1, var14=null_type, var763=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var1780=r0, var2282=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var2780=r2, var3100=$i0, var1212=$i1, var1095=$i2, var3475=$i3, var3177=$c8, var2470=c9, var3139=$i12, var3128=$i10, var1674=$i11, var3153=$i15, var1577=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument, var1463=r5, var126=$r4, var1285=$i16, var914=$i4, var2646=$i5, var338=org.apache.ibatis.javassist.bytecode.SignatureAttribute, var713=$r3}
; {r1=var262, null_type=var14, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var763, r0=var1780, org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var2282, r2=var2780, $i0=var3100, $i1=var1212, $i2=var1095, $i3=var3475, $c8=var3177, c9=var2470, $i12=var3139, $i10=var3128, $i11=var1674, $i15=var3153, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument=var1577, r5=var1463, $r4=var126, $i16=var1285, $i4=var914, $i5=var2646, org.apache.ibatis.javassist.bytecode.SignatureAttribute=var338, $r3=var713}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	r2 := @parameter2: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType;	$i0 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i1 = $i0 + 1;	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i1;	$i2 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i3 = $i2 + 1;	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i3;	$c8 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i2);	c9 = $c8;	$i12 = (int) $c8;	if $i12 == 36 goto $i10 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i10 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i11 = $i10 - 1;	$i15 = (int) $c8;	if $i15 != 60 goto r5 = null;	r5 = null;	$r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType make(java.lang.String,int,int,org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[],org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, $i1, $i11, r5, r2);	$i16 = (int) c9;	if $i16 == 36 goto $i4 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i4 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i5 = $i4 - 1;	r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i5;	$r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType parseClassType2(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor,org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType)>(r1, r0, $r4);	return $r3
;block_num 6
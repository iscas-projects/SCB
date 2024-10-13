(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2346 0)
(declare-sort var3349 0)
(declare-sort var2109 0)
(declare-sort var3532 0)
(declare-sort var1302 0)
(declare-sort var1868 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2109-init () var2109)
(declare-fun <init>/-325640736 (var2109) void)
(declare-fun position/442744389 (var3349) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3532_size/-959786421 (var3532) Int)
(declare-fun cast-from-var2109-to-var3532 (var2109) var3532)
(declare-fun arr-var1302-init () (Array Int var1302))
(declare-fun var3532_toArray/-775711681 (var3532 (Array Int var1868)) (Array Int var1868))
(declare-fun cast-from-__Array__Int__var1302__-to-__Array__Int__var1868__ ((Array Int var1302)) (Array Int var1868))
(declare-fun cast-from-__Array__Int__var1868__-to-__Array__Int__var1302__ ((Array Int var1868)) (Array Int var1302))
(declare-const null-String String)
(declare-const null-var3349 var3349)
(declare-const var3442 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3442 null-String)))
(declare-const var1432 var3349) ; Statement: r2 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var1432 null-var3349)))
(define-const var3871 var2109 var2109-init) ; Statement: $r13 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3871)) ; Statement: specialinvoke $r13.<java.util.ArrayList: void <init>()>() 

(declare-const var3871!1 var2109)
(define-const var1722 Int (position/442744389 var1432)) ; Statement: $i0 = r2.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(assert (and true (and (> (str.len var3442) var1722) (<= 0 var1722))))
(define-const var2504 Int (charAt/698050440 var3442 var1722)) ; Statement: $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var152 Int (cast-from-Int-to-Int var2504)) ; Statement: $i16 = (int) $c1 
 ; Statement: if $i16 != 60 goto $i2 = interfaceinvoke $r13.<java.util.List: int size()>() 
(assert (not (= var152 60))) ; Cond: $i16 != 60 
(define-const var3971 Int (var3532_size/-959786421 (cast-from-var2109-to-var3532 var3871!1))) ; Statement: $i2 = interfaceinvoke $r13.<java.util.List: int size()>() 
(define-const var260 (Array Int var1302) arr-var1302-init) ; Statement: $r3 = newarray (org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter)[$i2] 
(define-const var2358 (Array Int var1868) (var3532_toArray/-775711681 (cast-from-var2109-to-var3532 var3871!1) (cast-from-__Array__Int__var1302__-to-__Array__Int__var1868__ var260))) ; Statement: $r4 = interfaceinvoke $r13.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r3) 
(define-const var2423 (Array Int var1302) (cast-from-__Array__Int__var1868__-to-__Array__Int__var1302__ var2358)) ; Statement: $r5 = (org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]) $r4 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2109-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3532_size/-959786421=([java.util.List], int), cast-from-var2109-to-var3532=([java.util.ArrayList], java.util.List), arr-var1302-init=([], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]), var3532_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__var1302__-to-__Array__Int__var1868__=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]], java.lang.Object[]), cast-from-__Array__Int__var1868__-to-__Array__Int__var1302__=([java.lang.Object[]], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[])}
; {var3442=r1, var2346=null_type, var3349=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var1432=r2, var2109=java.util.ArrayList, var3871=$r13, var1722=$i0, var2504=$c1, var152=$i16, var3532=java.util.List, var3971=$i2, var1302=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var260=$r3, var1868=java.lang.Object, var2358=$r4, var2423=$r5}
; {r1=var3442, null_type=var2346, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var3349, r2=var1432, java.util.ArrayList=var2109, $r13=var3871, $i0=var1722, $c1=var2504, $i16=var152, java.util.List=var3532, $i2=var3971, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var1302, $r3=var260, java.lang.Object=var1868, $r4=var2358, $r5=var2423}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	$r13 = new java.util.ArrayList;	specialinvoke $r13.<java.util.ArrayList: void <init>()>();	$i0 = r2.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i0);	$i16 = (int) $c1;	if $i16 != 60 goto $i2 = interfaceinvoke $r13.<java.util.List: int size()>();	$i2 = interfaceinvoke $r13.<java.util.List: int size()>();	$r3 = newarray (org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter)[$i2];	$r4 = interfaceinvoke $r13.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r3);	$r5 = (org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]) $r4;	return $r5
;block_num 2
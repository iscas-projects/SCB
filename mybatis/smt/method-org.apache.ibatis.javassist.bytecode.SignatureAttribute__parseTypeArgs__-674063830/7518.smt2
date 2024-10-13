(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2372 0)
(declare-sort var618 0)
(declare-sort var2245 0)
(declare-sort var1508 0)
(declare-sort var3919 0)
(declare-sort var519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2245-init () var2245)
(declare-fun <init>/-325640736 (var2245) void)
(declare-fun position/442744389 (var618) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1508_size/-959786421 (var1508) Int)
(declare-fun cast-from-var2245-to-var1508 (var2245) var1508)
(declare-fun arr-var3919-init () (Array Int var3919))
(declare-fun var1508_toArray/-775711681 (var1508 (Array Int var519)) (Array Int var519))
(declare-fun cast-from-__Array__Int__var3919__-to-__Array__Int__var519__ ((Array Int var3919)) (Array Int var519))
(declare-fun cast-from-__Array__Int__var519__-to-__Array__Int__var3919__ ((Array Int var519)) (Array Int var3919))
(declare-const null-String String)
(declare-const null-var618 var618)
(declare-const var1794 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1794 null-String)))
(declare-const var335 var618) ; Statement: r2 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert (not (= var335 null-var618)))
(define-const var1156 var2245 var2245-init) ; Statement: $r10 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1156)) ; Statement: specialinvoke $r10.<java.util.ArrayList: void <init>()>() 

(declare-const var1156!1 var2245)
(assert true) ; Non Conditional
(define-const var1077 Int (position/442744389 var335)) ; Statement: $i0 = r2.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var2349 Int (+ var1077 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var335!1 var618)
(assert (not (= var335!1 null-var618)))
(assert (= (position/442744389 var335!1) var2349)) ; Statement: r2.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i1 
(assert (and true (and (> (str.len var1794) var1077) (<= 0 var1077))))
(define-const var2321 Int (charAt/698050440 var1794 var1077)) ; Statement: $c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var2398 Int var2321) ; Statement: c6 = $c2 
(define-const var1278 Int (cast-from-Int-to-Int var2321)) ; Statement: $i7 = (int) $c2 
 ; Statement: if $i7 == 62 goto $i3 = interfaceinvoke $r10.<java.util.List: int size()>() 
(assert (= var1278 62)) ; Cond: $i7 == 62 
(define-const var1284 Int (var1508_size/-959786421 (cast-from-var2245-to-var1508 var1156!1))) ; Statement: $i3 = interfaceinvoke $r10.<java.util.List: int size()>() 
(define-const var860 (Array Int var3919) arr-var3919-init) ; Statement: $r3 = newarray (org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument)[$i3] 
(define-const var1011 (Array Int var519) (var1508_toArray/-775711681 (cast-from-var2245-to-var1508 var1156!1) (cast-from-__Array__Int__var3919__-to-__Array__Int__var519__ var860))) ; Statement: $r4 = interfaceinvoke $r10.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r3) 
(define-const var707 (Array Int var3919) (cast-from-__Array__Int__var519__-to-__Array__Int__var3919__ var1011)) ; Statement: $r5 = (org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[]) $r4 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2245-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1508_size/-959786421=([java.util.List], int), cast-from-var2245-to-var1508=([java.util.ArrayList], java.util.List), arr-var3919-init=([], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[]), var1508_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__var3919__-to-__Array__Int__var519__=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[]], java.lang.Object[]), cast-from-__Array__Int__var519__-to-__Array__Int__var3919__=([java.lang.Object[]], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[])}
; {var1794=r1, var2372=null_type, var618=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var335=r2, var2245=java.util.ArrayList, var1156=$r10, var1077=$i0, var2349=$i1, var2321=$c2, var2398=c6, var1278=$i7, var1508=java.util.List, var1284=$i3, var3919=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument, var860=$r3, var519=java.lang.Object, var1011=$r4, var707=$r5}
; {r1=var1794, null_type=var2372, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var618, r2=var335, java.util.ArrayList=var2245, $r10=var1156, $i0=var1077, $i1=var2349, $c2=var2321, c6=var2398, $i7=var1278, java.util.List=var1508, $i3=var1284, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument=var3919, $r3=var860, java.lang.Object=var519, $r4=var1011, $r5=var707}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	$r10 = new java.util.ArrayList;	specialinvoke $r10.<java.util.ArrayList: void <init>()>();	$i0 = r2.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i1 = $i0 + 1;	r2.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i1;	$c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i0);	c6 = $c2;	$i7 = (int) $c2;	if $i7 == 62 goto $i3 = interfaceinvoke $r10.<java.util.List: int size()>();	$i3 = interfaceinvoke $r10.<java.util.List: int size()>();	$r3 = newarray (org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument)[$i3];	$r4 = interfaceinvoke $r10.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r3);	$r5 = (org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[]) $r4;	return $r5
;block_num 3
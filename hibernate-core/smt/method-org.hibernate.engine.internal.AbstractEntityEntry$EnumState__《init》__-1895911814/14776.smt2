(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2349 0)
(declare-sort var47 0)
(declare-sort var1130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var47) void)
(declare-fun cast-from-var2349-to-var47 (var2349) var47)
(declare-fun getEnumConstants/1422352872 (ClassObject) (Array Int var47))
(declare-fun cast-from-__Array__Int__var47__-to-__Array__Int__var1130__ ((Array Int var47)) (Array Int var1130))
(declare-fun getLength-Arr-var1130-1 ((Array Int var1130)) Int)
(declare-fun offset/791466190 (var2349) Int)
(declare-fun enumConstants/791466190 (var2349) (Array Int var1130))
(declare-fun mask/791466190 (var2349) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun unsetMask/791466190 (var2349) Int)
(declare-const null-var2349 var2349)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const var1520 var2349) ; Statement: r0 := @this: org.hibernate.engine.internal.AbstractEntityEntry$EnumState 
(assert (not (= var1520 null-var2349)))
(declare-const var1206 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var1206 null-Int)))
(declare-const var1696 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var1696 null-ClassObject)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2349-to-var47 var1520))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1520!1 var2349)
(assert true)
(define-const var479 (Array Int var47) (getEnumConstants/1422352872 var1696)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.Object[] getEnumConstants()>() 
(define-const var2995 (Array Int var1130) (cast-from-__Array__Int__var47__-to-__Array__Int__var1130__ var479)) ; Statement: r3 = (java.lang.Enum[]) $r2 
(define-const var2165 Int (getLength-Arr-var1130-1 var2995)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i0 <= 15 goto r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int offset> = i1 
(assert (<= var2165 15)) ; Cond: $i0 <= 15 
(declare-const var1520!2 var2349)
(assert (not (= var1520!2 null-var2349)))
(assert (= (offset/791466190 var1520!2) var1206)) ; Statement: r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int offset> = i1 
(declare-const var1520!3 var2349)
(assert (not (= var1520!3 null-var2349)))
(assert (= (enumConstants/791466190 var1520!3) var2995)) ; Statement: r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: java.lang.Enum[] enumConstants> = r3 
(define-const var1731 Int (* 15 (to_int (^ 2 var1206)))) ; Statement: $i2 = 15 << i1 
(declare-const var1520!4 var2349)
(assert (not (= var1520!4 null-var2349)))
(assert (= (mask/791466190 var1520!4) var1731)) ; Statement: r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int mask> = $i2 
(define-const var3264 Int (mask/791466190 var1520!4)) ; Statement: $i3 = r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int mask> 
(define-const var63 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
(define-const var1405 Int (bv2nat (bvxor ((_ int2bv 64) var3264) ((_ int2bv 64) var63)))) ; Statement: $i4 = $i3 ^ $i7 
(define-const var1782 Int (cast-from-Int-to-Int 65535)) ; Statement: $i9 = (int) 65535 
(define-const var1929 Int (bv2nat (bvand ((_ int2bv 64) var1782) ((_ int2bv 64) var1405)))) ; Statement: $i5 = $i9 & $i4 
(declare-const var1520!5 var2349)
(assert (not (= var1520!5 null-var2349)))
(assert (= (unsetMask/791466190 var1520!5) var1929)) ; Statement: r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int unsetMask> = $i5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2349-to-var47=([org.hibernate.engine.internal.AbstractEntityEntry$EnumState], java.lang.Object), getEnumConstants/1422352872=([java.lang.Class], java.lang.Object[]), cast-from-__Array__Int__var47__-to-__Array__Int__var1130__=([java.lang.Object[]], java.lang.Enum[]), getLength-Arr-var1130-1=([java.lang.Enum[]], int), offset/791466190=([org.hibernate.engine.internal.AbstractEntityEntry$EnumState], int), enumConstants/791466190=([org.hibernate.engine.internal.AbstractEntityEntry$EnumState], java.lang.Enum[]), mask/791466190=([org.hibernate.engine.internal.AbstractEntityEntry$EnumState], int), cast-from-Int-to-Int=([int], int), unsetMask/791466190=([org.hibernate.engine.internal.AbstractEntityEntry$EnumState], int)}
; {var2349=org.hibernate.engine.internal.AbstractEntityEntry$EnumState, var1520=r0, var1206=i1, var1696=r1, var47=java.lang.Object, var479=$r2, var1130=java.lang.Enum, var2995=r3, var2165=$i0, var1731=$i2, var3264=$i3, var63=$i7, var1405=$i4, var1782=$i9, var1929=$i5}
; {org.hibernate.engine.internal.AbstractEntityEntry$EnumState=var2349, r0=var1520, i1=var1206, r1=var1696, java.lang.Object=var47, $r2=var479, java.lang.Enum=var1130, r3=var2995, $i0=var2165, $i2=var1731, $i3=var3264, $i7=var63, $i4=var1405, $i9=var1782, $i5=var1929}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.internal.AbstractEntityEntry$EnumState;	i1 := @parameter0: int;	r1 := @parameter1: java.lang.Class;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.Object[] getEnumConstants()>();	r3 = (java.lang.Enum[]) $r2;	$i0 = lengthof r3;	if $i0 <= 15 goto r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int offset> = i1;	r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int offset> = i1;	r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: java.lang.Enum[] enumConstants> = r3;	$i2 = 15 << i1;	r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int mask> = $i2;	$i3 = r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int mask>;	$i7 = (int) -1;	$i4 = $i3 ^ $i7;	$i9 = (int) 65535;	$i5 = $i9 & $i4;	r0.<org.hibernate.engine.internal.AbstractEntityEntry$EnumState: int unsetMask> = $i5;	return
;block_num 2
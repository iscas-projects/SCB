(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3902 0)
(declare-sort var3465 0)
(declare-sort var3323 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun load/748760400 (var3902 String) var3902)
(declare-fun dynamicGetIndex/1619636414 (var3902 var3465 Int Bool) var3902)
(declare-const null-var3902 var3902)
(declare-const null-var3465 var3465)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3162 var3902) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.MethodEmitter 
(assert (not (= var3162 null-var3902)))
(declare-const var2927 var3465) ; Statement: r2 := @parameter0: jdk.nashorn.internal.codegen.types.Type 
(assert (not (= var2927 null-var3465)))
(declare-const var2638 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2638 null-String)))
(declare-const var472 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var472 null-Int)))
(declare-const var3420 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3420 null-Bool)))
(declare-const var3026 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3026 null-Bool)))
(assert true)
(define-const var1232 Int (length/-134980193 var2638)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3331 Int (cast-from-Int-to-Int 32768)) ; Statement: $i3 = (int) 32768 
 ; Statement: if $i0 <= $i3 goto $r3 = staticinvoke <jdk.nashorn.internal.codegen.MethodEmitter: java.lang.String getProgramPoint(int)>(i1) 
(assert (not (<= var1232 var3331))) ; Negate: Cond: $i0 <= $i3  
(assert true)
(define-const var1625 var3902 (load/748760400 var3162 var2638)) ; Statement: $r4 = virtualinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter load(java.lang.String)>(r0) 
(assert true)
(define-const var2775 var3902 (dynamicGetIndex/1619636414 var1625 var2927 var472 var3420)) ; Statement: $r5 = virtualinvoke $r4.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter dynamicGetIndex(jdk.nashorn.internal.codegen.types.Type,int,boolean)>(r2, i1, z1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int), load/748760400=([jdk.nashorn.internal.codegen.MethodEmitter, java.lang.String], jdk.nashorn.internal.codegen.MethodEmitter), dynamicGetIndex/1619636414=([jdk.nashorn.internal.codegen.MethodEmitter, jdk.nashorn.internal.codegen.types.Type, int, boolean], jdk.nashorn.internal.codegen.MethodEmitter)}
; {var3902=jdk.nashorn.internal.codegen.MethodEmitter, var3162=r1, var3465=jdk.nashorn.internal.codegen.types.Type, var2927=r2, var2638=r0, var3323=null_type, var472=i1, var3420=z1, var3026=z2, var1232=$i0, var3331=$i3, var1625=$r4, var2775=$r5}
; {jdk.nashorn.internal.codegen.MethodEmitter=var3902, r1=var3162, jdk.nashorn.internal.codegen.types.Type=var3465, r2=var2927, r0=var2638, null_type=var3323, i1=var472, z1=var3420, z2=var3026, $i0=var1232, $i3=var3331, $r4=var1625, $r5=var2775}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.MethodEmitter;	r2 := @parameter0: jdk.nashorn.internal.codegen.types.Type;	r0 := @parameter1: java.lang.String;	i1 := @parameter2: int;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = (int) 32768;	if $i0 <= $i3 goto $r3 = staticinvoke <jdk.nashorn.internal.codegen.MethodEmitter: java.lang.String getProgramPoint(int)>(i1);	$r4 = virtualinvoke r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter load(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter dynamicGetIndex(jdk.nashorn.internal.codegen.types.Type,int,boolean)>(r2, i1, z1);	return $r5
;block_num 2
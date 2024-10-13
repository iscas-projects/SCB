(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1145_isNotEmpty/-1844001799 (String) Bool)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3052 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3052 null-String)))
(declare-const var1892 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var1892 null-String)))
(declare-const var635 String) ; Statement: r2 := @parameter2: java.lang.CharSequence 
(assert (not (= var635 null-String)))
(define-const var1391 Int 0) ; Statement: i3 = 0 
(define-const var3929 Bool (var1145_isNotEmpty/-1844001799 var3052)) ; Statement: $z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r1) 
(assert (= (ite var3929 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1666 Bool (var1145_isNotEmpty/-1844001799 var1892)) ; Statement: $z1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $z2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r2) 
(assert (= (ite var1666 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3219 Bool (var1145_isNotEmpty/-1844001799 var635)) ; Statement: $z2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r2) 
 ; Statement: if $z2 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var3219 1 0) 0)) ; Cond: $z2 == 0 
(define-const var83 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var83 var1391)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(i3) 

(declare-const var83!1 String)
(declare-const var1391!1 Int)
(define-const var1679 Bool (var1145_isNotEmpty/-1844001799 var1892)) ; Statement: $z3 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z3 == 0 goto $z7 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r0) 
(assert (= (ite var1679 1 0) 0)) ; Cond: $z3 == 0 
(define-const var1412 Bool (var1145_isNotEmpty/-1844001799 var3052)) ; Statement: $z7 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z7 == 0 goto $z4 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r2) 
(assert (= (ite var1412 1 0) 0)) ; Cond: $z7 == 0 
(define-const var2221 Bool (var1145_isNotEmpty/-1844001799 var635)) ; Statement: $z4 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r2) 
 ; Statement: if $z4 == 0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2221 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var153 String (toString/-2075883882 var83!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1145_isNotEmpty/-1844001799=([java.lang.CharSequence], boolean), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3052=r0, var1892=r1, var635=r2, var1391=i3, var1145=cn.hutool.core.text.CharSequenceUtil, var3929=$z0, var1666=$z1, var3219=$z2, var83=$r3, var1679=$z3, var1412=$z7, var2221=$z4, var153=$r4}
; {r0=var3052, r1=var1892, r2=var635, i3=var1391, cn.hutool.core.text.CharSequenceUtil=var1145, $z0=var3929, $z1=var1666, $z2=var3219, $r3=var83, $z3=var1679, $z7=var1412, $z4=var2221, $r4=var153}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	r2 := @parameter2: java.lang.CharSequence;	i3 = 0;	$z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r1);	$z1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $z2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r2);	$z2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r2);	if $z2 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(i3);	$z3 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r1);	if $z3 == 0 goto $z7 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r0);	$z7 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r0);	if $z7 == 0 goto $z4 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r2);	$z4 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isNotEmpty(java.lang.CharSequence)>(r2);	if $z4 == 0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 7
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2861 0)
(declare-sort var1301 0)
(declare-sort var2342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var1301) ClassObject)
(declare-fun cast-from-var2861-to-var1301 (var2861) var1301)
(declare-fun fracBitNum/1647817485 (var2861) Int)
(declare-fun var2342-init () var2342)
(declare-fun <init>/-325640736 (var2342) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-const null-var2861 var2861)
(declare-const null-Int Int)
(declare-const var510 var2861) ; Statement: r0 := @this: cn.hutool.core.text.Simhash 
(assert (not (= var510 null-var2861)))
(declare-const var778 Int) ; Statement: r3 := @parameter0: java.lang.Long 
(assert (not (= var778 null-Int)))
(assert true)
;(assert (getClass/1258963082 (cast-from-var2861-to-var1301 var510))) ; Statement: virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var510!1 var2861)
(define-const var2201 Int (fracBitNum/1647817485 var510!1)) ; Statement: i0 = r0.<cn.hutool.core.text.Simhash: int fracBitNum> 
(define-const var3683 var2342 var2342-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3683)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var3683!1 var2342)
(define-const var2393 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2393)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2393!1 String)
(assert (= var2393!1 ""))
(define-const var556 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= 64 goto return $r1 
(assert (>= var556 64)) ; Cond: i6 >= 64 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2861-to-var1301=([cn.hutool.core.text.Simhash], java.lang.Object), fracBitNum/1647817485=([cn.hutool.core.text.Simhash], int), var2342-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void)}
; {var2861=cn.hutool.core.text.Simhash, var510=r0, var778=r3, var1301=java.lang.Object, var2201=i0, var2342=java.util.ArrayList, var3683=$r1, var2393=$r2, var556=i6}
; {cn.hutool.core.text.Simhash=var2861, r0=var510, r3=var778, java.lang.Object=var1301, i0=var2201, java.util.ArrayList=var2342, $r1=var3683, $r2=var2393, i6=var556}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: cn.hutool.core.text.Simhash;	r3 := @parameter0: java.lang.Long;	virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	i0 = r0.<cn.hutool.core.text.Simhash: int fracBitNum>;	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	i6 = 0;	if i6 >= 64 goto return $r1;	return $r1
;block_num 3
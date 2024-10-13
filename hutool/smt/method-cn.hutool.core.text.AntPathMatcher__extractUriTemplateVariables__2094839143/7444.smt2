(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1506 0)
(declare-sort var543 0)
(declare-sort var49 0)
(declare-sort var1779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var49-init () var49)
(declare-fun <init>/-1461814690 (var49) void)
(declare-fun doMatch/261993127 (var1506 String String Bool var1779) Bool)
(declare-fun cast-from-var49-to-var1779 (var49) var1779)
(declare-const null-var1506 var1506)
(declare-const null-String String)
(declare-const var1248 var1506) ; Statement: r1 := @this: cn.hutool.core.text.AntPathMatcher 
(assert (not (= var1248 null-var1506)))
(declare-const var1681 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1681 null-String)))
(declare-const var3112 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3112 null-String)))
(define-const var3038 var49 var49-init) ; Statement: $r0 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var3038)) ; Statement: specialinvoke $r0.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var3038!1 var49)
(assert true)
(define-const var1990 Bool (doMatch/261993127 var1248 var1681 var3112 (ite (= 1 1) true false) (cast-from-var49-to-var1779 var3038!1))) ; Statement: z0 = virtualinvoke r1.<cn.hutool.core.text.AntPathMatcher: boolean doMatch(java.lang.String,java.lang.String,boolean,java.util.Map)>(r2, r3, 1, $r0) 
 ; Statement: if z0 != 0 goto return $r0 
(assert (not (= (ite var1990 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var49-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), doMatch/261993127=([cn.hutool.core.text.AntPathMatcher, java.lang.String, java.lang.String, boolean, java.util.Map], boolean), cast-from-var49-to-var1779=([java.util.LinkedHashMap], java.util.Map)}
; {var1506=cn.hutool.core.text.AntPathMatcher, var1248=r1, var1681=r2, var543=null_type, var3112=r3, var49=java.util.LinkedHashMap, var3038=$r0, var1779=java.util.Map, var1990=z0}
; {cn.hutool.core.text.AntPathMatcher=var1506, r1=var1248, r2=var1681, null_type=var543, r3=var3112, java.util.LinkedHashMap=var49, $r0=var3038, java.util.Map=var1779, z0=var1990}
;seq 
;cnt {}
;stmts r1 := @this: cn.hutool.core.text.AntPathMatcher;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.util.LinkedHashMap;	specialinvoke $r0.<java.util.LinkedHashMap: void <init>()>();	z0 = virtualinvoke r1.<cn.hutool.core.text.AntPathMatcher: boolean doMatch(java.lang.String,java.lang.String,boolean,java.util.Map)>(r2, r3, 1, $r0);	if z0 != 0 goto return $r0;	return $r0
;block_num 2
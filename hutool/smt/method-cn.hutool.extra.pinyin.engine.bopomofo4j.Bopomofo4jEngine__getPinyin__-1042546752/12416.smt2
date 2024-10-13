(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1783 0)
(declare-sort var2076 0)
(declare-sort var2813 0)
(declare-sort var1150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun var2813_valueOf/1602327315 (Bool) var2813)
(declare-fun var1150_pinyin/847552118 (String var2076 var2813 var2813 String) String)
(declare-const null-var1783 var1783)
(declare-const null-Int Int)
(declare-const var2076-WITHOUT_TONE var2076)
(declare-const var3380 var1783) ; Statement: r5 := @this: cn.hutool.extra.pinyin.engine.bopomofo4j.Bopomofo4jEngine 
(assert (not (= var3380 null-var1783)))
(declare-const var3109 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3109 null-Int)))
(define-const var3340 String (String_valueOf/-371898945 var3109)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(define-const var3538 var2076 var2076-WITHOUT_TONE) ; Statement: $r0 = <com.rnkrsoft.bopomofo4j.ToneType: com.rnkrsoft.bopomofo4j.ToneType WITHOUT_TONE> 
(define-const var3208 var2813 (var2813_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r2 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var3074 var2813 (var2813_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r1 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1525 String (var1150_pinyin/847552118 var3340 var3538 var3208 var3074 "")) ; Statement: $r4 = staticinvoke <com.rnkrsoft.bopomofo4j.Bopomofo4j: java.lang.String pinyin(java.lang.String,com.rnkrsoft.bopomofo4j.ToneType,java.lang.Boolean,java.lang.Boolean,java.lang.String)>($r3, $r0, $r2, $r1, "") 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-371898945=([char], java.lang.String), var2813_valueOf/1602327315=([boolean], java.lang.Boolean), var1150_pinyin/847552118=([java.lang.String, com.rnkrsoft.bopomofo4j.ToneType, java.lang.Boolean, java.lang.Boolean, java.lang.String], java.lang.String)}
; {var1783=cn.hutool.extra.pinyin.engine.bopomofo4j.Bopomofo4jEngine, var3380=r5, var3109=c0, var3340=$r3, var2076=com.rnkrsoft.bopomofo4j.ToneType, var3538=$r0, var2813=java.lang.Boolean, var3208=$r2, var3074=$r1, var1150=com.rnkrsoft.bopomofo4j.Bopomofo4j, var1525=$r4}
; {cn.hutool.extra.pinyin.engine.bopomofo4j.Bopomofo4jEngine=var1783, r5=var3380, c0=var3109, $r3=var3340, com.rnkrsoft.bopomofo4j.ToneType=var2076, $r0=var3538, java.lang.Boolean=var2813, $r2=var3208, $r1=var3074, com.rnkrsoft.bopomofo4j.Bopomofo4j=var1150, $r4=var1525}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r5 := @this: cn.hutool.extra.pinyin.engine.bopomofo4j.Bopomofo4jEngine;	c0 := @parameter0: char;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	$r0 = <com.rnkrsoft.bopomofo4j.ToneType: com.rnkrsoft.bopomofo4j.ToneType WITHOUT_TONE>;	$r2 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r1 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r4 = staticinvoke <com.rnkrsoft.bopomofo4j.Bopomofo4j: java.lang.String pinyin(java.lang.String,com.rnkrsoft.bopomofo4j.ToneType,java.lang.Boolean,java.lang.Boolean,java.lang.String)>($r3, $r0, $r2, $r1, "");	return $r4
;block_num 1
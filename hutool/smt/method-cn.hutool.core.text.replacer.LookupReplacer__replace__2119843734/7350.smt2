(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3988 0)
(declare-sort var1368 0)
(declare-sort var1162 0)
(declare-sort var1354 0)
(declare-sort var1536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefixSet/1854891120 (var3988) var1162)
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-fun var1354_valueOf/-1186540555 (Int) var1354)
(declare-fun var1162_contains/1636690605 (var1162 var1536) Bool)
(declare-fun cast-from-var1354-to-var1536 (var1354) var1536)
(declare-const null-var3988 var3988)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1368 var1368)
(declare-const var3234 var3988) ; Statement: r0 := @this: cn.hutool.core.text.replacer.LookupReplacer 
(assert (not (= var3234 null-var3988)))
(declare-const var962 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var962 null-String)))
(declare-const var274 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var274 null-Int)))
(declare-const var2030 var1368) ; Statement: r9 := @parameter2: cn.hutool.core.text.StrBuilder 
(assert (not (= var2030 null-var1368)))
(define-const var3485 var1162 (prefixSet/1854891120 var3234)) ; Statement: $r2 = r0.<cn.hutool.core.text.replacer.LookupReplacer: java.util.Set prefixSet> 
(define-const var2050 Int (String_charAt/1466887330 var962 var274)) ; Statement: $c1 = interfaceinvoke r1.<java.lang.CharSequence: char charAt(int)>(i0) 
(define-const var1703 var1354 (var1354_valueOf/-1186540555 var2050)) ; Statement: $r3 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1) 
(define-const var3179 Bool (var1162_contains/1636690605 var3485 (cast-from-var1354-to-var1536 var1703))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Set: boolean contains(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var3179 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {prefixSet/1854891120=([cn.hutool.core.text.replacer.LookupReplacer], java.util.Set), String_charAt/1466887330=([java.lang.CharSequence, int], char), var1354_valueOf/-1186540555=([char], java.lang.Character), var1162_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var1354-to-var1536=([java.lang.Character], java.lang.Object)}
; {var3988=cn.hutool.core.text.replacer.LookupReplacer, var3234=r0, var962=r1, var274=i0, var1368=cn.hutool.core.text.StrBuilder, var2030=r9, var1162=java.util.Set, var3485=$r2, var2050=$c1, var1354=java.lang.Character, var1703=$r3, var1536=java.lang.Object, var3179=$z0}
; {cn.hutool.core.text.replacer.LookupReplacer=var3988, r0=var3234, r1=var962, i0=var274, cn.hutool.core.text.StrBuilder=var1368, r9=var2030, java.util.Set=var1162, $r2=var3485, $c1=var2050, java.lang.Character=var1354, $r3=var1703, java.lang.Object=var1536, $z0=var3179}
;seq <java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r0 := @this: cn.hutool.core.text.replacer.LookupReplacer;	r1 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	r9 := @parameter2: cn.hutool.core.text.StrBuilder;	$r2 = r0.<cn.hutool.core.text.replacer.LookupReplacer: java.util.Set prefixSet>;	$c1 = interfaceinvoke r1.<java.lang.CharSequence: char charAt(int)>(i0);	$r3 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1);	$z0 = interfaceinvoke $r2.<java.util.Set: boolean contains(java.lang.Object)>($r3);	if $z0 == 0 goto return 0;	return 0
;block_num 2
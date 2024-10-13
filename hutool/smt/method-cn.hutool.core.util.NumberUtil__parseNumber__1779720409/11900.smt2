(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var150 0)
(declare-sort var400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var400_startWithIgnoreCase/-1708067784 (String String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun Int_parseLong/758265864 (String Int) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-const null-String String)
(declare-const var2230 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var2230 null-String)))
(define-const var2978 Bool (var400_startWithIgnoreCase/-1708067784 (cast-from-String-to-String var2230) (cast-from-String-to-String "0x"))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean startWithIgnoreCase(java.lang.CharSequence,java.lang.CharSequence)>(r8, "0x") 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.util.StrUtil: boolean startWith(java.lang.CharSequence,char)>(r8, 43) 
(assert (not (= (ite var2978 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (and true (and (>= 2 0) (>= (str.len var2230) 2))))
(define-const var3677 String (substring/850833817 var2230 2)) ; Statement: $r3 = virtualinvoke r8.<java.lang.String: java.lang.String substring(int)>(2) 
(define-const var1609 Int (Int_parseLong/758265864 var3677 16)) ; Statement: $l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>($r3, 16) 
(define-const var2320 Int (Int_valueOf/-1102777585 var1609)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var400_startWithIgnoreCase/-1708067784=([java.lang.CharSequence, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), substring/850833817=([java.lang.String, int], java.lang.String), Int_parseLong/758265864=([java.lang.String, int], long), Int_valueOf/-1102777585=([long], java.lang.Long)}
; {var2230=r8, var150=null_type, var400=cn.hutool.core.text.CharSequenceUtil, var2978=$z0, var3677=$r3, var1609=$l0, var2320=$r4}
; {r8=var2230, null_type=var150, cn.hutool.core.text.CharSequenceUtil=var400, $z0=var2978, $r3=var3677, $l0=var1609, $r4=var2320}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r8 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean startWithIgnoreCase(java.lang.CharSequence,java.lang.CharSequence)>(r8, "0x");	if $z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.util.StrUtil: boolean startWith(java.lang.CharSequence,char)>(r8, 43);	$r3 = virtualinvoke r8.<java.lang.String: java.lang.String substring(int)>(2);	$l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>($r3, 16);	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	return $r4
;block_num 2
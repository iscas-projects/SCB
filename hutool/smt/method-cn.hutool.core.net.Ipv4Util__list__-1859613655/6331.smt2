(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3332 0)
(declare-sort var717 0)
(declare-sort var1108 0)
(declare-sort var847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var717_splitToArray/1538190403 (String String) (Array Int String))
(declare-fun var847_list/952981262 (String String) var1108)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3209 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3209 null-String)))
(declare-const var3750 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var3750 null-Bool)))
(assert true)
(define-const var2802 Bool (contains/1009244746 var3209 (cast-from-String-to-String "-"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("-") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("/") 
(assert (not (= (ite var2802 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2368 (Array Int String) (var717_splitToArray/1538190403 (cast-from-String-to-String var3209) (cast-from-String-to-String "-"))) ; Statement: r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,java.lang.CharSequence)>(r0, "-") 
(define-const var3342 String (select var2368 0)) ; Statement: $r7 = r9[0] 
(define-const var2072 String (select var2368 1)) ; Statement: $r6 = r9[1] 
(define-const var637 var1108 (var847_list/952981262 var3342 var2072)) ; Statement: $r8 = staticinvoke <cn.hutool.core.net.Ipv4Util: java.util.List list(java.lang.String,java.lang.String)>($r7, $r6) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var717_splitToArray/1538190403=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String[]), var847_list/952981262=([java.lang.String, java.lang.String], java.util.List)}
; {var3209=r0, var3332=null_type, var3750=z2, var2802=$z0, var717=cn.hutool.core.text.CharSequenceUtil, var2368=r9, var3342=$r7, var2072=$r6, var1108=java.util.List, var847=cn.hutool.core.net.Ipv4Util, var637=$r8}
; {r0=var3209, null_type=var3332, z2=var3750, $z0=var2802, cn.hutool.core.text.CharSequenceUtil=var717, r9=var2368, $r7=var3342, $r6=var2072, java.util.List=var1108, cn.hutool.core.net.Ipv4Util=var847, $r8=var637}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z2 := @parameter1: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("-");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("/");	r9 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String[] splitToArray(java.lang.CharSequence,java.lang.CharSequence)>(r0, "-");	$r7 = r9[0];	$r6 = r9[1];	$r8 = staticinvoke <cn.hutool.core.net.Ipv4Util: java.util.List list(java.lang.String,java.lang.String)>($r7, $r6);	return $r8
;block_num 2
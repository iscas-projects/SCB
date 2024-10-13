(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3127 0)
(declare-sort var3932 0)
(declare-sort var1611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3932_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1611-init () var1611)
(declare-fun <init>/481518073 (var1611 String Int) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3643 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3643 null-String)))
(declare-const var750 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var750 null-Int)))
(define-const var2406 Bool (var3932_isBlank/-1569658263 (cast-from-String-to-String var3643))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r2) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(":") 
(assert (= (ite var2406 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var313 Int (indexOf/-1209756239 var3643 ":")) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(":") 
(define-const var84 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i2 == $i5 goto r3 = r2 
(assert (= var313 var84)) ; Cond: $i2 == $i5 
(define-const var515 String var3643) ; Statement: r3 = r2 
(define-const var98 Int var750) ; Statement: i3 = i0 
(assert true) ; Non Conditional
(define-const var3232 var1611 var1611-init) ; Statement: $r4 = new java.net.InetSocketAddress 
(assert true)
;(assert (<init>/481518073 var3232 var515 var98)) ; Statement: specialinvoke $r4.<java.net.InetSocketAddress: void <init>(java.lang.String,int)>(r3, i3) 

(declare-const var3232!1 var1611)
(declare-const var515!1 String)
(declare-const var98!1 Int)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3932_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var1611-init=([], java.net.InetSocketAddress), <init>/481518073=([java.net.InetSocketAddress, java.lang.String, int], void)}
; {var3643=r2, var3127=null_type, var750=i0, var3932=cn.hutool.core.text.CharSequenceUtil, var2406=$z0, var313=$i2, var84=$i5, var515=r3, var98=i3, var1611=java.net.InetSocketAddress, var3232=$r4}
; {r2=var3643, null_type=var3127, i0=var750, cn.hutool.core.text.CharSequenceUtil=var3932, $z0=var2406, $i2=var313, $i5=var84, r3=var515, i3=var98, java.net.InetSocketAddress=var1611, $r4=var3232}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r2);	if $z0 == 0 goto $i2 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(":");	$i2 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(":");	$i5 = (int) -1;	if $i2 == $i5 goto r3 = r2;	r3 = r2;	i3 = i0;	$r4 = new java.net.InetSocketAddress;	specialinvoke $r4.<java.net.InetSocketAddress: void <init>(java.lang.String,int)>(r3, i3);	return $r4
;block_num 4
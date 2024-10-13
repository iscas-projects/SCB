(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2528 0)
(declare-sort var1510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1510_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1510_hide/527634244 (String Int Int) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3105 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3105 null-String)))
(declare-const var1386 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1386 null-Int)))
(define-const var1773 Bool (var1510_isBlank/-1569658263 (cast-from-String-to-String var3105))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (= (ite var1773 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var76 Int (length/-134980193 var3105)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1886 Int (- var76 var1386)) ; Statement: $i2 = i0 - i1 
(define-const var617 String (var1510_hide/527634244 (cast-from-String-to-String var3105) var1886 var76)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String hide(java.lang.CharSequence,int,int)>(r0, $i2, i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1510_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var1510_hide/527634244=([java.lang.CharSequence, int, int], java.lang.String)}
; {var3105=r0, var2528=null_type, var1386=i1, var1510=cn.hutool.core.text.CharSequenceUtil, var1773=$z0, var76=i0, var1886=$i2, var617=$r1}
; {r0=var3105, null_type=var2528, i1=var1386, cn.hutool.core.text.CharSequenceUtil=var1510, $z0=var1773, i0=var76, $i2=var1886, $r1=var617}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = i0 - i1;	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String hide(java.lang.CharSequence,int,int)>(r0, $i2, i0);	return $r1
;block_num 2
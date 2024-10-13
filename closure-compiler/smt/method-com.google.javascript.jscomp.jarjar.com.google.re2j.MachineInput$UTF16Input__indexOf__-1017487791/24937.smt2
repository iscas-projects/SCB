(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3834 0)
(declare-sort var2497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(declare-const null-var3834 var3834)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2564 var3834) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input 
(assert (not (= var2564 null-var3834)))
(declare-const var2147 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2147 null-String)))
(declare-const var1932 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1932 null-String)))
(declare-const var3790 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3790 null-Int)))
(define-const var1661 Bool true) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof java.lang.StringBuilder 
(assert (not (= (ite var1661 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var596 String (cast-from-String-to-String var2147)) ; Statement: $r4 = (java.lang.String) r0 
(assert true)
(define-const var3943 Int (indexOf/1795197748 var596 var1932 var3790)) ; Statement: $i3 = virtualinvoke $r4.<java.lang.String: int indexOf(java.lang.String,int)>(r2, i0) 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-String-to-String=([java.lang.CharSequence], java.lang.String), indexOf/1795197748=([java.lang.String, java.lang.String, int], int)}
; {var3834=com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input, var2564=r1, var2147=r0, var1932=r2, var2497=null_type, var3790=i0, var1661=$z0, var596=$r4, var3943=$i3}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input=var3834, r1=var2564, r0=var2147, r2=var1932, null_type=var2497, i0=var3790, $z0=var1661, $r4=var596, $i3=var3943}
;seq <java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input;	r0 := @parameter0: java.lang.CharSequence;	r2 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $z1 = r0 instanceof java.lang.StringBuilder;	$r4 = (java.lang.String) r0;	$i3 = virtualinvoke $r4.<java.lang.String: int indexOf(java.lang.String,int)>(r2, i0);	return $i3
;block_num 2
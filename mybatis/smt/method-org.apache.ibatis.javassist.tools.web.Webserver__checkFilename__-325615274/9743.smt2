(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3062 0)
(declare-sort var1944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var3062 var3062)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1355 var3062) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var1355 null-var3062)))
(declare-const var3771 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3771 null-String)))
(declare-const var2648 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2648 null-Int)))
(define-const var2710 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..") 
(assert (>= var2710 var2648)) ; Cond: i3 >= i0 
(assert true)
(define-const var3828 Int (indexOf/-1209756239 var3771 "..")) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..") 
 ; Statement: if $i1 < 0 goto return 
(assert (< var3828 0)) ; Cond: $i1 < 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var3062=org.apache.ibatis.javassist.tools.web.Webserver, var1355=r3, var3771=r0, var1944=null_type, var2648=i0, var2710=i3, var3828=$i1}
; {org.apache.ibatis.javassist.tools.web.Webserver=var3062, r3=var1355, r0=var3771, null_type=var1944, i0=var2648, i3=var2710, $i1=var3828}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 = 0;	if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..");	$i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..");	if $i1 < 0 goto return;	return
;block_num 4
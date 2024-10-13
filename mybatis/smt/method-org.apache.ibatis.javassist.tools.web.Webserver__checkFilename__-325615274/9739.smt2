(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var786 0)
(declare-sort var2702 0)
(declare-sort var2310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun var2310-init () var2310)
(declare-fun <init>/-75370408 (var2310) void)
(declare-const null-var786 var786)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2627 var786) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var2627 null-var786)))
(declare-const var435 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var435 null-String)))
(declare-const var3309 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3309 null-Int)))
(define-const var1592 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..") 
(assert (>= var1592 var3309)) ; Cond: i3 >= i0 
(assert true)
(define-const var1134 Int (indexOf/-1209756239 var435 "..")) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..") 
 ; Statement: if $i1 < 0 goto return 
(assert (not (< var1134 0))) ; Negate: Cond: $i1 < 0  
(define-const var3255 var2310 var2310-init) ; Statement: $r5 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest 
(assert true)
;(assert (<init>/-75370408 var3255)) ; Statement: specialinvoke $r5.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>()>() 

(declare-const var3255!1 var2310)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), var2310-init=([], org.apache.ibatis.javassist.tools.web.BadHttpRequest), <init>/-75370408=([org.apache.ibatis.javassist.tools.web.BadHttpRequest], void)}
; {var786=org.apache.ibatis.javassist.tools.web.Webserver, var2627=r3, var435=r0, var2702=null_type, var3309=i0, var1592=i3, var1134=$i1, var2310=org.apache.ibatis.javassist.tools.web.BadHttpRequest, var3255=$r5}
; {org.apache.ibatis.javassist.tools.web.Webserver=var786, r3=var2627, r0=var435, null_type=var2702, i0=var3309, i3=var1592, $i1=var1134, org.apache.ibatis.javassist.tools.web.BadHttpRequest=var2310, $r5=var3255}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 = 0;	if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..");	$i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..");	if $i1 < 0 goto return;	$r5 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest;	specialinvoke $r5.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>()>();	throw $r5
;block_num 4
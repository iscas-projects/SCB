(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3669 0)
(declare-sort var6 0)
(declare-sort var1373 0)
(declare-sort var2965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1373_isJavaIdentifierPart/-511874412 (Int) Bool)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun var2965-init () var2965)
(declare-fun <init>/-75370408 (var2965) void)
(declare-const null-var3669 var3669)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var563 var3669) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var563 null-var3669)))
(declare-const var2041 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2041 null-String)))
(declare-const var3602 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3602 null-Int)))
(define-const var231 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..") 
(assert (not (>= var231 var3602))) ; Negate: Cond: i3 >= i0  
(assert (and true (and (> (str.len var2041) var231) (<= 0 var231))))
(define-const var875 Int (charAt/698050440 var2041 var231)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3) 
(define-const var3902 Bool (var1373_isJavaIdentifierPart/-511874412 var875)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierPart(char)>(c2) 
 ; Statement: if $z0 != 0 goto i3 = i3 + 1 
(assert (not (= (ite var3902 1 0) 0))) ; Cond: $z0 != 0 
(define-const var231!1 Int (+ var231 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..") 
(assert (>= var231!1 var3602)) ; Cond: i3 >= i0 
(assert true)
(define-const var550 Int (indexOf/-1209756239 var2041 "..")) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..") 
 ; Statement: if $i1 < 0 goto return 
(assert (not (< var550 0))) ; Negate: Cond: $i1 < 0  
(define-const var3155 var2965 var2965-init) ; Statement: $r5 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest 
(assert true)
;(assert (<init>/-75370408 var3155)) ; Statement: specialinvoke $r5.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>()>() 

(declare-const var3155!1 var2965)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), var1373_isJavaIdentifierPart/-511874412=([char], boolean), indexOf/-1209756239=([java.lang.String, java.lang.String], int), var2965-init=([], org.apache.ibatis.javassist.tools.web.BadHttpRequest), <init>/-75370408=([org.apache.ibatis.javassist.tools.web.BadHttpRequest], void)}
; {var3669=org.apache.ibatis.javassist.tools.web.Webserver, var563=r3, var2041=r0, var6=null_type, var3602=i0, var231=i3, var875=c2, var1373=java.lang.Character, var3902=$z0, var550=$i1, var2965=org.apache.ibatis.javassist.tools.web.BadHttpRequest, var3155=$r5}
; {org.apache.ibatis.javassist.tools.web.Webserver=var3669, r3=var563, r0=var2041, null_type=var6, i0=var3602, i3=var231, c2=var875, java.lang.Character=var1373, $z0=var3902, $i1=var550, org.apache.ibatis.javassist.tools.web.BadHttpRequest=var2965, $r5=var3155}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 = 0;	if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..");	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3);	$z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierPart(char)>(c2);	if $z0 != 0 goto i3 = i3 + 1;	i3 = i3 + 1;	goto [?= (branch)];	if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..");	$i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..");	if $i1 < 0 goto return;	$r5 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest;	specialinvoke $r5.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>()>();	throw $r5
;block_num 7
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2904 0)
(declare-sort var3912 0)
(declare-sort var3968 0)
(declare-sort var747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3968_isJavaIdentifierPart/-511874412 (Int) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var747-init () var747)
(declare-fun <init>/-75370408 (var747) void)
(declare-const null-var2904 var2904)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1421 var2904) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var1421 null-var2904)))
(declare-const var3893 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3893 null-String)))
(declare-const var789 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var789 null-Int)))
(define-const var1979 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..") 
(assert (not (>= var1979 var789))) ; Negate: Cond: i3 >= i0  
(assert (and true (and (> (str.len var3893) var1979) (<= 0 var1979))))
(define-const var2566 Int (charAt/698050440 var3893 var1979)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3) 
(define-const var652 Bool (var3968_isJavaIdentifierPart/-511874412 var2566)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierPart(char)>(c2) 
 ; Statement: if $z0 != 0 goto i3 = i3 + 1 
(assert (not (not (= (ite var652 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1561 Int (cast-from-Int-to-Int var2566)) ; Statement: $i4 = (int) c2 
 ; Statement: if $i4 == 46 goto i3 = i3 + 1 
(assert (not (= var1561 46))) ; Negate: Cond: $i4 == 46  
(define-const var2465 Int (cast-from-Int-to-Int var2566)) ; Statement: $i5 = (int) c2 
 ; Statement: if $i5 == 47 goto i3 = i3 + 1 
(assert (not (= var2465 47))) ; Negate: Cond: $i5 == 47  
(define-const var1487 var747 var747-init) ; Statement: $r4 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest 
(assert true)
;(assert (<init>/-75370408 var1487)) ; Statement: specialinvoke $r4.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>()>() 

(declare-const var1487!1 var747)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), var3968_isJavaIdentifierPart/-511874412=([char], boolean), cast-from-Int-to-Int=([char], int), var747-init=([], org.apache.ibatis.javassist.tools.web.BadHttpRequest), <init>/-75370408=([org.apache.ibatis.javassist.tools.web.BadHttpRequest], void)}
; {var2904=org.apache.ibatis.javassist.tools.web.Webserver, var1421=r3, var3893=r0, var3912=null_type, var789=i0, var1979=i3, var2566=c2, var3968=java.lang.Character, var652=$z0, var1561=$i4, var2465=$i5, var747=org.apache.ibatis.javassist.tools.web.BadHttpRequest, var1487=$r4}
; {org.apache.ibatis.javassist.tools.web.Webserver=var2904, r3=var1421, r0=var3893, null_type=var3912, i0=var789, i3=var1979, c2=var2566, java.lang.Character=var3968, $z0=var652, $i4=var1561, $i5=var2465, org.apache.ibatis.javassist.tools.web.BadHttpRequest=var747, $r4=var1487}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 = 0;	if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..");	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3);	$z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierPart(char)>(c2);	if $z0 != 0 goto i3 = i3 + 1;	$i4 = (int) c2;	if $i4 == 46 goto i3 = i3 + 1;	$i5 = (int) c2;	if $i5 == 47 goto i3 = i3 + 1;	$r4 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest;	specialinvoke $r4.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>()>();	throw $r4
;block_num 6
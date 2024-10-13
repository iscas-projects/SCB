(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3507 0)
(declare-sort var2211 0)
(declare-sort var2746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2746_isJavaIdentifierPart/-511874412 (Int) Bool)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var3507 var3507)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3441 var3507) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var3441 null-var3507)))
(declare-const var1838 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1838 null-String)))
(declare-const var1029 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1029 null-Int)))
(define-const var3836 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..") 
(assert (not (>= var3836 var1029))) ; Negate: Cond: i3 >= i0  
(assert (and true (and (> (str.len var1838) var3836) (<= 0 var3836))))
(define-const var550 Int (charAt/698050440 var1838 var3836)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3) 
(define-const var3740 Bool (var2746_isJavaIdentifierPart/-511874412 var550)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierPart(char)>(c2) 
 ; Statement: if $z0 != 0 goto i3 = i3 + 1 
(assert (not (= (ite var3740 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3836!1 Int (+ var3836 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..") 
(assert (>= var3836!1 var1029)) ; Cond: i3 >= i0 
(assert true)
(define-const var1377 Int (indexOf/-1209756239 var1838 "..")) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..") 
 ; Statement: if $i1 < 0 goto return 
(assert (< var1377 0)) ; Cond: $i1 < 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), var2746_isJavaIdentifierPart/-511874412=([char], boolean), indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var3507=org.apache.ibatis.javassist.tools.web.Webserver, var3441=r3, var1838=r0, var2211=null_type, var1029=i0, var3836=i3, var550=c2, var2746=java.lang.Character, var3740=$z0, var1377=$i1}
; {org.apache.ibatis.javassist.tools.web.Webserver=var3507, r3=var3441, r0=var1838, null_type=var2211, i0=var1029, i3=var3836, c2=var550, java.lang.Character=var2746, $z0=var3740, $i1=var1377}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 = 0;	if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..");	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3);	$z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierPart(char)>(c2);	if $z0 != 0 goto i3 = i3 + 1;	i3 = i3 + 1;	goto [?= (branch)];	if i3 >= i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..");	$i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("..");	if $i1 < 0 goto return;	return
;block_num 7
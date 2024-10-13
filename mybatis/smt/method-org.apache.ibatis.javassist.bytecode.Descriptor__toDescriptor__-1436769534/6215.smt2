(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1159 0)
(declare-sort var3593 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isArray/604507311 (var1159) Bool)
(declare-fun isPrimitive/160276961 (var1159) Bool)
(declare-fun cast-from-var1159-to-var3593 (var1159) var3593)
(declare-fun getDescriptor/-1654706608 (var3593) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const null-var1159 var1159)
(declare-const var2357 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2357 null-String)))
(declare-const var1148 var1159) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1148 null-var1159)))
(assert true)
(define-const var3741 Bool (isArray/604507311 var1148)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>() 
(assert (= (ite var3741 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3753 Bool (isPrimitive/160276961 var1148)) ; Statement: $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(assert (not (= (ite var3753 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3461 var3593 (cast-from-var1159-to-var3593 var1148)) ; Statement: r9 = (org.apache.ibatis.javassist.CtPrimitiveType) r0 
(assert true)
(define-const var2425 Int (getDescriptor/-1654706608 var3461)) ; Statement: $c0 = virtualinvoke r9.<org.apache.ibatis.javassist.CtPrimitiveType: char getDescriptor()>() 
(assert true)
;(assert (append/-1166366385 var2357 var2425)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2357!1 String)
(assert (str.prefixof var2357 var2357!1))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isArray/604507311=([org.apache.ibatis.javassist.CtClass], boolean), isPrimitive/160276961=([org.apache.ibatis.javassist.CtClass], boolean), cast-from-var1159-to-var3593=([org.apache.ibatis.javassist.CtClass], org.apache.ibatis.javassist.CtPrimitiveType), getDescriptor/-1654706608=([org.apache.ibatis.javassist.CtPrimitiveType], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2357=r1, var1159=org.apache.ibatis.javassist.CtClass, var1148=r0, var3741=$z0, var3753=$z1, var3593=org.apache.ibatis.javassist.CtPrimitiveType, var3461=r9, var2425=$c0}
; {r1=var2357, org.apache.ibatis.javassist.CtClass=var1159, r0=var1148, $z0=var3741, $z1=var3753, org.apache.ibatis.javassist.CtPrimitiveType=var3593, r9=var3461, $c0=var2425}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: org.apache.ibatis.javassist.CtClass;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>();	$z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>();	if $z1 == 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	r9 = (org.apache.ibatis.javassist.CtPrimitiveType) r0;	$c0 = virtualinvoke r9.<org.apache.ibatis.javassist.CtPrimitiveType: char getDescriptor()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	goto [?= return];	return
;block_num 4
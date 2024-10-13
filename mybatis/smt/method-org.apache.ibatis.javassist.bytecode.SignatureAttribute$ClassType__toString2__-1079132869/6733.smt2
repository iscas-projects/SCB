(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2661 0)
(declare-sort var1336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-751637629 (var2661) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arguments/-751637629 (var2661) (Array Int var1336))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2661 var2661)
(declare-const null-String String)
(declare-const null-__Array__Int__var1336__ (Array Int var1336))
(declare-const var1603 var2661) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType 
(assert (not (= var1603 null-var2661)))
(declare-const var2911 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2911 null-String)))
(define-const var1840 String (name/-751637629 var1603)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String name> 
(assert true)
;(assert (append/672562846 var2911 var1840)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2911!1 String)
(assert (= var2911!1 (str.++ var2911 var1840)))
(define-const var1973 (Array Int var1336) (arguments/-751637629 var1603)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[] arguments> 
 ; Statement: if $r3 == null goto $r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1973 null-__Array__Int__var1336__)) ; Cond: $r3 == null 
(assert true)
(define-const var3065 String (toString/-2075883882 var2911!1)) ; Statement: $r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-751637629=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arguments/-751637629=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2661=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var1603=r1, var2911=r0, var1840=$r2, var1336=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument, var1973=$r3, var3065=$r4}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var2661, r1=var1603, r0=var2911, $r2=var1840, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument=var1336, $r3=var1973, $r4=var3065}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String name>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[] arguments>;	if $r3 == null goto $r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2
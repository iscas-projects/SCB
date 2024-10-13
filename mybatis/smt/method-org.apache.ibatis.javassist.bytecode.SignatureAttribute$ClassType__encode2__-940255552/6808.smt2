(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1224 0)
(declare-sort var87 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDeclaringClass/-1229499424 (var1224) var1224)
(declare-fun name/-751637629 (var1224) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arguments/-751637629 (var1224) (Array Int var87))
(declare-const null-var1224 var1224)
(declare-const null-String String)
(declare-const null-__Array__Int__var87__ (Array Int var87))
(declare-const var3885 var1224) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType 
(assert (not (= var3885 null-var1224)))
(declare-const var1328 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1328 null-String)))
(assert true)
(define-const var555 var1224 (getDeclaringClass/-1229499424 var3885)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType getDeclaringClass()>() 
 ; Statement: if r1 == null goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String name> 
(assert (= var555 null-var1224)) ; Cond: r1 == null 
(define-const var692 String (name/-751637629 var3885)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String name> 
(assert true)
(define-const var1548 String (replace/1524665721 var692 46 47)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
;(assert (append/672562846 var1328 var1548)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1328!1 String)
(assert (= var1328!1 (str.++ var1328 var1548)))
(define-const var475 (Array Int var87) (arguments/-751637629 var3885)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[] arguments> 
 ; Statement: if $r5 == null goto return 
(assert (= var475 null-__Array__Int__var87__)) ; Cond: $r5 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/-1229499424=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType), name/-751637629=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arguments/-751637629=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[])}
; {var1224=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var3885=r0, var1328=r2, var555=r1, var692=$r3, var1548=$r4, var87=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument, var475=$r5}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var1224, r0=var3885, r2=var1328, r1=var555, $r3=var692, $r4=var1548, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument=var87, $r5=var475}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType;	r2 := @parameter0: java.lang.StringBuilder;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType getDeclaringClass()>();	if r1 == null goto $r3 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String name>;	$r3 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = r0.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[] arguments>;	if $r5 == null goto return;	return
;block_num 3
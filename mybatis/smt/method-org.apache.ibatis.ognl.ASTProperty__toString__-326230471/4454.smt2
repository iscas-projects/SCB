(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var880 0)
(declare-sort var45 0)
(declare-sort var3957 0)
(declare-sort var948 0)
(declare-sort var553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isIndexedAccess/-181581683 (var880) Bool)
(declare-fun children/1926309034 (var3957) (Array Int var45))
(declare-fun cast-from-var880-to-var3957 (var880) var3957)
(declare-fun cast-from-var45-to-var948 (var45) var948)
(declare-fun getValue/-629647050 (var948) var553)
(declare-fun toString/-522406933 (var553) String)
(declare-const null-var880 var880)
(declare-const var995 var880) ; Statement: r0 := @this: org.apache.ibatis.ognl.ASTProperty 
(assert (not (= var995 null-var880)))
(assert true)
(define-const var2916 Bool (isIndexedAccess/-181581683 var995)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.ognl.ASTProperty: boolean isIndexedAccess()>() 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.apache.ibatis.ognl.ASTProperty: org.apache.ibatis.ognl.Node[] children> 
(assert (= (ite var2916 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1745 (Array Int var45) (children/1926309034 (cast-from-var880-to-var3957 var995))) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.ASTProperty: org.apache.ibatis.ognl.Node[] children> 
(define-const var3399 var45 (select var1745 0)) ; Statement: $r2 = $r1[0] 
(define-const var3123 var948 (cast-from-var45-to-var948 var3399)) ; Statement: $r3 = (org.apache.ibatis.ognl.ASTConst) $r2 
(assert true)
(define-const var712 var553 (getValue/-629647050 var3123)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.ibatis.ognl.ASTConst: java.lang.Object getValue()>() 
(assert true)
(define-const var1263 String (toString/-522406933 var712)) ; Statement: r11 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {isIndexedAccess/-181581683=([org.apache.ibatis.ognl.ASTProperty], boolean), children/1926309034=([org.apache.ibatis.ognl.SimpleNode], org.apache.ibatis.ognl.Node[]), cast-from-var880-to-var3957=([org.apache.ibatis.ognl.ASTProperty], org.apache.ibatis.ognl.SimpleNode), cast-from-var45-to-var948=([org.apache.ibatis.ognl.Node], org.apache.ibatis.ognl.ASTConst), getValue/-629647050=([org.apache.ibatis.ognl.ASTConst], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String)}
; {var880=org.apache.ibatis.ognl.ASTProperty, var995=r0, var2916=$z0, var45=org.apache.ibatis.ognl.Node, var3957=org.apache.ibatis.ognl.SimpleNode, var1745=$r1, var3399=$r2, var948=org.apache.ibatis.ognl.ASTConst, var3123=$r3, var553=java.lang.Object, var712=$r4, var1263=r11}
; {org.apache.ibatis.ognl.ASTProperty=var880, r0=var995, $z0=var2916, org.apache.ibatis.ognl.Node=var45, org.apache.ibatis.ognl.SimpleNode=var3957, $r1=var1745, $r2=var3399, org.apache.ibatis.ognl.ASTConst=var948, $r3=var3123, java.lang.Object=var553, $r4=var712, r11=var1263}
;seq <java.lang.Object: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: org.apache.ibatis.ognl.ASTProperty;	$z0 = virtualinvoke r0.<org.apache.ibatis.ognl.ASTProperty: boolean isIndexedAccess()>();	if $z0 == 0 goto $r1 = r0.<org.apache.ibatis.ognl.ASTProperty: org.apache.ibatis.ognl.Node[] children>;	$r1 = r0.<org.apache.ibatis.ognl.ASTProperty: org.apache.ibatis.ognl.Node[] children>;	$r2 = $r1[0];	$r3 = (org.apache.ibatis.ognl.ASTConst) $r2;	$r4 = virtualinvoke $r3.<org.apache.ibatis.ognl.ASTConst: java.lang.Object getValue()>();	r11 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	return r11
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var111 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var111 null-String)))
(define-const var3391 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1733 Int (hashCode/-467973558 var111)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 66245349: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES256");     case 66246401: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES384");     case 66248104: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES512");     case 637568043: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA384withECDSA");     case 982518116: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA512withECDSA");     case 1211345095: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA256withECDSA");     default: goto tableswitch(b1) {     case 0: goto return 64;     case 1: goto return 64;     case 2: goto return 96;     case 3: goto return 96;     case 4: goto return 132;     case 5: goto return 132;     default: goto $r1 = new cn.hutool.jwt.JWTException; }; } 
(assert (and (not (= var1733 1211345095)) (and (not (= var1733 982518116)) (and (not (= var1733 637568043)) (and (not (= var1733 66248104)) (and (not (= var1733 66246401)) (and (not (= var1733 66245349)) true))))))) ; Intersect: Negate: Cond: $i0 == 1211345095   and Intersect: Negate: Cond: $i0 == 982518116   and Intersect: Negate: Cond: $i0 == 637568043   and Intersect: Negate: Cond: $i0 == 66248104   and Intersect: Negate: Cond: $i0 == 66246401   and Intersect: Negate: Cond: $i0 == 66245349   and Non Conditional      
 ; Statement: tableswitch(b1) {     case 0: goto return 64;     case 1: goto return 64;     case 2: goto return 96;     case 3: goto return 96;     case 4: goto return 132;     case 5: goto return 132;     default: goto $r1 = new cn.hutool.jwt.JWTException; } 
(assert (and (= var3391 2) (and (not (= var3391 1)) (and (not (= var3391 0)) true)))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
 ; Statement: return 96 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var111=r0, var1932=null_type, var3391=b1, var1733=$i0}
; {r0=var111, null_type=var1932, b1=var3391, $i0=var1733}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 66245349: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES256");     case 66246401: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES384");     case 66248104: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES512");     case 637568043: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA384withECDSA");     case 982518116: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA512withECDSA");     case 1211345095: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA256withECDSA");     default: goto tableswitch(b1) {     case 0: goto return 64;     case 1: goto return 64;     case 2: goto return 96;     case 3: goto return 96;     case 4: goto return 132;     case 5: goto return 132;     default: goto $r1 = new cn.hutool.jwt.JWTException; }; };	tableswitch(b1) {     case 0: goto return 64;     case 1: goto return 64;     case 2: goto return 96;     case 3: goto return 96;     case 4: goto return 132;     case 5: goto return 132;     default: goto $r1 = new cn.hutool.jwt.JWTException; };	return 96
;block_num 3
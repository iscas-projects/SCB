(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun targetImageType/-703132465 (var604) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var604 var604)
(declare-const var972 var604) ; Statement: r0 := @this: cn.hutool.core.img.Img 
(assert (not (= var972 null-var604)))
(define-const var2830 String (targetImageType/-703132465 var972)) ; Statement: r1 = r0.<cn.hutool.core.img.Img: java.lang.String targetImageType> 
(define-const var1259 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var616 Int (hashCode/-467973558 var2830)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 111145: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("png");     default: goto lookupswitch(b1) {     case 0: goto return 2;     default: goto return 1; }; } 
(assert (and (not (= var616 111145)) true)) ; Intersect: Negate: Cond: $i0 == 111145   and Non Conditional 
 ; Statement: lookupswitch(b1) {     case 0: goto return 2;     default: goto return 1; } 
(assert (and (= var1259 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
 ; Statement: return 2 
(check-sat)
(get-model)
(get-unsat-core)
; {targetImageType/-703132465=([cn.hutool.core.img.Img], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var604=cn.hutool.core.img.Img, var972=r0, var2830=r1, var1259=b1, var616=$i0}
; {cn.hutool.core.img.Img=var604, r0=var972, r1=var2830, b1=var1259, $i0=var616}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: cn.hutool.core.img.Img;	r1 = r0.<cn.hutool.core.img.Img: java.lang.String targetImageType>;	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 111145: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("png");     default: goto lookupswitch(b1) {     case 0: goto return 2;     default: goto return 1; }; };	lookupswitch(b1) {     case 0: goto return 2;     default: goto return 1; };	return 2
;block_num 3
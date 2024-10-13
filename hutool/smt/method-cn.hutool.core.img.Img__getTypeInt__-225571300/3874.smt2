(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun targetImageType/-703132465 (var3224) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3224 var3224)
(declare-const var911 var3224) ; Statement: r0 := @this: cn.hutool.core.img.Img 
(assert (not (= var911 null-var3224)))
(define-const var2590 String (targetImageType/-703132465 var911)) ; Statement: r1 = r0.<cn.hutool.core.img.Img: java.lang.String targetImageType> 
(define-const var2305 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3213 Int (hashCode/-467973558 var2590)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 111145: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("png");     default: goto lookupswitch(b1) {     case 0: goto return 2;     default: goto return 1; }; } 
(assert (and (not (= var3213 111145)) true)) ; Intersect: Negate: Cond: $i0 == 111145   and Non Conditional 
 ; Statement: lookupswitch(b1) {     case 0: goto return 2;     default: goto return 1; } 
(assert (and (not (= var2305 0)) true)) ; Intersect: Negate: Cond: b1 == 0   and Non Conditional 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {targetImageType/-703132465=([cn.hutool.core.img.Img], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3224=cn.hutool.core.img.Img, var911=r0, var2590=r1, var2305=b1, var3213=$i0}
; {cn.hutool.core.img.Img=var3224, r0=var911, r1=var2590, b1=var2305, $i0=var3213}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: cn.hutool.core.img.Img;	r1 = r0.<cn.hutool.core.img.Img: java.lang.String targetImageType>;	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 111145: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("png");     default: goto lookupswitch(b1) {     case 0: goto return 2;     default: goto return 1; }; };	lookupswitch(b1) {     case 0: goto return 2;     default: goto return 1; };	return 1
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3806 0)
(declare-sort var1775 0)
(declare-sort var2824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1907289949 (var1775) String)
(declare-const null-var3806 var3806)
(declare-const null-var1775 var1775)
(declare-const null-var2824 var2824)
(declare-const var1221 var3806) ; Statement: r3 := @this: org.apache.ibatis.reflection.wrapper.BaseWrapper 
(assert (not (= var1221 null-var3806)))
(declare-const var3897 var1775) ; Statement: r0 := @parameter0: org.apache.ibatis.reflection.property.PropertyTokenizer 
(assert (not (= var3897 null-var1775)))
(declare-const var3042 var2824) ; Statement: r7 := @parameter1: java.lang.Object 
(assert (not (= var3042 null-var2824)))
(define-const var3377 String "") ; Statement: $r2 = "" 
(assert true)
(define-const var3146 String (getName/-1907289949 var3897)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>() 
(assert true)
(define-const var3737 Bool (= var3377 var3146)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = r3.<org.apache.ibatis.reflection.wrapper.BaseWrapper: org.apache.ibatis.reflection.MetaObject metaObject> 
(assert (not (= (ite var3737 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1907289949=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.String)}
; {var3806=org.apache.ibatis.reflection.wrapper.BaseWrapper, var1221=r3, var1775=org.apache.ibatis.reflection.property.PropertyTokenizer, var3897=r0, var2824=java.lang.Object, var3042=r7, var3377=$r2, var3146=$r1, var3737=$z0}
; {org.apache.ibatis.reflection.wrapper.BaseWrapper=var3806, r3=var1221, org.apache.ibatis.reflection.property.PropertyTokenizer=var1775, r0=var3897, java.lang.Object=var2824, r7=var3042, $r2=var3377, $r1=var3146, $z0=var3737}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.apache.ibatis.reflection.wrapper.BaseWrapper;	r0 := @parameter0: org.apache.ibatis.reflection.property.PropertyTokenizer;	r7 := @parameter1: java.lang.Object;	$r2 = "";	$r1 = virtualinvoke r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = r3.<org.apache.ibatis.reflection.wrapper.BaseWrapper: org.apache.ibatis.reflection.MetaObject metaObject>;	return r7
;block_num 2
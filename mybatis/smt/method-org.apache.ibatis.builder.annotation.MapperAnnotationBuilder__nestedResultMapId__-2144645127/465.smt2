(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3455 0)
(declare-sort var3245 0)
(declare-sort var2880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3245_one/-1189430392 (var3245) var2880)
(declare-fun var2880_resultMap/-47060587 (var2880) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var3455 var3455)
(declare-const null-var3245 var3245)
(declare-const var1040 var3455) ; Statement: r3 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var1040 null-var3455)))
(declare-const var652 var3245) ; Statement: r0 := @parameter0: org.apache.ibatis.annotations.Result 
(assert (not (= var652 null-var3245)))
(define-const var3315 var2880 (var3245_one/-1189430392 var652)) ; Statement: $r1 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>() 
(define-const var2596 String (var2880_resultMap/-47060587 var3315)) ; Statement: r10 = interfaceinvoke $r1.<org.apache.ibatis.annotations.One: java.lang.String resultMap()>() 
(assert true)
(define-const var2104 Int (length/-134980193 var2596)) ; Statement: $i0 = virtualinvoke r10.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= 1 goto $z0 = virtualinvoke r10.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
(assert (>= var2104 1)) ; Cond: $i0 >= 1 
(assert true)
(define-const var3093 Bool (contains/1009244746 var2596 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z0 != 0 goto return r10 
(assert (not (= (ite var3093 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3245_one/-1189430392=([org.apache.ibatis.annotations.Result], org.apache.ibatis.annotations.One), var2880_resultMap/-47060587=([org.apache.ibatis.annotations.One], java.lang.String), length/-134980193=([java.lang.String], int), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3455=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var1040=r3, var3245=org.apache.ibatis.annotations.Result, var652=r0, var2880=org.apache.ibatis.annotations.One, var3315=$r1, var2596=r10, var2104=$i0, var3093=$z0}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var3455, r3=var1040, org.apache.ibatis.annotations.Result=var3245, r0=var652, org.apache.ibatis.annotations.One=var2880, $r1=var3315, r10=var2596, $i0=var2104, $z0=var3093}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r3 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r0 := @parameter0: org.apache.ibatis.annotations.Result;	$r1 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>();	r10 = interfaceinvoke $r1.<org.apache.ibatis.annotations.One: java.lang.String resultMap()>();	$i0 = virtualinvoke r10.<java.lang.String: int length()>();	if $i0 >= 1 goto $z0 = virtualinvoke r10.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	$z0 = virtualinvoke r10.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z0 != 0 goto return r10;	return r10
;block_num 3
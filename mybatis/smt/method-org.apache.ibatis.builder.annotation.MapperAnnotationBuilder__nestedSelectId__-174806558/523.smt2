(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var74 0)
(declare-sort var2470 0)
(declare-sort var2405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2470_one/-1189430392 (var2470) var2405)
(declare-fun var2405_select/1804598698 (var2405) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var74 var74)
(declare-const null-var2470 var2470)
(declare-const var585 var74) ; Statement: r3 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var585 null-var74)))
(declare-const var1885 var2470) ; Statement: r0 := @parameter0: org.apache.ibatis.annotations.Result 
(assert (not (= var1885 null-var2470)))
(define-const var3872 var2405 (var2470_one/-1189430392 var1885)) ; Statement: $r1 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>() 
(define-const var2754 String (var2405_select/1804598698 var3872)) ; Statement: r10 = interfaceinvoke $r1.<org.apache.ibatis.annotations.One: java.lang.String select()>() 
(assert true)
(define-const var1815 Int (length/-134980193 var2754)) ; Statement: $i0 = virtualinvoke r10.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= 1 goto $z0 = virtualinvoke r10.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
(assert (>= var1815 1)) ; Cond: $i0 >= 1 
(assert true)
(define-const var1929 Bool (contains/1009244746 var2754 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z0 != 0 goto return r10 
(assert (not (= (ite var1929 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2470_one/-1189430392=([org.apache.ibatis.annotations.Result], org.apache.ibatis.annotations.One), var2405_select/1804598698=([org.apache.ibatis.annotations.One], java.lang.String), length/-134980193=([java.lang.String], int), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var74=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var585=r3, var2470=org.apache.ibatis.annotations.Result, var1885=r0, var2405=org.apache.ibatis.annotations.One, var3872=$r1, var2754=r10, var1815=$i0, var1929=$z0}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var74, r3=var585, org.apache.ibatis.annotations.Result=var2470, r0=var1885, org.apache.ibatis.annotations.One=var2405, $r1=var3872, r10=var2754, $i0=var1815, $z0=var1929}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r3 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r0 := @parameter0: org.apache.ibatis.annotations.Result;	$r1 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>();	r10 = interfaceinvoke $r1.<org.apache.ibatis.annotations.One: java.lang.String select()>();	$i0 = virtualinvoke r10.<java.lang.String: int length()>();	if $i0 >= 1 goto $z0 = virtualinvoke r10.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	$z0 = virtualinvoke r10.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z0 != 0 goto return r10;	return r10
;block_num 3
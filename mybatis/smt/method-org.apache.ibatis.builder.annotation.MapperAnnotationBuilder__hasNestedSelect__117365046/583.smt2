(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3882 0)
(declare-sort var337 0)
(declare-sort var255 0)
(declare-sort var1960 0)
(declare-sort var208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var337_one/-1189430392 (var337) var255)
(declare-fun var255_select/1804598698 (var255) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var337_many/444674932 (var337) var1960)
(declare-fun var1960_select/-2061486669 (var1960) String)
(declare-fun var208-init () var208)
(declare-fun <init>/-1832852593 (var208 String) void)
(declare-const null-var3882 var3882)
(declare-const null-var337 var337)
(declare-const var1374 var3882) ; Statement: r10 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var1374 null-var3882)))
(declare-const var628 var337) ; Statement: r0 := @parameter0: org.apache.ibatis.annotations.Result 
(assert (not (= var628 null-var337)))
(define-const var397 var255 (var337_one/-1189430392 var628)) ; Statement: $r1 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>() 
(define-const var3428 String (var255_select/1804598698 var397)) ; Statement: $r2 = interfaceinvoke $r1.<org.apache.ibatis.annotations.One: java.lang.String select()>() 
(assert true)
(define-const var2704 Int (length/-134980193 var3428)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r3 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>() 
(assert (not (<= var2704 0))) ; Negate: Cond: $i0 <= 0  
(define-const var539 var1960 (var337_many/444674932 var628)) ; Statement: $r7 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.Many many()>() 
(define-const var3167 String (var1960_select/-2061486669 var539)) ; Statement: $r8 = interfaceinvoke $r7.<org.apache.ibatis.annotations.Many: java.lang.String select()>() 
(assert true)
(define-const var149 Int (length/-134980193 var3167)) ; Statement: $i3 = virtualinvoke $r8.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $r3 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>() 
(assert (not (<= var149 0))) ; Negate: Cond: $i3 <= 0  
(define-const var2160 var208 var208-init) ; Statement: $r9 = new org.apache.ibatis.builder.BuilderException 
(assert true)
;(assert (<init>/-1832852593 var2160 "Cannot use both @One and @Many annotations in the same @Result")) ; Statement: specialinvoke $r9.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>("Cannot use both @One and @Many annotations in the same @Result") 

(declare-const var2160!1 var208)
(declare-const var1276 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var337_one/-1189430392=([org.apache.ibatis.annotations.Result], org.apache.ibatis.annotations.One), var255_select/1804598698=([org.apache.ibatis.annotations.One], java.lang.String), length/-134980193=([java.lang.String], int), var337_many/444674932=([org.apache.ibatis.annotations.Result], org.apache.ibatis.annotations.Many), var1960_select/-2061486669=([org.apache.ibatis.annotations.Many], java.lang.String), var208-init=([], org.apache.ibatis.builder.BuilderException), <init>/-1832852593=([org.apache.ibatis.builder.BuilderException, java.lang.String], void)}
; {var3882=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var1374=r10, var337=org.apache.ibatis.annotations.Result, var628=r0, var255=org.apache.ibatis.annotations.One, var397=$r1, var3428=$r2, var2704=$i0, var1960=org.apache.ibatis.annotations.Many, var539=$r7, var3167=$r8, var149=$i3, var208=org.apache.ibatis.builder.BuilderException, var2160=$r9, var1276="Cannot use both @One and @Many annotations in the same @Result"}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var3882, r10=var1374, org.apache.ibatis.annotations.Result=var337, r0=var628, org.apache.ibatis.annotations.One=var255, $r1=var397, $r2=var3428, $i0=var2704, org.apache.ibatis.annotations.Many=var1960, $r7=var539, $r8=var3167, $i3=var149, org.apache.ibatis.builder.BuilderException=var208, $r9=var2160, "Cannot use both @One and @Many annotations in the same @Result"=var1276}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r10 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r0 := @parameter0: org.apache.ibatis.annotations.Result;	$r1 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>();	$r2 = interfaceinvoke $r1.<org.apache.ibatis.annotations.One: java.lang.String select()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 <= 0 goto $r3 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>();	$r7 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.Many many()>();	$r8 = interfaceinvoke $r7.<org.apache.ibatis.annotations.Many: java.lang.String select()>();	$i3 = virtualinvoke $r8.<java.lang.String: int length()>();	if $i3 <= 0 goto $r3 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>();	$r9 = new org.apache.ibatis.builder.BuilderException;	specialinvoke $r9.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>("Cannot use both @One and @Many annotations in the same @Result");	throw $r9
;block_num 3
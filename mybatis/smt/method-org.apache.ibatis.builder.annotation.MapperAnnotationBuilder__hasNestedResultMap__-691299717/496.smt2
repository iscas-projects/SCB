(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3681 0)
(declare-sort var2238 0)
(declare-sort var2590 0)
(declare-sort var209 0)
(declare-sort var707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2238_one/-1189430392 (var2238) var2590)
(declare-fun var2590_resultMap/-47060587 (var2590) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2238_many/444674932 (var2238) var209)
(declare-fun var209_resultMap/-753219348 (var209) String)
(declare-fun var707-init () var707)
(declare-fun <init>/-1832852593 (var707 String) void)
(declare-const null-var3681 var3681)
(declare-const null-var2238 var2238)
(declare-const var514 var3681) ; Statement: r10 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var514 null-var3681)))
(declare-const var3091 var2238) ; Statement: r0 := @parameter0: org.apache.ibatis.annotations.Result 
(assert (not (= var3091 null-var2238)))
(define-const var859 var2590 (var2238_one/-1189430392 var3091)) ; Statement: $r1 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>() 
(define-const var615 String (var2590_resultMap/-47060587 var859)) ; Statement: $r2 = interfaceinvoke $r1.<org.apache.ibatis.annotations.One: java.lang.String resultMap()>() 
(assert true)
(define-const var843 Int (length/-134980193 var615)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r3 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>() 
(assert (not (<= var843 0))) ; Negate: Cond: $i0 <= 0  
(define-const var3771 var209 (var2238_many/444674932 var3091)) ; Statement: $r7 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.Many many()>() 
(define-const var1390 String (var209_resultMap/-753219348 var3771)) ; Statement: $r8 = interfaceinvoke $r7.<org.apache.ibatis.annotations.Many: java.lang.String resultMap()>() 
(assert true)
(define-const var47 Int (length/-134980193 var1390)) ; Statement: $i3 = virtualinvoke $r8.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $r3 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>() 
(assert (not (<= var47 0))) ; Negate: Cond: $i3 <= 0  
(define-const var788 var707 var707-init) ; Statement: $r9 = new org.apache.ibatis.builder.BuilderException 
(assert true)
;(assert (<init>/-1832852593 var788 "Cannot use both @One and @Many annotations in the same @Result")) ; Statement: specialinvoke $r9.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>("Cannot use both @One and @Many annotations in the same @Result") 

(declare-const var788!1 var707)
(declare-const var2666 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2238_one/-1189430392=([org.apache.ibatis.annotations.Result], org.apache.ibatis.annotations.One), var2590_resultMap/-47060587=([org.apache.ibatis.annotations.One], java.lang.String), length/-134980193=([java.lang.String], int), var2238_many/444674932=([org.apache.ibatis.annotations.Result], org.apache.ibatis.annotations.Many), var209_resultMap/-753219348=([org.apache.ibatis.annotations.Many], java.lang.String), var707-init=([], org.apache.ibatis.builder.BuilderException), <init>/-1832852593=([org.apache.ibatis.builder.BuilderException, java.lang.String], void)}
; {var3681=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var514=r10, var2238=org.apache.ibatis.annotations.Result, var3091=r0, var2590=org.apache.ibatis.annotations.One, var859=$r1, var615=$r2, var843=$i0, var209=org.apache.ibatis.annotations.Many, var3771=$r7, var1390=$r8, var47=$i3, var707=org.apache.ibatis.builder.BuilderException, var788=$r9, var2666="Cannot use both @One and @Many annotations in the same @Result"}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var3681, r10=var514, org.apache.ibatis.annotations.Result=var2238, r0=var3091, org.apache.ibatis.annotations.One=var2590, $r1=var859, $r2=var615, $i0=var843, org.apache.ibatis.annotations.Many=var209, $r7=var3771, $r8=var1390, $i3=var47, org.apache.ibatis.builder.BuilderException=var707, $r9=var788, "Cannot use both @One and @Many annotations in the same @Result"=var2666}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r10 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r0 := @parameter0: org.apache.ibatis.annotations.Result;	$r1 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>();	$r2 = interfaceinvoke $r1.<org.apache.ibatis.annotations.One: java.lang.String resultMap()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 <= 0 goto $r3 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>();	$r7 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.Many many()>();	$r8 = interfaceinvoke $r7.<org.apache.ibatis.annotations.Many: java.lang.String resultMap()>();	$i3 = virtualinvoke $r8.<java.lang.String: int length()>();	if $i3 <= 0 goto $r3 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>();	$r9 = new org.apache.ibatis.builder.BuilderException;	specialinvoke $r9.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>("Cannot use both @One and @Many annotations in the same @Result");	throw $r9
;block_num 3
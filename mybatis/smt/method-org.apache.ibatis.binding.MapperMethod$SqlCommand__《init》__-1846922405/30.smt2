(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3469 0)
(declare-sort var711 0)
(declare-sort var3548 0)
(declare-sort var2008 0)
(declare-sort var3103 0)
(declare-sort var138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2008) void)
(declare-fun cast-from-var3469-to-var2008 (var3469) var2008)
(declare-fun getName/1227988463 (var3548) String)
(declare-fun getDeclaringClass/501867354 (var3548) ClassObject)
(declare-fun resolveMappedStatement/1760418334 (var3469 ClassObject String ClassObject var711) var3103)
(declare-fun getId/-2022694909 (var3103) String)
(declare-fun name/1559191284 (var3469) String)
(declare-fun getSqlCommandType/1927113459 (var3103) var138)
(declare-fun type/1559191284 (var3469) var138)
(declare-const null-var3469 var3469)
(declare-const null-var711 var711)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3548 var3548)
(declare-const null-var3103 var3103)
(declare-const var138-UNKNOWN var138)
(declare-const var1357 var3469) ; Statement: r0 := @this: org.apache.ibatis.binding.MapperMethod$SqlCommand 
(assert (not (= var1357 null-var3469)))
(declare-const var1900 var711) ; Statement: r5 := @parameter0: org.apache.ibatis.session.Configuration 
(assert (not (= var1900 null-var711)))
(declare-const var2535 ClassObject) ; Statement: r4 := @parameter1: java.lang.Class 
(assert (not (= var2535 null-ClassObject)))
(declare-const var2408 var3548) ; Statement: r1 := @parameter2: java.lang.reflect.Method 
(assert (not (= var2408 null-var3548)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3469-to-var2008 var1357))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1357!1 var3469)
(assert true)
(define-const var789 String (getName/1227988463 var2408)) ; Statement: r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var56 ClassObject (getDeclaringClass/501867354 var2408)) ; Statement: r3 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var2720 var3103 (resolveMappedStatement/1760418334 var1357!1 var2535 var789 var56 var1900)) ; Statement: r6 = specialinvoke r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.MappedStatement resolveMappedStatement(java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.session.Configuration)>(r4, r2, r3, r5) 
 ; Statement: if r6 != null goto $r7 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>() 
(assert (not (= var2720 null-var3103))) ; Cond: r6 != null 
(assert true)
(define-const var3884 String (getId/-2022694909 var2720)) ; Statement: $r7 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>() 
(declare-const var1357!2 var3469)
(assert (not (= var1357!2 null-var3469)))
(assert (= (name/1559191284 var1357!2) var3884)) ; Statement: r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String name> = $r7 
(assert true)
(define-const var2661 var138 (getSqlCommandType/1927113459 var2720)) ; Statement: $r8 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>() 
(declare-const var1357!3 var3469)
(assert (not (= var1357!3 null-var3469)))
(assert (= (type/1559191284 var1357!3) var2661)) ; Statement: r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.SqlCommandType type> = $r8 
(define-const var3147 var138 (type/1559191284 var1357!3)) ; Statement: $r10 = r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.SqlCommandType type> 
(define-const var2340 var138 var138-UNKNOWN) ; Statement: $r9 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UNKNOWN> 
 ; Statement: if $r10 != $r9 goto return 
(assert (not (= var3147 var2340))) ; Cond: $r10 != $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3469-to-var2008=([org.apache.ibatis.binding.MapperMethod$SqlCommand], java.lang.Object), getName/1227988463=([java.lang.reflect.Method], java.lang.String), getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), resolveMappedStatement/1760418334=([org.apache.ibatis.binding.MapperMethod$SqlCommand, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.session.Configuration], org.apache.ibatis.mapping.MappedStatement), getId/-2022694909=([org.apache.ibatis.mapping.MappedStatement], java.lang.String), name/1559191284=([org.apache.ibatis.binding.MapperMethod$SqlCommand], java.lang.String), getSqlCommandType/1927113459=([org.apache.ibatis.mapping.MappedStatement], org.apache.ibatis.mapping.SqlCommandType), type/1559191284=([org.apache.ibatis.binding.MapperMethod$SqlCommand], org.apache.ibatis.mapping.SqlCommandType)}
; {var3469=org.apache.ibatis.binding.MapperMethod$SqlCommand, var1357=r0, var711=org.apache.ibatis.session.Configuration, var1900=r5, var2535=r4, var3548=java.lang.reflect.Method, var2408=r1, var2008=java.lang.Object, var789=r2, var56=r3, var3103=org.apache.ibatis.mapping.MappedStatement, var2720=r6, var3884=$r7, var138=org.apache.ibatis.mapping.SqlCommandType, var2661=$r8, var3147=$r10, var2340=$r9}
; {org.apache.ibatis.binding.MapperMethod$SqlCommand=var3469, r0=var1357, org.apache.ibatis.session.Configuration=var711, r5=var1900, r4=var2535, java.lang.reflect.Method=var3548, r1=var2408, java.lang.Object=var2008, r2=var789, r3=var56, org.apache.ibatis.mapping.MappedStatement=var3103, r6=var2720, $r7=var3884, org.apache.ibatis.mapping.SqlCommandType=var138, $r8=var2661, $r10=var3147, $r9=var2340}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.binding.MapperMethod$SqlCommand;	r5 := @parameter0: org.apache.ibatis.session.Configuration;	r4 := @parameter1: java.lang.Class;	r1 := @parameter2: java.lang.reflect.Method;	specialinvoke r0.<java.lang.Object: void <init>()>();	r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	r3 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	r6 = specialinvoke r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.MappedStatement resolveMappedStatement(java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.session.Configuration)>(r4, r2, r3, r5);	if r6 != null goto $r7 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>();	$r7 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>();	r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String name> = $r7;	$r8 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>();	r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.SqlCommandType type> = $r8;	$r10 = r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.SqlCommandType type>;	$r9 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UNKNOWN>;	if $r10 != $r9 goto return;	return
;block_num 3
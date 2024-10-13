(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2485 0)
(declare-sort var1887 0)
(declare-sort var3100 0)
(declare-sort var1012 0)
(declare-sort var1406 0)
(declare-sort var648 0)
(declare-sort var273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1012) void)
(declare-fun cast-from-var2485-to-var1012 (var2485) var1012)
(declare-fun getName/1227988463 (var3100) String)
(declare-fun getDeclaringClass/501867354 (var3100) ClassObject)
(declare-fun resolveMappedStatement/1760418334 (var2485 ClassObject String ClassObject var1887) var1406)
(declare-fun getId/-2022694909 (var1406) String)
(declare-fun name/1559191284 (var2485) String)
(declare-fun getSqlCommandType/1927113459 (var1406) var648)
(declare-fun type/1559191284 (var2485) var648)
(declare-fun var273-init () var273)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1937591867 (var273 String) void)
(declare-const null-var2485 var2485)
(declare-const null-var1887 var1887)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3100 var3100)
(declare-const null-var1406 var1406)
(declare-const var648-UNKNOWN var648)
(declare-const var406 var2485) ; Statement: r0 := @this: org.apache.ibatis.binding.MapperMethod$SqlCommand 
(assert (not (= var406 null-var2485)))
(declare-const var2623 var1887) ; Statement: r5 := @parameter0: org.apache.ibatis.session.Configuration 
(assert (not (= var2623 null-var1887)))
(declare-const var3101 ClassObject) ; Statement: r4 := @parameter1: java.lang.Class 
(assert (not (= var3101 null-ClassObject)))
(declare-const var667 var3100) ; Statement: r1 := @parameter2: java.lang.reflect.Method 
(assert (not (= var667 null-var3100)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2485-to-var1012 var406))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var406!1 var2485)
(assert true)
(define-const var2454 String (getName/1227988463 var667)) ; Statement: r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var357 ClassObject (getDeclaringClass/501867354 var667)) ; Statement: r3 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var214 var1406 (resolveMappedStatement/1760418334 var406!1 var3101 var2454 var357 var2623)) ; Statement: r6 = specialinvoke r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.MappedStatement resolveMappedStatement(java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.session.Configuration)>(r4, r2, r3, r5) 
 ; Statement: if r6 != null goto $r7 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>() 
(assert (not (= var214 null-var1406))) ; Cond: r6 != null 
(assert true)
(define-const var97 String (getId/-2022694909 var214)) ; Statement: $r7 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>() 
(declare-const var406!2 var2485)
(assert (not (= var406!2 null-var2485)))
(assert (= (name/1559191284 var406!2) var97)) ; Statement: r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String name> = $r7 
(assert true)
(define-const var1988 var648 (getSqlCommandType/1927113459 var214)) ; Statement: $r8 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>() 
(declare-const var406!3 var2485)
(assert (not (= var406!3 null-var2485)))
(assert (= (type/1559191284 var406!3) var1988)) ; Statement: r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.SqlCommandType type> = $r8 
(define-const var3076 var648 (type/1559191284 var406!3)) ; Statement: $r10 = r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.SqlCommandType type> 
(define-const var1491 var648 var648-UNKNOWN) ; Statement: $r9 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UNKNOWN> 
 ; Statement: if $r10 != $r9 goto return 
(assert (not (not (= var3076 var1491)))) ; Negate: Cond: $r10 != $r9  
(define-const var682 var273 var273-init) ; Statement: $r11 = new org.apache.ibatis.binding.BindingException 
(define-const var2343 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2343)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2343!1 String)
(assert (= var2343!1 ""))
(assert true)
(define-const var2437 String (append/672562846 var2343!1 "Unknown execution method for: ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown execution method for: ") 
(declare-const var2343!2 String)
(assert (= var2343!2 (str.++ var2343!1 "Unknown execution method for: ")))
(define-const var3594 String (name/1559191284 var406!3)) ; Statement: $r13 = r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String name> 
(assert true)
(define-const var3010 String (append/672562846 var2437 var3594)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2437!1 String)
(assert (= var2437!1 (str.++ var2437 var3594)))
(assert true)
(define-const var1184 String (toString/-2075883882 var3010)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1937591867 var682 var1184)) ; Statement: specialinvoke $r11.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r16) 

(declare-const var682!1 var273)
(declare-const var1184!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2485-to-var1012=([org.apache.ibatis.binding.MapperMethod$SqlCommand], java.lang.Object), getName/1227988463=([java.lang.reflect.Method], java.lang.String), getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), resolveMappedStatement/1760418334=([org.apache.ibatis.binding.MapperMethod$SqlCommand, java.lang.Class, java.lang.String, java.lang.Class, org.apache.ibatis.session.Configuration], org.apache.ibatis.mapping.MappedStatement), getId/-2022694909=([org.apache.ibatis.mapping.MappedStatement], java.lang.String), name/1559191284=([org.apache.ibatis.binding.MapperMethod$SqlCommand], java.lang.String), getSqlCommandType/1927113459=([org.apache.ibatis.mapping.MappedStatement], org.apache.ibatis.mapping.SqlCommandType), type/1559191284=([org.apache.ibatis.binding.MapperMethod$SqlCommand], org.apache.ibatis.mapping.SqlCommandType), var273-init=([], org.apache.ibatis.binding.BindingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1937591867=([org.apache.ibatis.binding.BindingException, java.lang.String], void)}
; {var2485=org.apache.ibatis.binding.MapperMethod$SqlCommand, var406=r0, var1887=org.apache.ibatis.session.Configuration, var2623=r5, var3101=r4, var3100=java.lang.reflect.Method, var667=r1, var1012=java.lang.Object, var2454=r2, var357=r3, var1406=org.apache.ibatis.mapping.MappedStatement, var214=r6, var97=$r7, var648=org.apache.ibatis.mapping.SqlCommandType, var1988=$r8, var3076=$r10, var1491=$r9, var273=org.apache.ibatis.binding.BindingException, var682=$r11, var2343=$r12, var2437=$r14, var3594=$r13, var3010=$r15, var1184=$r16}
; {org.apache.ibatis.binding.MapperMethod$SqlCommand=var2485, r0=var406, org.apache.ibatis.session.Configuration=var1887, r5=var2623, r4=var3101, java.lang.reflect.Method=var3100, r1=var667, java.lang.Object=var1012, r2=var2454, r3=var357, org.apache.ibatis.mapping.MappedStatement=var1406, r6=var214, $r7=var97, org.apache.ibatis.mapping.SqlCommandType=var648, $r8=var1988, $r10=var3076, $r9=var1491, org.apache.ibatis.binding.BindingException=var273, $r11=var682, $r12=var2343, $r14=var2437, $r13=var3594, $r15=var3010, $r16=var1184}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.binding.MapperMethod$SqlCommand;	r5 := @parameter0: org.apache.ibatis.session.Configuration;	r4 := @parameter1: java.lang.Class;	r1 := @parameter2: java.lang.reflect.Method;	specialinvoke r0.<java.lang.Object: void <init>()>();	r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	r3 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	r6 = specialinvoke r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.MappedStatement resolveMappedStatement(java.lang.Class,java.lang.String,java.lang.Class,org.apache.ibatis.session.Configuration)>(r4, r2, r3, r5);	if r6 != null goto $r7 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>();	$r7 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>();	r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String name> = $r7;	$r8 = virtualinvoke r6.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.mapping.SqlCommandType getSqlCommandType()>();	r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.SqlCommandType type> = $r8;	$r10 = r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: org.apache.ibatis.mapping.SqlCommandType type>;	$r9 = <org.apache.ibatis.mapping.SqlCommandType: org.apache.ibatis.mapping.SqlCommandType UNKNOWN>;	if $r10 != $r9 goto return;	$r11 = new org.apache.ibatis.binding.BindingException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown execution method for: ");	$r13 = r0.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String name>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3508 0)
(declare-sort var683 0)
(declare-sort var548 0)
(declare-sort var2017 0)
(declare-sort var557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun multiplier/-1229809366 (var2017) Int)
(declare-fun cast-from-var3508-to-var2017 (var3508) var2017)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var557_indexOfIgnoreCase/1193821831 (String String) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun parseObject/1074965102 (var2017 String var548) Int)
(declare-const null-var3508 var3508)
(declare-const null-String String)
(declare-const null-var548 var548)
(declare-const var2715 var3508) ; Statement: r0 := @this: com.mysql.cj.conf.MemorySizePropertyDefinition 
(assert (not (= var2715 null-var3508)))
(declare-const var1049 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1049 null-String)))
(declare-const var397 var548) ; Statement: r1 := @parameter1: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var397 null-var548)))
(declare-const var2715!1 var3508)
(assert (not (= var2715!1 null-var3508)))
(assert (= (multiplier/-1229809366 (cast-from-var3508-to-var2017 var2715!1)) 1)) ; Statement: r0.<com.mysql.cj.conf.MemorySizePropertyDefinition: int multiplier> = 1 
(assert true)
(define-const var189 Bool (endsWith/985337093 var1049 "k")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>("k") 
 ; Statement: if $z0 != 0 goto r0.<com.mysql.cj.conf.MemorySizePropertyDefinition: int multiplier> = 1024 
(assert (not (= (ite var189 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2715!2 var3508)
(assert (not (= var2715!2 null-var3508)))
(assert (= (multiplier/-1229809366 (cast-from-var3508-to-var2017 var2715!2)) 1024)) ; Statement: r0.<com.mysql.cj.conf.MemorySizePropertyDefinition: int multiplier> = 1024 
(define-const var2923 Int (var557_indexOfIgnoreCase/1193821831 var1049 "k")) ; Statement: $i0 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r2, "k") 
(assert (and true (and (>= 0 0) (>= (str.len var1049) var2923) (>= var2923 0))))
(define-const var1049!1 String (substring/-1240304868 var1049 0 var2923)) ; Statement: r2 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i0) 
 ; Statement: goto [?= $r3 = specialinvoke r0.<com.mysql.cj.conf.IntegerPropertyDefinition: java.lang.Integer parseObject(java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(r2, r1)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3424 Int (parseObject/1074965102 (cast-from-var3508-to-var2017 var2715!2) var1049!1 var397)) ; Statement: $r3 = specialinvoke r0.<com.mysql.cj.conf.IntegerPropertyDefinition: java.lang.Integer parseObject(java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(r2, r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {multiplier/-1229809366=([com.mysql.cj.conf.IntegerPropertyDefinition], int), cast-from-var3508-to-var2017=([com.mysql.cj.conf.MemorySizePropertyDefinition], com.mysql.cj.conf.IntegerPropertyDefinition), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var557_indexOfIgnoreCase/1193821831=([java.lang.String, java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), parseObject/1074965102=([com.mysql.cj.conf.IntegerPropertyDefinition, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.lang.Integer)}
; {var3508=com.mysql.cj.conf.MemorySizePropertyDefinition, var2715=r0, var1049=r2, var683=null_type, var548=com.mysql.cj.exceptions.ExceptionInterceptor, var397=r1, var2017=com.mysql.cj.conf.IntegerPropertyDefinition, var189=$z0, var557=com.mysql.cj.util.StringUtils, var2923=$i0, var3424=$r3}
; {com.mysql.cj.conf.MemorySizePropertyDefinition=var3508, r0=var2715, r2=var1049, null_type=var683, com.mysql.cj.exceptions.ExceptionInterceptor=var548, r1=var397, com.mysql.cj.conf.IntegerPropertyDefinition=var2017, $z0=var189, com.mysql.cj.util.StringUtils=var557, $i0=var2923, $r3=var3424}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.mysql.cj.conf.MemorySizePropertyDefinition;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: com.mysql.cj.exceptions.ExceptionInterceptor;	r0.<com.mysql.cj.conf.MemorySizePropertyDefinition: int multiplier> = 1;	$z0 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>("k");	if $z0 != 0 goto r0.<com.mysql.cj.conf.MemorySizePropertyDefinition: int multiplier> = 1024;	r0.<com.mysql.cj.conf.MemorySizePropertyDefinition: int multiplier> = 1024;	$i0 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r2, "k");	r2 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	goto [?= $r3 = specialinvoke r0.<com.mysql.cj.conf.IntegerPropertyDefinition: java.lang.Integer parseObject(java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(r2, r1)];	$r3 = specialinvoke r0.<com.mysql.cj.conf.IntegerPropertyDefinition: java.lang.Integer parseObject(java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(r2, r1);	return $r3
;block_num 3
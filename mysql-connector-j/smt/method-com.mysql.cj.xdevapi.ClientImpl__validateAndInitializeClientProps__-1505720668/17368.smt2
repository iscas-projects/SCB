(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var182 0)
(declare-sort var1240 0)
(declare-sort var2432 0)
(declare-sort var2652 0)
(declare-sort var760 0)
(declare-sort var396 0)
(declare-sort var3901 0)
(declare-sort var886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getKeyName/1060914282 (var2432) String)
(declare-fun containsKey/1347873298 (var2652 var760) Bool)
(declare-fun cast-from-var1240-to-var2652 (var1240) var2652)
(declare-fun cast-from-String-to-var760 (String) var760)
(declare-fun getProperty/1391780669 (var1240 String) String)
(declare-fun var3901-init () var3901)
(declare-fun arr-var760-init () (Array Int var760))
(declare-fun String_format/1339386452 (String (Array Int var760)) String)
(declare-fun <init>/-968032168 (var3901 String var886) void)
(declare-fun cast-from-var396-to-var886 (var396) var886)
(declare-const null-var182 var182)
(declare-const null-var1240 var1240)
(declare-const var2432-POOLING_ENABLED var2432)
(declare-const null-var396 var396)
(declare-const null-__Array__Int__var760__ (Array Int var760))
(declare-const var3460 var182) ; Statement: r20 := @this: com.mysql.cj.xdevapi.ClientImpl 
(assert (not (= var3460 null-var182)))
(declare-const var855 var1240) ; Statement: r1 := @parameter0: java.util.Properties 
(assert (not (= var855 null-var1240)))
(define-const var2919 var2432 var2432-POOLING_ENABLED) ; Statement: $r0 = <com.mysql.cj.xdevapi.Client$ClientProperty: com.mysql.cj.xdevapi.Client$ClientProperty POOLING_ENABLED> 
(assert true)
(define-const var3512 String (getKeyName/1060914282 var2919)) ; Statement: r55 = virtualinvoke $r0.<com.mysql.cj.xdevapi.Client$ClientProperty: java.lang.String getKeyName()>() 
(assert true)
(define-const var548 Bool (containsKey/1347873298 (cast-from-var1240-to-var2652 var855) (cast-from-String-to-var760 var3512))) ; Statement: $z0 = virtualinvoke r1.<java.util.Properties: boolean containsKey(java.lang.Object)>(r55) 
 ; Statement: if $z0 == 0 goto $r2 = <com.mysql.cj.xdevapi.Client$ClientProperty: com.mysql.cj.xdevapi.Client$ClientProperty POOLING_MAX_SIZE> 
(assert (not (= (ite var548 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var186 String (getProperty/1391780669 var855 var3512)) ; Statement: r56 = virtualinvoke r1.<java.util.Properties: java.lang.String getProperty(java.lang.String)>(r55) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1105 var396) ; Statement: $r51 := @caughtexception 
(assert (not (= var1105 null-var396)))
(define-const var3298 var3901 var3901-init) ; Statement: $r52 = new com.mysql.cj.xdevapi.XDevAPIError 
(define-const var2945 (Array Int var760) arr-var760-init) ; Statement: $r53 = newarray (java.lang.Object)[2] 
(declare-const var2945!1 (Array Int var760))
(assert (not (= var2945!1 null-__Array__Int__var760__)))
(assert (= (select var2945!1 0) (cast-from-String-to-var760 var3512))) ; Statement: $r53[0] = r55 
(declare-const var2945!2 (Array Int var760))
(assert (not (= var2945!2 null-__Array__Int__var760__)))
(assert (= (select var2945!2 1) (cast-from-String-to-var760 var186))) ; Statement: $r53[1] = r56 
(define-const var2599 String (String_format/1339386452 "Client option \u0027%s\u0027 does not support value \u0027%s\u0027." var2945!2)) ; Statement: $r54 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Client option \'%s\' does not support value \'%s\'.", $r53) 
(assert true)
;(assert (<init>/-968032168 var3298 var2599 (cast-from-var396-to-var886 var1105))) ; Statement: specialinvoke $r52.<com.mysql.cj.xdevapi.XDevAPIError: void <init>(java.lang.String,java.lang.Throwable)>($r54, $r51) 

(declare-const var3298!1 var3901)
(declare-const var2599!1 String)
(declare-const var1105!1 var396)
 ; Statement: throw $r52 
(check-sat)
(get-model)
(get-unsat-core)
; {getKeyName/1060914282=([com.mysql.cj.xdevapi.Client$ClientProperty], java.lang.String), containsKey/1347873298=([java.util.Hashtable, java.lang.Object], boolean), cast-from-var1240-to-var2652=([java.util.Properties], java.util.Hashtable), cast-from-String-to-var760=([java.lang.String], java.lang.Object), getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String), var3901-init=([], com.mysql.cj.xdevapi.XDevAPIError), arr-var760-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-968032168=([com.mysql.cj.xdevapi.XDevAPIError, java.lang.String, java.lang.Throwable], void), cast-from-var396-to-var886=([com.mysql.cj.exceptions.CJException], java.lang.Throwable)}
; {var182=com.mysql.cj.xdevapi.ClientImpl, var3460=r20, var1240=java.util.Properties, var855=r1, var2432=com.mysql.cj.xdevapi.Client$ClientProperty, var2919=$r0, var3512=r55, var2652=java.util.Hashtable, var760=java.lang.Object, var548=$z0, var186=r56, var396=com.mysql.cj.exceptions.CJException, var1105=$r51, var3901=com.mysql.cj.xdevapi.XDevAPIError, var3298=$r52, var2945=$r53, var2599=$r54, var886=java.lang.Throwable}
; {com.mysql.cj.xdevapi.ClientImpl=var182, r20=var3460, java.util.Properties=var1240, r1=var855, com.mysql.cj.xdevapi.Client$ClientProperty=var2432, $r0=var2919, r55=var3512, java.util.Hashtable=var2652, java.lang.Object=var760, $z0=var548, r56=var186, com.mysql.cj.exceptions.CJException=var396, $r51=var1105, com.mysql.cj.xdevapi.XDevAPIError=var3901, $r52=var3298, $r53=var2945, $r54=var2599, java.lang.Throwable=var886}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r20 := @this: com.mysql.cj.xdevapi.ClientImpl;	r1 := @parameter0: java.util.Properties;	$r0 = <com.mysql.cj.xdevapi.Client$ClientProperty: com.mysql.cj.xdevapi.Client$ClientProperty POOLING_ENABLED>;	r55 = virtualinvoke $r0.<com.mysql.cj.xdevapi.Client$ClientProperty: java.lang.String getKeyName()>();	$z0 = virtualinvoke r1.<java.util.Properties: boolean containsKey(java.lang.Object)>(r55);	if $z0 == 0 goto $r2 = <com.mysql.cj.xdevapi.Client$ClientProperty: com.mysql.cj.xdevapi.Client$ClientProperty POOLING_MAX_SIZE>;	r56 = virtualinvoke r1.<java.util.Properties: java.lang.String getProperty(java.lang.String)>(r55);	$r51 := @caughtexception;	$r52 = new com.mysql.cj.xdevapi.XDevAPIError;	$r53 = newarray (java.lang.Object)[2];	$r53[0] = r55;	$r53[1] = r56;	$r54 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Client option \'%s\' does not support value \'%s\'.", $r53);	specialinvoke $r52.<com.mysql.cj.xdevapi.XDevAPIError: void <init>(java.lang.String,java.lang.Throwable)>($r54, $r51);	throw $r52
;block_num 3
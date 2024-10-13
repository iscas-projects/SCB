(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2791 0)
(declare-sort var3607 0)
(declare-sort var2511 0)
(declare-sort var781 0)
(declare-sort var3230 0)
(declare-sort var2401 0)
(declare-sort var2349 0)
(declare-sort var2149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2511-init () (Array Int var2511))
(declare-fun var781_notBlank/-161903167 (String String (Array Int var2511)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var3230_isNotEmpty/1408540788 ((Array Int var2511)) Bool)
(declare-fun var3230_isEmpty/916532361 ((Array Int var2511)) Bool)
(declare-fun log/-653883511 (var2401 String var2511) void)
(declare-fun cast-from-__Array__Int__var2511__-to-var2511 ((Array Int var2511)) var2511)
(declare-fun var2791_prepareStatement/1695973940 (var2791 String) var2349)
(declare-fun var2149_fillParams/-1576292286 (var2349 (Array Int var2511)) var2349)
(declare-const null-Bool Bool)
(declare-const null-var2791 var2791)
(declare-const null-String String)
(declare-const null-__Array__Int__var2511__ (Array Int var2511))
(declare-const var2401-INSTANCE var2401)
(declare-const var333 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var333 null-Bool)))
(declare-const var752 var2791) ; Statement: r2 := @parameter1: java.sql.Connection 
(assert (not (= var752 null-var2791)))
(declare-const var3055 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var3055 null-String)))
(declare-const var1187 (Array Int var2511)) ; Statement: r9 := @parameter3: java.lang.Object[] 
(assert (not (= var1187 null-__Array__Int__var2511__)))
(define-const var230 (Array Int var2511) arr-var2511-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var781_notBlank/-161903167 (cast-from-String-to-String var3055) "Sql String must be not blank!" var230)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r8, "Sql String must be not blank!", $r0) 

(declare-const var3055!1 String)
(declare-const var2644 String)
(declare-const var230!1 (Array Int var2511))
(assert true)
(define-const var2853 String (trim/-847153721 var3055!1)) ; Statement: r10 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>() 
(define-const var3057 Bool (var3230_isNotEmpty/1408540788 var1187)) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isNotEmpty(java.lang.Object[])>(r9) 
 ; Statement: if $z0 == 0 goto $r1 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE> 
(assert (= (ite var3057 1 0) 0)) ; Cond: $z0 == 0 
(define-const var358 var2401 var2401-INSTANCE) ; Statement: $r1 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE> 
(define-const var2742 String var2853) ; Statement: $r3 = r10 
(define-const var1089 Bool (var3230_isEmpty/916532361 var1187)) ; Statement: $z4 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r9) 
 ; Statement: if $z4 == 0 goto $r11 = r9 
(assert (not (= (ite var1089 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var2559 (Array Int var2511) null-__Array__Int__var2511__) ; Statement: $r11 = null 
 ; Statement: goto [?= virtualinvoke $r1.<cn.hutool.db.sql.SqlLog: void log(java.lang.String,java.lang.Object)>($r3, $r11)] 
(assert true) ; Non Conditional
(assert true)
;(assert (log/-653883511 var358 var2742 (cast-from-__Array__Int__var2511__-to-var2511 var2559))) ; Statement: virtualinvoke $r1.<cn.hutool.db.sql.SqlLog: void log(java.lang.String,java.lang.Object)>($r3, $r11) 

(declare-const var358!1 var2401)
(declare-const var2742!1 String)
(declare-const var2559!1 (Array Int var2511))
 ; Statement: if z1 == 0 goto r12 = interfaceinvoke r2.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r10) 
(assert (= (ite var333 1 0) 0)) ; Cond: z1 == 0 
(define-const var344 var2349 (var2791_prepareStatement/1695973940 var752 var2853)) ; Statement: r12 = interfaceinvoke r2.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r10) 
(assert true) ; Non Conditional
(define-const var1054 var2349 (var2149_fillParams/-1576292286 var344 var1187)) ; Statement: $r13 = staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement fillParams(java.sql.PreparedStatement,java.lang.Object[])>(r12, r9) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2511-init=([], java.lang.Object[]), var781_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), var3230_isNotEmpty/1408540788=([java.lang.Object[]], boolean), var3230_isEmpty/916532361=([java.lang.Object[]], boolean), log/-653883511=([cn.hutool.db.sql.SqlLog, java.lang.String, java.lang.Object], void), cast-from-__Array__Int__var2511__-to-var2511=([java.lang.Object[]], java.lang.Object), var2791_prepareStatement/1695973940=([java.sql.Connection, java.lang.String], java.sql.PreparedStatement), var2149_fillParams/-1576292286=([java.sql.PreparedStatement, java.lang.Object[]], java.sql.PreparedStatement)}
; {var333=z1, var2791=java.sql.Connection, var752=r2, var3055=r8, var3607=null_type, var2511=java.lang.Object, var1187=r9, var230=$r0, var781=cn.hutool.core.lang.Assert, var2644="Sql String must be not blank!", var2853=r10, var3230=cn.hutool.core.util.ArrayUtil, var3057=$z0, var2401=cn.hutool.db.sql.SqlLog, var358=$r1, var2742=$r3, var1089=$z4, var2559=$r11, var2349=java.sql.PreparedStatement, var344=r12, var2149=cn.hutool.db.StatementUtil, var1054=$r13}
; {z1=var333, java.sql.Connection=var2791, r2=var752, r8=var3055, null_type=var3607, java.lang.Object=var2511, r9=var1187, $r0=var230, cn.hutool.core.lang.Assert=var781, "Sql String must be not blank!"=var2644, r10=var2853, cn.hutool.core.util.ArrayUtil=var3230, $z0=var3057, cn.hutool.db.sql.SqlLog=var2401, $r1=var358, $r3=var2742, $z4=var1089, $r11=var2559, java.sql.PreparedStatement=var2349, r12=var344, cn.hutool.db.StatementUtil=var2149, $r13=var1054}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts z1 := @parameter0: boolean;	r2 := @parameter1: java.sql.Connection;	r8 := @parameter2: java.lang.String;	r9 := @parameter3: java.lang.Object[];	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r8, "Sql String must be not blank!", $r0);	r10 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>();	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isNotEmpty(java.lang.Object[])>(r9);	if $z0 == 0 goto $r1 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE>;	$r1 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE>;	$r3 = r10;	$z4 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r9);	if $z4 == 0 goto $r11 = r9;	$r11 = null;	goto [?= virtualinvoke $r1.<cn.hutool.db.sql.SqlLog: void log(java.lang.String,java.lang.Object)>($r3, $r11)];	virtualinvoke $r1.<cn.hutool.db.sql.SqlLog: void log(java.lang.String,java.lang.Object)>($r3, $r11);	if z1 == 0 goto r12 = interfaceinvoke r2.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r10);	r12 = interfaceinvoke r2.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r10);	$r13 = staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement fillParams(java.sql.PreparedStatement,java.lang.Object[])>(r12, r9);	return $r13
;block_num 6
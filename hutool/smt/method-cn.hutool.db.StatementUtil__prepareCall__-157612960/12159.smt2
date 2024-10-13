(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2648 0)
(declare-sort var407 0)
(declare-sort var965 0)
(declare-sort var2338 0)
(declare-sort var715 0)
(declare-sort var2110 0)
(declare-sort var1109 0)
(declare-sort var2521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var965-init () (Array Int var965))
(declare-fun var2338_notBlank/-161903167 (String String (Array Int var965)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun log/-653883511 (var715 String var965) void)
(declare-fun cast-from-__Array__Int__var965__-to-var965 ((Array Int var965)) var965)
(declare-fun var2648_prepareCall/-1307937090 (var2648 String) var2110)
(declare-fun var1109_fillParams/-1576292286 (var2521 (Array Int var965)) var2521)
(declare-fun cast-from-var2110-to-var2521 (var2110) var2521)
(declare-const null-var2648 var2648)
(declare-const null-String String)
(declare-const null-__Array__Int__var965__ (Array Int var965))
(declare-const var715-INSTANCE var715)
(declare-const var2490 var2648) ; Statement: r3 := @parameter0: java.sql.Connection 
(assert (not (= var2490 null-var2648)))
(declare-const var1216 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1216 null-String)))
(declare-const var3880 (Array Int var965)) ; Statement: r1 := @parameter2: java.lang.Object[] 
(assert (not (= var3880 null-__Array__Int__var965__)))
(define-const var1804 (Array Int var965) arr-var965-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var2338_notBlank/-161903167 (cast-from-String-to-String var1216) "Sql String must be not blank!" var1804)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r5, "Sql String must be not blank!", $r0) 

(declare-const var1216!1 String)
(declare-const var1428 String)
(declare-const var1804!1 (Array Int var965))
(assert true)
(define-const var3126 String (trim/-847153721 var1216!1)) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>() 
(define-const var3035 var715 var715-INSTANCE) ; Statement: $r2 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE> 
(assert true)
;(assert (log/-653883511 var3035 var3126 (cast-from-__Array__Int__var965__-to-var965 var3880))) ; Statement: virtualinvoke $r2.<cn.hutool.db.sql.SqlLog: void log(java.lang.String,java.lang.Object)>(r6, r1) 

(declare-const var3035!1 var715)
(declare-const var3126!1 String)
(declare-const var3880!1 (Array Int var965))
(define-const var3727 var2110 (var2648_prepareCall/-1307937090 var2490 var3126!1)) ; Statement: r4 = interfaceinvoke r3.<java.sql.Connection: java.sql.CallableStatement prepareCall(java.lang.String)>(r6) 
;(assert (var1109_fillParams/-1576292286 (cast-from-var2110-to-var2521 var3727) var3880!1)) ; Statement: staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement fillParams(java.sql.PreparedStatement,java.lang.Object[])>(r4, r1) 

(declare-const var3727!1 var2110)
(declare-const var3880!2 (Array Int var965))
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var965-init=([], java.lang.Object[]), var2338_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), log/-653883511=([cn.hutool.db.sql.SqlLog, java.lang.String, java.lang.Object], void), cast-from-__Array__Int__var965__-to-var965=([java.lang.Object[]], java.lang.Object), var2648_prepareCall/-1307937090=([java.sql.Connection, java.lang.String], java.sql.CallableStatement), var1109_fillParams/-1576292286=([java.sql.PreparedStatement, java.lang.Object[]], java.sql.PreparedStatement), cast-from-var2110-to-var2521=([java.sql.CallableStatement], java.sql.PreparedStatement)}
; {var2648=java.sql.Connection, var2490=r3, var1216=r5, var407=null_type, var965=java.lang.Object, var3880=r1, var1804=$r0, var2338=cn.hutool.core.lang.Assert, var1428="Sql String must be not blank!", var3126=r6, var715=cn.hutool.db.sql.SqlLog, var3035=$r2, var2110=java.sql.CallableStatement, var3727=r4, var1109=cn.hutool.db.StatementUtil, var2521=java.sql.PreparedStatement}
; {java.sql.Connection=var2648, r3=var2490, r5=var1216, null_type=var407, java.lang.Object=var965, r1=var3880, $r0=var1804, cn.hutool.core.lang.Assert=var2338, "Sql String must be not blank!"=var1428, r6=var3126, cn.hutool.db.sql.SqlLog=var715, $r2=var3035, java.sql.CallableStatement=var2110, r4=var3727, cn.hutool.db.StatementUtil=var1109, java.sql.PreparedStatement=var2521}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r3 := @parameter0: java.sql.Connection;	r5 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Object[];	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r5, "Sql String must be not blank!", $r0);	r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>();	$r2 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE>;	virtualinvoke $r2.<cn.hutool.db.sql.SqlLog: void log(java.lang.String,java.lang.Object)>(r6, r1);	r4 = interfaceinvoke r3.<java.sql.Connection: java.sql.CallableStatement prepareCall(java.lang.String)>(r6);	staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement fillParams(java.sql.PreparedStatement,java.lang.Object[])>(r4, r1);	return r4
;block_num 1
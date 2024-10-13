(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2582 0)
(declare-sort var2165 0)
(declare-sort var3356 0)
(declare-sort var448 0)
(declare-sort var1656 0)
(declare-sort var1702 0)
(declare-sort var3933 0)
(declare-sort var1268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3356-init () (Array Int var3356))
(declare-fun var448_notBlank/-161903167 (String String (Array Int var3356)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var1656_isNotEmpty/1408540788 ((Array Int var3356)) Bool)
(declare-fun var1656_isEmpty/916532361 ((Array Int var3356)) Bool)
(declare-fun log/-653883511 (var1702 String var3356) void)
(declare-fun cast-from-__Array__Int__var3356__-to-var3356 ((Array Int var3356)) var3356)
(declare-fun var2582_prepareStatement/1695973940 (var2582 String) var3933)
(declare-fun var1268_fillParams/-1576292286 (var3933 (Array Int var3356)) var3933)
(declare-const null-Bool Bool)
(declare-const null-var2582 var2582)
(declare-const null-String String)
(declare-const null-__Array__Int__var3356__ (Array Int var3356))
(declare-const var1702-INSTANCE var1702)
(declare-const var1792 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var1792 null-Bool)))
(declare-const var1723 var2582) ; Statement: r2 := @parameter1: java.sql.Connection 
(assert (not (= var1723 null-var2582)))
(declare-const var469 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var469 null-String)))
(declare-const var3126 (Array Int var3356)) ; Statement: r9 := @parameter3: java.lang.Object[] 
(assert (not (= var3126 null-__Array__Int__var3356__)))
(define-const var114 (Array Int var3356) arr-var3356-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var448_notBlank/-161903167 (cast-from-String-to-String var469) "Sql String must be not blank!" var114)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r8, "Sql String must be not blank!", $r0) 

(declare-const var469!1 String)
(declare-const var2677 String)
(declare-const var114!1 (Array Int var3356))
(assert true)
(define-const var1624 String (trim/-847153721 var469!1)) ; Statement: r10 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>() 
(define-const var3753 Bool (var1656_isNotEmpty/1408540788 var3126)) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isNotEmpty(java.lang.Object[])>(r9) 
 ; Statement: if $z0 == 0 goto $r1 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE> 
(assert (= (ite var3753 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3536 var1702 var1702-INSTANCE) ; Statement: $r1 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE> 
(define-const var1673 String var1624) ; Statement: $r3 = r10 
(define-const var1507 Bool (var1656_isEmpty/916532361 var3126)) ; Statement: $z4 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r9) 
 ; Statement: if $z4 == 0 goto $r11 = r9 
(assert (= (ite var1507 1 0) 0)) ; Cond: $z4 == 0 
(define-const var3919 (Array Int var3356) var3126) ; Statement: $r11 = r9 
(assert true) ; Non Conditional
(assert true)
;(assert (log/-653883511 var3536 var1673 (cast-from-__Array__Int__var3356__-to-var3356 var3919))) ; Statement: virtualinvoke $r1.<cn.hutool.db.sql.SqlLog: void log(java.lang.String,java.lang.Object)>($r3, $r11) 

(declare-const var3536!1 var1702)
(declare-const var1673!1 String)
(declare-const var3919!1 (Array Int var3356))
 ; Statement: if z1 == 0 goto r12 = interfaceinvoke r2.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r10) 
(assert (= (ite var1792 1 0) 0)) ; Cond: z1 == 0 
(define-const var1066 var3933 (var2582_prepareStatement/1695973940 var1723 var1624)) ; Statement: r12 = interfaceinvoke r2.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r10) 
(assert true) ; Non Conditional
(define-const var468 var3933 (var1268_fillParams/-1576292286 var1066 var3126)) ; Statement: $r13 = staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement fillParams(java.sql.PreparedStatement,java.lang.Object[])>(r12, r9) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3356-init=([], java.lang.Object[]), var448_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), var1656_isNotEmpty/1408540788=([java.lang.Object[]], boolean), var1656_isEmpty/916532361=([java.lang.Object[]], boolean), log/-653883511=([cn.hutool.db.sql.SqlLog, java.lang.String, java.lang.Object], void), cast-from-__Array__Int__var3356__-to-var3356=([java.lang.Object[]], java.lang.Object), var2582_prepareStatement/1695973940=([java.sql.Connection, java.lang.String], java.sql.PreparedStatement), var1268_fillParams/-1576292286=([java.sql.PreparedStatement, java.lang.Object[]], java.sql.PreparedStatement)}
; {var1792=z1, var2582=java.sql.Connection, var1723=r2, var469=r8, var2165=null_type, var3356=java.lang.Object, var3126=r9, var114=$r0, var448=cn.hutool.core.lang.Assert, var2677="Sql String must be not blank!", var1624=r10, var1656=cn.hutool.core.util.ArrayUtil, var3753=$z0, var1702=cn.hutool.db.sql.SqlLog, var3536=$r1, var1673=$r3, var1507=$z4, var3919=$r11, var3933=java.sql.PreparedStatement, var1066=r12, var1268=cn.hutool.db.StatementUtil, var468=$r13}
; {z1=var1792, java.sql.Connection=var2582, r2=var1723, r8=var469, null_type=var2165, java.lang.Object=var3356, r9=var3126, $r0=var114, cn.hutool.core.lang.Assert=var448, "Sql String must be not blank!"=var2677, r10=var1624, cn.hutool.core.util.ArrayUtil=var1656, $z0=var3753, cn.hutool.db.sql.SqlLog=var1702, $r1=var3536, $r3=var1673, $z4=var1507, $r11=var3919, java.sql.PreparedStatement=var3933, r12=var1066, cn.hutool.db.StatementUtil=var1268, $r13=var468}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts z1 := @parameter0: boolean;	r2 := @parameter1: java.sql.Connection;	r8 := @parameter2: java.lang.String;	r9 := @parameter3: java.lang.Object[];	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r8, "Sql String must be not blank!", $r0);	r10 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>();	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isNotEmpty(java.lang.Object[])>(r9);	if $z0 == 0 goto $r1 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE>;	$r1 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE>;	$r3 = r10;	$z4 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r9);	if $z4 == 0 goto $r11 = r9;	$r11 = r9;	virtualinvoke $r1.<cn.hutool.db.sql.SqlLog: void log(java.lang.String,java.lang.Object)>($r3, $r11);	if z1 == 0 goto r12 = interfaceinvoke r2.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r10);	r12 = interfaceinvoke r2.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r10);	$r13 = staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement fillParams(java.sql.PreparedStatement,java.lang.Object[])>(r12, r9);	return $r13
;block_num 6
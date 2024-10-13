(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3174 0)
(declare-sort var429 0)
(declare-sort var3768 0)
(declare-sort var3473 0)
(declare-sort var2055 0)
(declare-sort var3431 0)
(declare-sort var3539 0)
(declare-sort var389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3473-init () (Array Int var3473))
(declare-fun var2055_notBlank/-161903167 (String String (Array Int var3473)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun log/-653883511 (var3431 String var3473) void)
(declare-fun cast-from-var3768-to-var3473 (var3768) var3473)
(declare-fun var3174_prepareStatement/1695973940 (var3174 String) var3539)
(declare-fun var389-init () var389)
(declare-fun <init>/-201242697 (var389) void)
(declare-fun var3768_iterator/-693406491 (var3768) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var3174 var3174)
(declare-const null-String String)
(declare-const null-var3768 var3768)
(declare-const var3431-INSTANCE var3431)
(declare-const var2000 var3174) ; Statement: r3 := @parameter0: java.sql.Connection 
(assert (not (= var2000 null-var3174)))
(declare-const var3972 String) ; Statement: r10 := @parameter1: java.lang.String 
(assert (not (= var3972 null-String)))
(declare-const var1433 var3768) ; Statement: r1 := @parameter2: java.lang.Iterable 
(assert (not (= var1433 null-var3768)))
(define-const var1045 (Array Int var3473) arr-var3473-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var2055_notBlank/-161903167 (cast-from-String-to-String var3972) "Sql String must be not blank!" var1045)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r10, "Sql String must be not blank!", $r0) 

(declare-const var3972!1 String)
(declare-const var1576 String)
(declare-const var1045!1 (Array Int var3473))
(assert true)
(define-const var585 String (trim/-847153721 var3972!1)) ; Statement: r11 = virtualinvoke r10.<java.lang.String: java.lang.String trim()>() 
(define-const var1284 var3431 var3431-INSTANCE) ; Statement: $r2 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE> 
(assert true)
;(assert (log/-653883511 var1284 var585 (cast-from-var3768-to-var3473 var1433))) ; Statement: virtualinvoke $r2.<cn.hutool.db.sql.SqlLog: void log(java.lang.String,java.lang.Object)>(r11, r1) 

(declare-const var1284!1 var3431)
(declare-const var585!1 String)
(declare-const var1433!1 var3768)
(define-const var906 var3539 (var3174_prepareStatement/1695973940 var2000 var585!1)) ; Statement: r4 = interfaceinvoke r3.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r11) 
(define-const var420 var389 var389-init) ; Statement: $r5 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var420)) ; Statement: specialinvoke $r5.<java.util.HashMap: void <init>()>() 

(declare-const var420!1 var389)
(define-const var3304 Iterator (var3768_iterator/-693406491 var1433!1)) ; Statement: r6 = interfaceinvoke r1.<java.lang.Iterable: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2575 Bool (Iterator_hasNext/-1669924200 var3304)) ; Statement: $z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return r4 
(assert (= (ite var2575 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3473-init=([], java.lang.Object[]), var2055_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), log/-653883511=([cn.hutool.db.sql.SqlLog, java.lang.String, java.lang.Object], void), cast-from-var3768-to-var3473=([java.lang.Iterable], java.lang.Object), var3174_prepareStatement/1695973940=([java.sql.Connection, java.lang.String], java.sql.PreparedStatement), var389-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var3768_iterator/-693406491=([java.lang.Iterable], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var3174=java.sql.Connection, var2000=r3, var3972=r10, var429=null_type, var3768=java.lang.Iterable, var1433=r1, var3473=java.lang.Object, var1045=$r0, var2055=cn.hutool.core.lang.Assert, var1576="Sql String must be not blank!", var585=r11, var3431=cn.hutool.db.sql.SqlLog, var1284=$r2, var3539=java.sql.PreparedStatement, var906=r4, var389=java.util.HashMap, var420=$r5, var3304=r6, var2575=$z0}
; {java.sql.Connection=var3174, r3=var2000, r10=var3972, null_type=var429, java.lang.Iterable=var3768, r1=var1433, java.lang.Object=var3473, $r0=var1045, cn.hutool.core.lang.Assert=var2055, "Sql String must be not blank!"=var1576, r11=var585, cn.hutool.db.sql.SqlLog=var3431, $r2=var1284, java.sql.PreparedStatement=var3539, r4=var906, java.util.HashMap=var389, $r5=var420, r6=var3304, $z0=var2575}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r3 := @parameter0: java.sql.Connection;	r10 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Iterable;	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r10, "Sql String must be not blank!", $r0);	r11 = virtualinvoke r10.<java.lang.String: java.lang.String trim()>();	$r2 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE>;	virtualinvoke $r2.<cn.hutool.db.sql.SqlLog: void log(java.lang.String,java.lang.Object)>(r11, r1);	r4 = interfaceinvoke r3.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r11);	$r5 = new java.util.HashMap;	specialinvoke $r5.<java.util.HashMap: void <init>()>();	r6 = interfaceinvoke r1.<java.lang.Iterable: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return r4;	return r4
;block_num 3
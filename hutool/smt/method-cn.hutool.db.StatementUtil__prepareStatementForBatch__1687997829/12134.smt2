(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2507 0)
(declare-sort var3194 0)
(declare-sort var3500 0)
(declare-sort var2666 0)
(declare-sort var663 0)
(declare-sort var3850 0)
(declare-sort var546 0)
(declare-sort var17 0)
(declare-sort var1192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var663-init () (Array Int var663))
(declare-fun var3850_notBlank/-161903167 (String String (Array Int var663)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun logForBatch/190747279 (var546 String) void)
(declare-fun var2507_prepareStatement/1695973940 (var2507 String) var17)
(declare-fun var1192-init () var1192)
(declare-fun <init>/-201242697 (var1192) void)
(declare-fun getLength-Arr-var2666-1 ((Array Int var2666)) Int)
(declare-const null-var2507 var2507)
(declare-const null-String String)
(declare-const null-var3500 var3500)
(declare-const null-__Array__Int__var2666__ (Array Int var2666))
(declare-const var546-INSTANCE var546)
(declare-const var1103 var2507) ; Statement: r2 := @parameter0: java.sql.Connection 
(assert (not (= var1103 null-var2507)))
(declare-const var198 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var198 null-String)))
(declare-const var3508 var3500) ; Statement: r7 := @parameter2: java.lang.Iterable 
(assert (not (= var3508 null-var3500)))
(declare-const var3121 (Array Int var2666)) ; Statement: r5 := @parameter3: cn.hutool.db.Entity[] 
(assert (not (= var3121 null-__Array__Int__var2666__)))
(define-const var940 (Array Int var663) arr-var663-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var3850_notBlank/-161903167 (cast-from-String-to-String var198) "Sql String must be not blank!" var940)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r9, "Sql String must be not blank!", $r0) 

(declare-const var198!1 String)
(declare-const var1139 String)
(declare-const var940!1 (Array Int var663))
(assert true)
(define-const var1675 String (trim/-847153721 var198!1)) ; Statement: r10 = virtualinvoke r9.<java.lang.String: java.lang.String trim()>() 
(define-const var2950 var546 var546-INSTANCE) ; Statement: $r1 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE> 
(assert true)
;(assert (logForBatch/190747279 var2950 var1675)) ; Statement: virtualinvoke $r1.<cn.hutool.db.sql.SqlLog: void logForBatch(java.lang.String)>(r10) 

(declare-const var2950!1 var546)
(declare-const var1675!1 String)
(define-const var3180 var17 (var2507_prepareStatement/1695973940 var1103 var1675!1)) ; Statement: r3 = interfaceinvoke r2.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r10) 
(define-const var879 var1192 var1192-init) ; Statement: $r4 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var879)) ; Statement: specialinvoke $r4.<java.util.HashMap: void <init>()>() 

(declare-const var879!1 var1192)
(define-const var3625 Int (getLength-Arr-var2666-1 var3121)) ; Statement: i0 = lengthof r5 
(define-const var1214 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return r3 
(assert (>= var1214 var3625)) ; Cond: i1 >= i0 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var663-init=([], java.lang.Object[]), var3850_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), logForBatch/190747279=([cn.hutool.db.sql.SqlLog, java.lang.String], void), var2507_prepareStatement/1695973940=([java.sql.Connection, java.lang.String], java.sql.PreparedStatement), var1192-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), getLength-Arr-var2666-1=([cn.hutool.db.Entity[]], int)}
; {var2507=java.sql.Connection, var1103=r2, var198=r9, var3194=null_type, var3500=java.lang.Iterable, var3508=r7, var2666=cn.hutool.db.Entity, var3121=r5, var663=java.lang.Object, var940=$r0, var3850=cn.hutool.core.lang.Assert, var1139="Sql String must be not blank!", var1675=r10, var546=cn.hutool.db.sql.SqlLog, var2950=$r1, var17=java.sql.PreparedStatement, var3180=r3, var1192=java.util.HashMap, var879=$r4, var3625=i0, var1214=i1}
; {java.sql.Connection=var2507, r2=var1103, r9=var198, null_type=var3194, java.lang.Iterable=var3500, r7=var3508, cn.hutool.db.Entity=var2666, r5=var3121, java.lang.Object=var663, $r0=var940, cn.hutool.core.lang.Assert=var3850, "Sql String must be not blank!"=var1139, r10=var1675, cn.hutool.db.sql.SqlLog=var546, $r1=var2950, java.sql.PreparedStatement=var17, r3=var3180, java.util.HashMap=var1192, $r4=var879, i0=var3625, i1=var1214}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r2 := @parameter0: java.sql.Connection;	r9 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.Iterable;	r5 := @parameter3: cn.hutool.db.Entity[];	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r9, "Sql String must be not blank!", $r0);	r10 = virtualinvoke r9.<java.lang.String: java.lang.String trim()>();	$r1 = <cn.hutool.db.sql.SqlLog: cn.hutool.db.sql.SqlLog INSTANCE>;	virtualinvoke $r1.<cn.hutool.db.sql.SqlLog: void logForBatch(java.lang.String)>(r10);	r3 = interfaceinvoke r2.<java.sql.Connection: java.sql.PreparedStatement prepareStatement(java.lang.String)>(r10);	$r4 = new java.util.HashMap;	specialinvoke $r4.<java.util.HashMap: void <init>()>();	i0 = lengthof r5;	i1 = 0;	if i1 >= i0 goto return r3;	return r3
;block_num 3
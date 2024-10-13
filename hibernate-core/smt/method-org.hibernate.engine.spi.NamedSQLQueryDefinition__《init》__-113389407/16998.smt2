(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var363 0)
(declare-sort var1398 0)
(declare-sort var3516 0)
(declare-sort var3574 0)
(declare-sort var3330 0)
(declare-sort var667 0)
(declare-sort var559 0)
(declare-sort var418 0)
(declare-sort var3979 0)
(declare-sort var1790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun <init>/-282265614 (var3979 String String Bool String Int var1790 Int var3516 var3574 Bool String var3330 Int Int var418) void)
(declare-fun cast-from-var363-to-var3979 (var363) var3979)
(declare-fun resultSetRef/-1078258306 (var363) String)
(declare-fun querySpaces/-1078258306 (var363) var667)
(declare-fun callable/-1078258306 (var363) Bool)
(declare-fun queryReturns/-1078258306 (var363) (Array Int var559))
(declare-const null-var363 var363)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-var3516 var3516)
(declare-const null-var3574 var3574)
(declare-const null-var3330 var3330)
(declare-const null-var667 var667)
(declare-const null-__Array__Int__var559__ (Array Int var559))
(declare-const null-var418 var418)
(declare-const null-NullType var1398)
(declare-const null-var1790 var1790)
(declare-const var502 var363) ; Statement: r0 := @this: org.hibernate.engine.spi.NamedSQLQueryDefinition 
(assert (not (= var502 null-var363)))
(declare-const var2114 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2114 null-String)))
(declare-const var2472 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2472 null-String)))
(declare-const var2822 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2822 null-Bool)))
(declare-const var2478 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var2478 null-String)))
(declare-const var179 Int) ; Statement: r4 := @parameter4: java.lang.Integer 
(assert (not (= var179 null-Int)))
(declare-const var420 Int) ; Statement: r5 := @parameter5: java.lang.Integer 
(assert (not (= var420 null-Int)))
(declare-const var3902 var3516) ; Statement: r6 := @parameter6: org.hibernate.FlushMode 
(assert (not (= var3902 null-var3516)))
(declare-const var3600 var3574) ; Statement: r7 := @parameter7: org.hibernate.CacheMode 
(assert (not (= var3600 null-var3574)))
(declare-const var1923 Bool) ; Statement: z1 := @parameter8: boolean 
(assert (not (= var1923 null-Bool)))
(declare-const var1799 String) ; Statement: r8 := @parameter9: java.lang.String 
(assert (not (= var1799 null-String)))
(declare-const var2659 var3330) ; Statement: r9 := @parameter10: java.util.Map 
(assert (not (= var2659 null-var3330)))
(declare-const var540 Int) ; Statement: r10 := @parameter11: java.lang.Integer 
(assert (not (= var540 null-Int)))
(declare-const var994 Int) ; Statement: r11 := @parameter12: java.lang.Integer 
(assert (not (= var994 null-Int)))
(declare-const var1339 String) ; Statement: r14 := @parameter13: java.lang.String 
(assert (not (= var1339 null-String)))
(declare-const var1487 var667) ; Statement: r15 := @parameter14: java.util.List 
(assert (not (= var1487 null-var667)))
(declare-const var1285 Bool) ; Statement: z2 := @parameter15: boolean 
(assert (not (= var1285 null-Bool)))
(declare-const var3269 (Array Int var559)) ; Statement: r16 := @parameter16: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] 
(assert (not (= var3269 null-__Array__Int__var559__)))
(declare-const var1574 var418) ; Statement: r12 := @parameter17: java.lang.Boolean 
(assert (not (= var1574 null-var418)))
(assert true)
(define-const var783 String (trim/-847153721 var2472)) ; Statement: $r13 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
;(assert (<init>/-282265614 (cast-from-var363-to-var3979 var502) var2114 var783 var2822 var2478 var179 null-var1790 var420 var3902 var3600 var1923 var1799 var2659 var540 var994 var1574)) ; Statement: specialinvoke r0.<org.hibernate.engine.spi.NamedQueryDefinition: void <init>(java.lang.String,java.lang.String,boolean,java.lang.String,java.lang.Integer,org.hibernate.LockOptions,java.lang.Integer,org.hibernate.FlushMode,org.hibernate.CacheMode,boolean,java.lang.String,java.util.Map,java.lang.Integer,java.lang.Integer,java.lang.Boolean)>(r1, $r13, z0, r3, r4, null, r5, r6, r7, z1, r8, r9, r10, r11, r12) 

(declare-const var502!1 var363)
(declare-const var2114!1 String)
(declare-const var783!1 String)
(declare-const var2822!1 Bool)
(declare-const var2478!1 String)
(declare-const var179!1 Int)
(declare-const var2060 var1398)
(declare-const var420!1 Int)
(declare-const var3902!1 var3516)
(declare-const var3600!1 var3574)
(declare-const var1923!1 Bool)
(declare-const var1799!1 String)
(declare-const var2659!1 var3330)
(declare-const var540!1 Int)
(declare-const var994!1 Int)
(declare-const var1574!1 var418)
(declare-const var502!2 var363)
(assert (not (= var502!2 null-var363)))
(assert (= (resultSetRef/-1078258306 var502!2) var1339)) ; Statement: r0.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String resultSetRef> = r14 
(declare-const var502!3 var363)
(assert (not (= var502!3 null-var363)))
(assert (= (querySpaces/-1078258306 var502!3) var1487)) ; Statement: r0.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.util.List querySpaces> = r15 
(declare-const var502!4 var363)
(assert (not (= var502!4 null-var363)))
(assert (= (callable/-1078258306 var502!4) var1285)) ; Statement: r0.<org.hibernate.engine.spi.NamedSQLQueryDefinition: boolean callable> = z2 
(declare-const var502!5 var363)
(assert (not (= var502!5 null-var363)))
(assert (= (queryReturns/-1078258306 var502!5) var3269)) ; Statement: r0.<org.hibernate.engine.spi.NamedSQLQueryDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] queryReturns> = r16 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), <init>/-282265614=([org.hibernate.engine.spi.NamedQueryDefinition, java.lang.String, java.lang.String, boolean, java.lang.String, java.lang.Integer, org.hibernate.LockOptions, java.lang.Integer, org.hibernate.FlushMode, org.hibernate.CacheMode, boolean, java.lang.String, java.util.Map, java.lang.Integer, java.lang.Integer, java.lang.Boolean], void), cast-from-var363-to-var3979=([org.hibernate.engine.spi.NamedSQLQueryDefinition], org.hibernate.engine.spi.NamedQueryDefinition), resultSetRef/-1078258306=([org.hibernate.engine.spi.NamedSQLQueryDefinition], java.lang.String), querySpaces/-1078258306=([org.hibernate.engine.spi.NamedSQLQueryDefinition], java.util.List), callable/-1078258306=([org.hibernate.engine.spi.NamedSQLQueryDefinition], boolean), queryReturns/-1078258306=([org.hibernate.engine.spi.NamedSQLQueryDefinition], org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[])}
; {var363=org.hibernate.engine.spi.NamedSQLQueryDefinition, var502=r0, var2114=r1, var1398=null_type, var2472=r2, var2822=z0, var2478=r3, var179=r4, var420=r5, var3516=org.hibernate.FlushMode, var3902=r6, var3574=org.hibernate.CacheMode, var3600=r7, var1923=z1, var1799=r8, var3330=java.util.Map, var2659=r9, var540=r10, var994=r11, var1339=r14, var667=java.util.List, var1487=r15, var1285=z2, var559=org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn, var3269=r16, var418=java.lang.Boolean, var1574=r12, var783=$r13, var3979=org.hibernate.engine.spi.NamedQueryDefinition, var1790=org.hibernate.LockOptions, var2060=null}
; {org.hibernate.engine.spi.NamedSQLQueryDefinition=var363, r0=var502, r1=var2114, null_type=var1398, r2=var2472, z0=var2822, r3=var2478, r4=var179, r5=var420, org.hibernate.FlushMode=var3516, r6=var3902, org.hibernate.CacheMode=var3574, r7=var3600, z1=var1923, r8=var1799, java.util.Map=var3330, r9=var2659, r10=var540, r11=var994, r14=var1339, java.util.List=var667, r15=var1487, z2=var1285, org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn=var559, r16=var3269, java.lang.Boolean=var418, r12=var1574, $r13=var783, org.hibernate.engine.spi.NamedQueryDefinition=var3979, org.hibernate.LockOptions=var1790, null=var2060}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.NamedSQLQueryDefinition;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	r3 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.Integer;	r5 := @parameter5: java.lang.Integer;	r6 := @parameter6: org.hibernate.FlushMode;	r7 := @parameter7: org.hibernate.CacheMode;	z1 := @parameter8: boolean;	r8 := @parameter9: java.lang.String;	r9 := @parameter10: java.util.Map;	r10 := @parameter11: java.lang.Integer;	r11 := @parameter12: java.lang.Integer;	r14 := @parameter13: java.lang.String;	r15 := @parameter14: java.util.List;	z2 := @parameter15: boolean;	r16 := @parameter16: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[];	r12 := @parameter17: java.lang.Boolean;	$r13 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	specialinvoke r0.<org.hibernate.engine.spi.NamedQueryDefinition: void <init>(java.lang.String,java.lang.String,boolean,java.lang.String,java.lang.Integer,org.hibernate.LockOptions,java.lang.Integer,org.hibernate.FlushMode,org.hibernate.CacheMode,boolean,java.lang.String,java.util.Map,java.lang.Integer,java.lang.Integer,java.lang.Boolean)>(r1, $r13, z0, r3, r4, null, r5, r6, r7, z1, r8, r9, r10, r11, r12);	r0.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String resultSetRef> = r14;	r0.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.util.List querySpaces> = r15;	r0.<org.hibernate.engine.spi.NamedSQLQueryDefinition: boolean callable> = z2;	r0.<org.hibernate.engine.spi.NamedSQLQueryDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] queryReturns> = r16;	return
;block_num 1
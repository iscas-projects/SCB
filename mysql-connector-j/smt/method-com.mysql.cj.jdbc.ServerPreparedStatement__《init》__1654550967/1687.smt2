(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3758 0)
(declare-sort var194 0)
(declare-sort var1369 0)
(declare-sort var3866 0)
(declare-sort var1272 0)
(declare-sort var1101 0)
(declare-sort var908 0)
(declare-sort var1513 0)
(declare-sort var742 0)
(declare-sort var3491 0)
(declare-sort var1173 0)
(declare-sort var1123 0)
(declare-sort var3127 0)
(declare-sort var3393 0)
(declare-sort var2579 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/117294002 (var3866 var194 String) void)
(declare-fun cast-from-var3758-to-var3866 (var3758) var3866)
(declare-fun hasOnDuplicateKeyUpdate/1460289226 (var3758) Bool)
(declare-fun invalid/1460289226 (var3758) Bool)
(declare-fun isCacheable/1460289226 (var3758) Bool)
(declare-fun isCached/1460289226 (var3758) Bool)
(declare-fun checkNullOrEmptyQuery/-99087635 (var1272 String) void)
(declare-fun cast-from-var3758-to-var1272 (var3758) var1272)
(declare-fun session/922254346 (var1272) var1101)
(declare-fun getQueryComment/-1854184200 (var1101) String)
(declare-fun query/922254346 (var1272) var908)
(declare-fun cast-from-var908-to-var1513 (var908) var1513)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1513_setOriginalSql/-456057990 (var1513 String) void)
(declare-fun var742-init () var742)
(declare-fun var1513_getOriginalSql/1241194074 (var1513) String)
(declare-fun charEncoding/922254346 (var1272) String)
(declare-fun <init>/988474507 (var742 String var3491 String) void)
(declare-fun cast-from-var1101-to-var3491 (var1101) var3491)
(declare-fun var1513_setQueryInfo/-2133092252 (var1513 var742) void)
(declare-fun var1513_getQueryInfo/820695876 (var1513) var742)
(declare-fun containsOnDuplicateKeyUpdate/486624416 (var742) Bool)
(declare-fun realClose/-1111721645 (var3758 Bool Bool) void)
(declare-fun exceptionInterceptor/922254346 (var1272) var1123)
(declare-fun var3393_translateException/-1105999664 (var2579 var1123) var3127)
(declare-fun cast-from-var1173-to-var2579 (var1173) var2579)
(declare-const null-var3758 var3758)
(declare-const null-var194 var194)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1173 var1173)
(declare-const var1999 var3758) ; Statement: r0 := @this: com.mysql.cj.jdbc.ServerPreparedStatement 
(assert (not (= var1999 null-var3758)))
(declare-const var2045 var194) ; Statement: r1 := @parameter0: com.mysql.cj.jdbc.JdbcConnection 
(assert (not (= var2045 null-var194)))
(declare-const var212 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var212 null-String)))
(declare-const var2729 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2729 null-String)))
(declare-const var999 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var999 null-Int)))
(declare-const var2634 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var2634 null-Int)))
(assert true)
;(assert (<init>/117294002 (cast-from-var3758-to-var3866 var1999) var2045 var2729)) ; Statement: specialinvoke r0.<com.mysql.cj.jdbc.ClientPreparedStatement: void <init>(com.mysql.cj.jdbc.JdbcConnection,java.lang.String)>(r1, r2) 

(declare-const var1999!1 var3758)
(declare-const var2045!1 var194)
(declare-const var2729!1 String)
(declare-const var1999!2 var3758)
(assert (not (= var1999!2 null-var3758)))
(assert (= (hasOnDuplicateKeyUpdate/1460289226 var1999!2) (ite (= 1 0) true false))) ; Statement: r0.<com.mysql.cj.jdbc.ServerPreparedStatement: boolean hasOnDuplicateKeyUpdate> = 0 
(declare-const var1999!3 var3758)
(assert (not (= var1999!3 null-var3758)))
(assert (= (invalid/1460289226 var1999!3) (ite (= 1 0) true false))) ; Statement: r0.<com.mysql.cj.jdbc.ServerPreparedStatement: boolean invalid> = 0 
(declare-const var1999!4 var3758)
(assert (not (= var1999!4 null-var3758)))
(assert (= (isCacheable/1460289226 var1999!4) (ite (= 1 0) true false))) ; Statement: r0.<com.mysql.cj.jdbc.ServerPreparedStatement: boolean isCacheable> = 0 
(declare-const var1999!5 var3758)
(assert (not (= var1999!5 null-var3758)))
(assert (= (isCached/1460289226 var1999!5) (ite (= 1 0) true false))) ; Statement: r0.<com.mysql.cj.jdbc.ServerPreparedStatement: boolean isCached> = 0 
(assert true)
;(assert (checkNullOrEmptyQuery/-99087635 (cast-from-var3758-to-var1272 var1999!5) var212)) ; Statement: virtualinvoke r0.<com.mysql.cj.jdbc.ServerPreparedStatement: void checkNullOrEmptyQuery(java.lang.String)>(r3) 

(declare-const var1999!6 var3758)
(declare-const var212!1 String)
(define-const var197 var1101 (session/922254346 (cast-from-var3758-to-var1272 var1999!6))) ; Statement: $r4 = r0.<com.mysql.cj.jdbc.ServerPreparedStatement: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var2405 String (getQueryComment/-1854184200 var197)) ; Statement: r5 = virtualinvoke $r4.<com.mysql.cj.NativeSession: java.lang.String getQueryComment()>() 
(define-const var3640 var908 (query/922254346 (cast-from-var3758-to-var1272 var1999!6))) ; Statement: $r6 = r0.<com.mysql.cj.jdbc.ServerPreparedStatement: com.mysql.cj.Query query> 
(define-const var3917 var1513 (cast-from-var908-to-var1513 var3640)) ; Statement: r7 = (com.mysql.cj.PreparedQuery) $r6 
 ; Statement: if r5 != null goto $r8 = new java.lang.StringBuilder 
(assert (not (= var2405 null-String))) ; Cond: r5 != null 
(define-const var2672 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2672)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2672!1 String)
(assert (= var2672!1 ""))
(assert true)
(define-const var2784 String (append/672562846 var2672!1 "/* ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ") 
(declare-const var2672!2 String)
(assert (= var2672!2 (str.++ var2672!1 "/* ")))
(assert true)
(define-const var1083 String (append/672562846 var2784 var2405)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2784!1 String)
(assert (= var2784!1 (str.++ var2784 var2405)))
(assert true)
(define-const var25 String (append/672562846 var1083 " */ ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */ ") 
(declare-const var1083!1 String)
(assert (= var1083!1 (str.++ var1083 " */ ")))
(assert true)
(define-const var3144 String (append/672562846 var25 var212!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var25!1 String)
(assert (= var25!1 (str.++ var25 var212!1)))
(assert true)
(define-const var321 String (toString/-2075883882 var3144)) ; Statement: $r21 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
;(assert (var1513_setOriginalSql/-456057990 var3917 var321)) ; Statement: interfaceinvoke r7.<com.mysql.cj.PreparedQuery: void setOriginalSql(java.lang.String)>($r21) 

(declare-const var3917!1 var1513)
(declare-const var321!1 String)
(define-const var3131 var742 var742-init) ; Statement: $r13 = new com.mysql.cj.QueryInfo 
(define-const var501 String (var1513_getOriginalSql/1241194074 var3917!1)) ; Statement: $r16 = interfaceinvoke r7.<com.mysql.cj.PreparedQuery: java.lang.String getOriginalSql()>() 
(define-const var2980 var1101 (session/922254346 (cast-from-var3758-to-var1272 var1999!6))) ; Statement: $r15 = r0.<com.mysql.cj.jdbc.ServerPreparedStatement: com.mysql.cj.NativeSession session> 
(define-const var811 String (charEncoding/922254346 (cast-from-var3758-to-var1272 var1999!6))) ; Statement: $r14 = r0.<com.mysql.cj.jdbc.ServerPreparedStatement: java.lang.String charEncoding> 
(assert true)
;(assert (<init>/988474507 var3131 var501 (cast-from-var1101-to-var3491 var2980) var811)) ; Statement: specialinvoke $r13.<com.mysql.cj.QueryInfo: void <init>(java.lang.String,com.mysql.cj.Session,java.lang.String)>($r16, $r15, $r14) 

(declare-const var3131!1 var742)
(declare-const var501!1 String)
(declare-const var2980!1 var1101)
(declare-const var811!1 String)
;(assert (var1513_setQueryInfo/-2133092252 var3917!1 var3131!1)) ; Statement: interfaceinvoke r7.<com.mysql.cj.PreparedQuery: void setQueryInfo(com.mysql.cj.QueryInfo)>($r13) 

(declare-const var3917!2 var1513)
(declare-const var3131!2 var742)
(define-const var1838 var742 (var1513_getQueryInfo/820695876 var3917!2)) ; Statement: $r17 = interfaceinvoke r7.<com.mysql.cj.PreparedQuery: com.mysql.cj.QueryInfo getQueryInfo()>() 
(assert true)
(define-const var2571 Bool (containsOnDuplicateKeyUpdate/486624416 var1838)) ; Statement: $z0 = virtualinvoke $r17.<com.mysql.cj.QueryInfo: boolean containsOnDuplicateKeyUpdate()>() 
(declare-const var1999!7 var3758)
(assert (not (= var1999!7 null-var3758)))
(assert (= (hasOnDuplicateKeyUpdate/1460289226 var1999!7) var2571)) ; Statement: r0.<com.mysql.cj.jdbc.ServerPreparedStatement: boolean hasOnDuplicateKeyUpdate> = $z0 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2766 var1173) ; Statement: $r18 := @caughtexception 
(assert (not (= var2766 null-var1173)))
(assert true)
;(assert (realClose/-1111721645 var1999!7 (ite (= 1 0) true false) (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<com.mysql.cj.jdbc.ServerPreparedStatement: void realClose(boolean,boolean)>(0, 1) 

(declare-const var1999!8 var3758)
(declare-const var3161 Int)
(declare-const var703 Int)
(define-const var3570 var1123 (exceptionInterceptor/922254346 (cast-from-var3758-to-var1272 var1999!8))) ; Statement: $r19 = r0.<com.mysql.cj.jdbc.ServerPreparedStatement: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var2704 var3127 (var3393_translateException/-1105999664 (cast-from-var1173-to-var2579 var2766) var3570)) ; Statement: $r20 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping: java.sql.SQLException translateException(java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>($r18, $r19) 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/117294002=([com.mysql.cj.jdbc.ClientPreparedStatement, com.mysql.cj.jdbc.JdbcConnection, java.lang.String], void), cast-from-var3758-to-var3866=([com.mysql.cj.jdbc.ServerPreparedStatement], com.mysql.cj.jdbc.ClientPreparedStatement), hasOnDuplicateKeyUpdate/1460289226=([com.mysql.cj.jdbc.ServerPreparedStatement], boolean), invalid/1460289226=([com.mysql.cj.jdbc.ServerPreparedStatement], boolean), isCacheable/1460289226=([com.mysql.cj.jdbc.ServerPreparedStatement], boolean), isCached/1460289226=([com.mysql.cj.jdbc.ServerPreparedStatement], boolean), checkNullOrEmptyQuery/-99087635=([com.mysql.cj.jdbc.StatementImpl, java.lang.String], void), cast-from-var3758-to-var1272=([com.mysql.cj.jdbc.ServerPreparedStatement], com.mysql.cj.jdbc.StatementImpl), session/922254346=([com.mysql.cj.jdbc.StatementImpl], com.mysql.cj.NativeSession), getQueryComment/-1854184200=([com.mysql.cj.NativeSession], java.lang.String), query/922254346=([com.mysql.cj.jdbc.StatementImpl], com.mysql.cj.Query), cast-from-var908-to-var1513=([com.mysql.cj.Query], com.mysql.cj.PreparedQuery), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1513_setOriginalSql/-456057990=([com.mysql.cj.PreparedQuery, java.lang.String], void), var742-init=([], com.mysql.cj.QueryInfo), var1513_getOriginalSql/1241194074=([com.mysql.cj.PreparedQuery], java.lang.String), charEncoding/922254346=([com.mysql.cj.jdbc.StatementImpl], java.lang.String), <init>/988474507=([com.mysql.cj.QueryInfo, java.lang.String, com.mysql.cj.Session, java.lang.String], void), cast-from-var1101-to-var3491=([com.mysql.cj.NativeSession], com.mysql.cj.Session), var1513_setQueryInfo/-2133092252=([com.mysql.cj.PreparedQuery, com.mysql.cj.QueryInfo], void), var1513_getQueryInfo/820695876=([com.mysql.cj.PreparedQuery], com.mysql.cj.QueryInfo), containsOnDuplicateKeyUpdate/486624416=([com.mysql.cj.QueryInfo], boolean), realClose/-1111721645=([com.mysql.cj.jdbc.ServerPreparedStatement, boolean, boolean], void), exceptionInterceptor/922254346=([com.mysql.cj.jdbc.StatementImpl], com.mysql.cj.exceptions.ExceptionInterceptor), var3393_translateException/-1105999664=([java.lang.Throwable, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException), cast-from-var1173-to-var2579=([java.lang.Exception], java.lang.Throwable)}
; {var3758=com.mysql.cj.jdbc.ServerPreparedStatement, var1999=r0, var194=com.mysql.cj.jdbc.JdbcConnection, var2045=r1, var212=r3, var1369=null_type, var2729=r2, var999=i0, var2634=i1, var3866=com.mysql.cj.jdbc.ClientPreparedStatement, var1272=com.mysql.cj.jdbc.StatementImpl, var1101=com.mysql.cj.NativeSession, var197=$r4, var2405=r5, var908=com.mysql.cj.Query, var3640=$r6, var1513=com.mysql.cj.PreparedQuery, var3917=r7, var2672=$r8, var2784=$r9, var1083=$r10, var25=$r11, var3144=$r12, var321=$r21, var742=com.mysql.cj.QueryInfo, var3131=$r13, var501=$r16, var2980=$r15, var811=$r14, var3491=com.mysql.cj.Session, var1838=$r17, var2571=$z0, var1173=java.lang.Exception, var2766=$r18, var3161=0, var703=1, var1123=com.mysql.cj.exceptions.ExceptionInterceptor, var3570=$r19, var3127=java.sql.SQLException, var3393=com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping, var2579=java.lang.Throwable, var2704=$r20}
; {com.mysql.cj.jdbc.ServerPreparedStatement=var3758, r0=var1999, com.mysql.cj.jdbc.JdbcConnection=var194, r1=var2045, r3=var212, null_type=var1369, r2=var2729, i0=var999, i1=var2634, com.mysql.cj.jdbc.ClientPreparedStatement=var3866, com.mysql.cj.jdbc.StatementImpl=var1272, com.mysql.cj.NativeSession=var1101, $r4=var197, r5=var2405, com.mysql.cj.Query=var908, $r6=var3640, com.mysql.cj.PreparedQuery=var1513, r7=var3917, $r8=var2672, $r9=var2784, $r10=var1083, $r11=var25, $r12=var3144, $r21=var321, com.mysql.cj.QueryInfo=var742, $r13=var3131, $r16=var501, $r15=var2980, $r14=var811, com.mysql.cj.Session=var3491, $r17=var1838, $z0=var2571, java.lang.Exception=var1173, $r18=var2766, 0=var3161, 1=var703, com.mysql.cj.exceptions.ExceptionInterceptor=var1123, $r19=var3570, java.sql.SQLException=var3127, com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping=var3393, java.lang.Throwable=var2579, $r20=var2704}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.ServerPreparedStatement;	r1 := @parameter0: com.mysql.cj.jdbc.JdbcConnection;	r3 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	i0 := @parameter3: int;	i1 := @parameter4: int;	specialinvoke r0.<com.mysql.cj.jdbc.ClientPreparedStatement: void <init>(com.mysql.cj.jdbc.JdbcConnection,java.lang.String)>(r1, r2);	r0.<com.mysql.cj.jdbc.ServerPreparedStatement: boolean hasOnDuplicateKeyUpdate> = 0;	r0.<com.mysql.cj.jdbc.ServerPreparedStatement: boolean invalid> = 0;	r0.<com.mysql.cj.jdbc.ServerPreparedStatement: boolean isCacheable> = 0;	r0.<com.mysql.cj.jdbc.ServerPreparedStatement: boolean isCached> = 0;	virtualinvoke r0.<com.mysql.cj.jdbc.ServerPreparedStatement: void checkNullOrEmptyQuery(java.lang.String)>(r3);	$r4 = r0.<com.mysql.cj.jdbc.ServerPreparedStatement: com.mysql.cj.NativeSession session>;	r5 = virtualinvoke $r4.<com.mysql.cj.NativeSession: java.lang.String getQueryComment()>();	$r6 = r0.<com.mysql.cj.jdbc.ServerPreparedStatement: com.mysql.cj.Query query>;	r7 = (com.mysql.cj.PreparedQuery) $r6;	if r5 != null goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */ ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r21 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r7.<com.mysql.cj.PreparedQuery: void setOriginalSql(java.lang.String)>($r21);	$r13 = new com.mysql.cj.QueryInfo;	$r16 = interfaceinvoke r7.<com.mysql.cj.PreparedQuery: java.lang.String getOriginalSql()>();	$r15 = r0.<com.mysql.cj.jdbc.ServerPreparedStatement: com.mysql.cj.NativeSession session>;	$r14 = r0.<com.mysql.cj.jdbc.ServerPreparedStatement: java.lang.String charEncoding>;	specialinvoke $r13.<com.mysql.cj.QueryInfo: void <init>(java.lang.String,com.mysql.cj.Session,java.lang.String)>($r16, $r15, $r14);	interfaceinvoke r7.<com.mysql.cj.PreparedQuery: void setQueryInfo(com.mysql.cj.QueryInfo)>($r13);	$r17 = interfaceinvoke r7.<com.mysql.cj.PreparedQuery: com.mysql.cj.QueryInfo getQueryInfo()>();	$z0 = virtualinvoke $r17.<com.mysql.cj.QueryInfo: boolean containsOnDuplicateKeyUpdate()>();	r0.<com.mysql.cj.jdbc.ServerPreparedStatement: boolean hasOnDuplicateKeyUpdate> = $z0;	$r18 := @caughtexception;	virtualinvoke r0.<com.mysql.cj.jdbc.ServerPreparedStatement: void realClose(boolean,boolean)>(0, 1);	$r19 = r0.<com.mysql.cj.jdbc.ServerPreparedStatement: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r20 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping: java.sql.SQLException translateException(java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>($r18, $r19);	throw $r20
;block_num 4
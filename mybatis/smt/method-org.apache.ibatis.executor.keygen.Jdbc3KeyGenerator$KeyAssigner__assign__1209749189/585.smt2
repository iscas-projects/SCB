(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2321 0)
(declare-sort var2617 0)
(declare-sort var1345 0)
(declare-sort var49 0)
(declare-sort var3612 0)
(declare-sort var641 0)
(declare-sort var3231 0)
(declare-sort var2556 0)
(declare-sort var1581 0)
(declare-sort var3175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun paramName/-2072980001 (var2321) String)
(declare-fun configuration/-2072980001 (var2321) var3612)
(declare-fun newMetaObject/2100574349 (var3612 var1345) var641)
(declare-fun typeHandler/-2072980001 (var2321) var3231)
(declare-fun propertyName/-2072980001 (var2321) String)
(declare-fun var1581-init () var1581)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1345) String)
(declare-fun cast-from-var2556-to-var1345 (var2556) var1345)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1707365385 (var1581 String var3175) void)
(declare-fun cast-from-var2556-to-var3175 (var2556) var3175)
(declare-const null-var2321 var2321)
(declare-const null-var2617 var2617)
(declare-const null-var1345 var1345)
(declare-const null-String String)
(declare-const null-var3231 var3231)
(declare-const null-var2556 var2556)
(declare-const var3652 var2321) ; Statement: r0 := @this: org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner 
(assert (not (= var3652 null-var2321)))
(declare-const var3609 var2617) ; Statement: r5 := @parameter0: java.sql.ResultSet 
(assert (not (= var3609 null-var2617)))
(declare-const var1055 var1345) ; Statement: r35 := @parameter1: java.lang.Object 
(assert (not (= var1055 null-var1345)))
(define-const var3232 String (paramName/-2072980001 var3652)) ; Statement: $r1 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: java.lang.String paramName> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: org.apache.ibatis.session.Configuration configuration> 
(assert (= var3232 null-String)) ; Cond: $r1 == null 
(define-const var163 var3612 (configuration/-2072980001 var3652)) ; Statement: $r2 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var1509 var641 (newMetaObject/2100574349 var163 var1055)) ; Statement: $r28 = virtualinvoke $r2.<org.apache.ibatis.session.Configuration: org.apache.ibatis.reflection.MetaObject newMetaObject(java.lang.Object)>(r35) 
(define-const var3958 var3231 (typeHandler/-2072980001 var3652)) ; Statement: $r3 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: org.apache.ibatis.type.TypeHandler typeHandler> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: org.apache.ibatis.type.TypeHandler typeHandler> 
(assert (not (not (= var3958 null-var3231)))) ; Negate: Cond: $r3 != null  
(define-const var1947 String (propertyName/-2072980001 var3652)) ; Statement: $r8 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: java.lang.String propertyName> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2550 var2556) ; Statement: $r29 := @caughtexception 
(assert (not (= var2550 null-var2556)))
(define-const var615 var1581 var1581-init) ; Statement: $r30 = new org.apache.ibatis.executor.ExecutorException 
(define-const var1893 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1893)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1893!1 String)
(assert (= var1893!1 ""))
(assert true)
(define-const var2676 String (append/672562846 var1893!1 "Error getting generated key or setting result to parameter object. Cause: ")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error getting generated key or setting result to parameter object. Cause: ") 
(declare-const var1893!2 String)
(assert (= var1893!2 (str.++ var1893!1 "Error getting generated key or setting result to parameter object. Cause: ")))
(assert true)
(define-const var186 String (append/-1031950772 var2676 (cast-from-var2556-to-var1345 var2550))) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r29) 
(declare-const var2676!1 String)
(assert (str.prefixof var2676 var2676!1))
(assert true)
(define-const var834 String (toString/-2075883882 var186)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1707365385 var615 var834 (cast-from-var2556-to-var3175 var2550))) ; Statement: specialinvoke $r30.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r34, $r29) 

(declare-const var615!1 var1581)
(declare-const var834!1 String)
(declare-const var2550!1 var2556)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {paramName/-2072980001=([org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner], java.lang.String), configuration/-2072980001=([org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner], org.apache.ibatis.session.Configuration), newMetaObject/2100574349=([org.apache.ibatis.session.Configuration, java.lang.Object], org.apache.ibatis.reflection.MetaObject), typeHandler/-2072980001=([org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner], org.apache.ibatis.type.TypeHandler), propertyName/-2072980001=([org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner], java.lang.String), var1581-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2556-to-var1345=([java.sql.SQLException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1707365385=([org.apache.ibatis.executor.ExecutorException, java.lang.String, java.lang.Throwable], void), cast-from-var2556-to-var3175=([java.sql.SQLException], java.lang.Throwable)}
; {var2321=org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner, var3652=r0, var2617=java.sql.ResultSet, var3609=r5, var1345=java.lang.Object, var1055=r35, var3232=$r1, var49=null_type, var3612=org.apache.ibatis.session.Configuration, var163=$r2, var641=org.apache.ibatis.reflection.MetaObject, var1509=$r28, var3231=org.apache.ibatis.type.TypeHandler, var3958=$r3, var1947=$r8, var2556=java.sql.SQLException, var2550=$r29, var1581=org.apache.ibatis.executor.ExecutorException, var615=$r30, var1893=$r31, var2676=$r32, var186=$r33, var834=$r34, var3175=java.lang.Throwable}
; {org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner=var2321, r0=var3652, java.sql.ResultSet=var2617, r5=var3609, java.lang.Object=var1345, r35=var1055, $r1=var3232, null_type=var49, org.apache.ibatis.session.Configuration=var3612, $r2=var163, org.apache.ibatis.reflection.MetaObject=var641, $r28=var1509, org.apache.ibatis.type.TypeHandler=var3231, $r3=var3958, $r8=var1947, java.sql.SQLException=var2556, $r29=var2550, org.apache.ibatis.executor.ExecutorException=var1581, $r30=var615, $r31=var1893, $r32=var2676, $r33=var186, $r34=var834, java.lang.Throwable=var3175}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner;	r5 := @parameter0: java.sql.ResultSet;	r35 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: java.lang.String paramName>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: org.apache.ibatis.session.Configuration configuration>;	$r2 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: org.apache.ibatis.session.Configuration configuration>;	$r28 = virtualinvoke $r2.<org.apache.ibatis.session.Configuration: org.apache.ibatis.reflection.MetaObject newMetaObject(java.lang.Object)>(r35);	$r3 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: org.apache.ibatis.type.TypeHandler typeHandler>;	if $r3 != null goto $r4 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: org.apache.ibatis.type.TypeHandler typeHandler>;	$r8 = r0.<org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator$KeyAssigner: java.lang.String propertyName>;	$r29 := @caughtexception;	$r30 = new org.apache.ibatis.executor.ExecutorException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error getting generated key or setting result to parameter object. Cause: ");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r29);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r30.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r34, $r29);	throw $r30
;block_num 4
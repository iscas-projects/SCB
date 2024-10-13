(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3470 0)
(declare-sort var3152 0)
(declare-sort var1275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1275!class ClassObject)
(declare-fun var3152_logger/1591518954 (ClassObject) var3470)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-const var1091 var3470 (var3152_logger/1591518954 var1275!class)) ; Statement: $r0 = staticinvoke <org.hibernate.internal.CoreLogging: org.jboss.logging.Logger logger(java.lang.Class)>(class "Lorg/hibernate/engine/spi/QueryParameters;") 
(define-const var3352 var3470 var1091) ; Statement: <org.hibernate.engine.spi.QueryParameters: org.jboss.logging.Logger LOG> = $r0 
(define-const var401 String " \n\r\f\t,()=<>&|+-=/*\u0027^![]#~\u005c") ; Statement: $r1 = " \n\r\f\t,()=<>&|+-=/*\'^![]#~\\" 
(assert true)
(define-const var289 String (replace/2138489945 var401 (cast-from-String-to-String "\u0027") (cast-from-String-to-String ""))) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\'", "") 
(define-const var1413 String var289) ; Statement: <org.hibernate.engine.spi.QueryParameters: java.lang.String SYMBOLS> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3152_logger/1591518954=([java.lang.Class], org.jboss.logging.Logger), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3470=org.jboss.logging.Logger, var3152=org.hibernate.internal.CoreLogging, var1275=org.hibernate.engine.spi.QueryParameters, var1091=$r0, var3352=<org.hibernate.engine.spi.QueryParameters: org.jboss.logging.Logger LOG>, var401=$r1, var289=$r2, var1413=<org.hibernate.engine.spi.QueryParameters: java.lang.String SYMBOLS>}
; {org.jboss.logging.Logger=var3470, org.hibernate.internal.CoreLogging=var3152, org.hibernate.engine.spi.QueryParameters=var1275, $r0=var1091, <org.hibernate.engine.spi.QueryParameters: org.jboss.logging.Logger LOG>=var3352, $r1=var401, $r2=var289, <org.hibernate.engine.spi.QueryParameters: java.lang.String SYMBOLS>=var1413}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts $r0 = staticinvoke <org.hibernate.internal.CoreLogging: org.jboss.logging.Logger logger(java.lang.Class)>(class "Lorg/hibernate/engine/spi/QueryParameters;");	<org.hibernate.engine.spi.QueryParameters: org.jboss.logging.Logger LOG> = $r0;	$r1 = " \n\r\f\t,()=<>&|+-=/*\'^![]#~\\";	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\'", "");	<org.hibernate.engine.spi.QueryParameters: java.lang.String SYMBOLS> = $r2;	return
;block_num 1
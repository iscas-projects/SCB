(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1146 0)
(declare-sort var2336 0)
(declare-sort var2118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2118_startsWithEscapeCallTemplate/1291981726 (String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2336_complete/37877808 (var2336) void)
(declare-const null-String String)
(declare-const null-var2336 var2336)
(declare-const var1616 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1616 null-String)))
(declare-const var1246 var2336) ; Statement: r1 := @parameter1: org.hibernate.engine.query.spi.ParameterParser$Recognizer 
(assert (not (= var1246 null-var2336)))
(define-const var3522 Bool (var2118_startsWithEscapeCallTemplate/1291981726 var1616)) ; Statement: z0 = staticinvoke <org.hibernate.engine.query.spi.ParameterParser: boolean startsWithEscapeCallTemplate(java.lang.String)>(r0) 
(define-const var2694 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(assert true)
(define-const var258 Int (length/-134980193 var1616)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2631 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var2113 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var1552 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var1705 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var881 Int 0) ; Statement: i31 = 0 
(assert true) ; Non Conditional
 ; Statement: if i31 >= i0 goto interfaceinvoke r1.<org.hibernate.engine.query.spi.ParameterParser$Recognizer: void complete()>() 
(assert (>= var881 var258)) ; Cond: i31 >= i0 
;(assert (var2336_complete/37877808 var1246)) ; Statement: interfaceinvoke r1.<org.hibernate.engine.query.spi.ParameterParser$Recognizer: void complete()>() 

(declare-const var1246!1 var2336)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2118_startsWithEscapeCallTemplate/1291981726=([java.lang.String], boolean), length/-134980193=([java.lang.String], int), var2336_complete/37877808=([org.hibernate.engine.query.spi.ParameterParser$Recognizer], void)}
; {var1616=r0, var1146=null_type, var2336=org.hibernate.engine.query.spi.ParameterParser$Recognizer, var1246=r1, var2118=org.hibernate.engine.query.spi.ParameterParser, var3522=z0, var2694=z4, var258=i0, var2631=z5, var2113=z6, var1552=z7, var1705=z8, var881=i31}
; {r0=var1616, null_type=var1146, org.hibernate.engine.query.spi.ParameterParser$Recognizer=var2336, r1=var1246, org.hibernate.engine.query.spi.ParameterParser=var2118, z0=var3522, z4=var2694, i0=var258, z5=var2631, z6=var2113, z7=var1552, z8=var1705, i31=var881}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: org.hibernate.engine.query.spi.ParameterParser$Recognizer;	z0 = staticinvoke <org.hibernate.engine.query.spi.ParameterParser: boolean startsWithEscapeCallTemplate(java.lang.String)>(r0);	z4 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	z5 = 0;	z6 = 0;	z7 = 0;	z8 = 0;	i31 = 0;	if i31 >= i0 goto interfaceinvoke r1.<org.hibernate.engine.query.spi.ParameterParser$Recognizer: void complete()>();	interfaceinvoke r1.<org.hibernate.engine.query.spi.ParameterParser$Recognizer: void complete()>();	return
;block_num 3
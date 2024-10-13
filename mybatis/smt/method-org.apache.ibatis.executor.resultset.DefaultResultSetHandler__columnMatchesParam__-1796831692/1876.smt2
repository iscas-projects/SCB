(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1486 0)
(declare-sort var3896 0)
(declare-sort var1196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var1196) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1486 var1486)
(declare-const null-String String)
(declare-const var1196-ENGLISH var1196)
(declare-const var3126 var1486) ; Statement: r2 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler 
(assert (not (= var3126 null-var1486)))
(declare-const var1918 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1918 null-String)))
(declare-const var1013 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1013 null-String)))
(declare-const var183 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var183 null-String)))
 ; Statement: if r0 == null goto $r3 = r2.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.session.Configuration configuration> 
(assert (not (= var183 null-String))) ; Negate: Cond: r0 == null  
(define-const var3577 var1196 var1196-ENGLISH) ; Statement: $r4 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1504 String (toUpperCase/398655892 var1918 var3577)) ; Statement: $r5 = virtualinvoke r6.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r4) 
(assert true)
(define-const var2976 Bool (startsWith/-1785782452 var1504 var183)) ; Statement: $z2 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r0) 
 ; Statement: if $z2 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= (ite var2976 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1486=org.apache.ibatis.executor.resultset.DefaultResultSetHandler, var3126=r2, var1918=r6, var3896=null_type, var1013=r1, var183=r0, var1196=java.util.Locale, var3577=$r4, var1504=$r5, var2976=$z2}
; {org.apache.ibatis.executor.resultset.DefaultResultSetHandler=var1486, r2=var3126, r6=var1918, null_type=var3896, r1=var1013, r0=var183, java.util.Locale=var1196, $r4=var3577, $r5=var1504, $z2=var2976}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler;	r6 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	if r0 == null goto $r3 = r2.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.session.Configuration configuration>;	$r4 = <java.util.Locale: java.util.Locale ENGLISH>;	$r5 = virtualinvoke r6.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r4);	$z2 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r0);	if $z2 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	return 0
;block_num 3
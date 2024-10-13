(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3395 0)
(declare-sort var2976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$buffer/1122965743 (var3395) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3395 var3395)
(declare-const null-String String)
(declare-const var2957 var3395) ; Statement: r0 := @this: org.hibernate.engine.ResultSetMappingDefinition$1 
(assert (not (= var2957 null-var3395)))
(declare-const var735 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var735 null-String)))
(define-const var953 String (val$buffer/1122965743 var2957)) ; Statement: $r1 = r0.<org.hibernate.engine.ResultSetMappingDefinition$1: java.lang.StringBuilder val$buffer> 
(assert true)
(define-const var87 String (append/672562846 var953 "        ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        ") 
(declare-const var953!1 String)
(assert (= var953!1 (str.++ var953 "        ")))
(assert true)
(define-const var796 String (append/672562846 var87 var735)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var87!1 String)
(assert (= var87!1 (str.++ var87 var735)))
(assert true)
;(assert (append/672562846 var796 "\n")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var796!1 String)
(assert (= var796!1 (str.++ var796 "\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {val$buffer/1122965743=([org.hibernate.engine.ResultSetMappingDefinition$1], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3395=org.hibernate.engine.ResultSetMappingDefinition$1, var2957=r0, var735=r2, var2976=null_type, var953=$r1, var87=$r3, var796=$r4}
; {org.hibernate.engine.ResultSetMappingDefinition$1=var3395, r0=var2957, r2=var735, null_type=var2976, $r1=var953, $r3=var87, $r4=var796}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r0 := @this: org.hibernate.engine.ResultSetMappingDefinition$1;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.engine.ResultSetMappingDefinition$1: java.lang.StringBuilder val$buffer>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("        ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	return
;block_num 1
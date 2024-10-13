(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var871 0)
(declare-sort var3242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sqlBuffer/-29599980 (var871) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var871 var871)
(declare-const null-String String)
(declare-const var3182 var871) ; Statement: r0 := @this: org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext 
(assert (not (= var3182 null-var871)))
(declare-const var742 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var742 null-String)))
(define-const var2071 String (sqlBuffer/-29599980 var3182)) ; Statement: $r2 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer> 
(assert true)
;(assert (append/672562846 var2071 var742)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2071!1 String)
(assert (= var2071!1 (str.++ var2071 var742)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {sqlBuffer/-29599980=([org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var871=org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext, var3182=r0, var742=r1, var3242=null_type, var2071=$r2}
; {org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext=var871, r0=var3182, r1=var742, null_type=var3242, $r2=var2071}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return
;block_num 1
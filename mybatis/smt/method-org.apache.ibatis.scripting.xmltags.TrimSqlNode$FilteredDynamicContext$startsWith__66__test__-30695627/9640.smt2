(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var696 0)
(declare-sort var2001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2001-to-String (var2001) String)
(declare-fun cap0/-253439129 (var696) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var696 var696)
(declare-const null-var2001 var2001)
(declare-const var1366 var696) ; Statement: $r0 := @this: org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext$startsWith__66 
(assert (not (= var1366 null-var696)))
(declare-const var3650 var2001) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3650 null-var2001)))
(define-const var1777 String (cast-from-var2001-to-String var3650)) ; Statement: $r2 = (java.lang.String) $r1 
(define-const var524 String (cap0/-253439129 var1366)) ; Statement: $r3 = $r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext$startsWith__66: java.lang.String cap0> 
(assert true)
(define-const var255 Bool (startsWith/-1785782452 var524 var1777)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2001-to-String=([java.lang.Object], java.lang.String), cap0/-253439129=([org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext$startsWith__66], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var696=org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext$startsWith__66, var1366=$r0, var2001=java.lang.Object, var3650=$r1, var1777=$r2, var524=$r3, var255=$z0}
; {org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext$startsWith__66=var696, $r0=var1366, java.lang.Object=var2001, $r1=var3650, $r2=var1777, $r3=var524, $z0=var255}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts $r0 := @this: org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext$startsWith__66;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = $r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext$startsWith__66: java.lang.String cap0>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>($r2);	return $z0
;block_num 1
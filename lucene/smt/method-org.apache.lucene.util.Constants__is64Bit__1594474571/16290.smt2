(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var320 0)
(declare-sort var1892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var320_getSysProp/-1800791480 (String) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(define-const var113 String (var320_getSysProp/-1800791480 "sun.arch.data.model")) ; Statement: r0 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String)>("sun.arch.data.model") 
 ; Statement: if r0 == null goto $r1 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH> 
(assert (not (= var113 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var751 Bool (contains/1009244746 var113 (cast-from-String-to-String "64"))) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("64") 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var320_getSysProp/-1800791480=([java.lang.String], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var320=org.apache.lucene.util.Constants, var113=r0, var1892=null_type, var751=$z1}
; {org.apache.lucene.util.Constants=var320, r0=var113, null_type=var1892, $z1=var751}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String)>("sun.arch.data.model");	if r0 == null goto $r1 = <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>;	$z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("64");	return $z1
;block_num 2
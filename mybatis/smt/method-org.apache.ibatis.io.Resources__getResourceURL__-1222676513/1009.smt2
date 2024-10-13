(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1748 0)
(declare-sort var625 0)
(declare-sort var165 0)
(declare-sort var1674 0)
(declare-sort var1761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getResourceAsURL/-1416270146 (var165 String var1748) var1761)
(declare-const null-var1748 var1748)
(declare-const null-String String)
(declare-const var1674-classLoaderWrapper var165)
(declare-const null-var1761 var1761)
(declare-const var3366 var1748) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var3366 null-var1748)))
(declare-const var3820 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3820 null-String)))
(define-const var1137 var165 var1674-classLoaderWrapper) ; Statement: $r2 = <org.apache.ibatis.io.Resources: org.apache.ibatis.io.ClassLoaderWrapper classLoaderWrapper> 
(assert true)
(define-const var1492 var1761 (getResourceAsURL/-1416270146 var1137 var3820 var3366)) ; Statement: r3 = virtualinvoke $r2.<org.apache.ibatis.io.ClassLoaderWrapper: java.net.URL getResourceAsURL(java.lang.String,java.lang.ClassLoader)>(r0, r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var1492 null-var1761))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getResourceAsURL/-1416270146=([org.apache.ibatis.io.ClassLoaderWrapper, java.lang.String, java.lang.ClassLoader], java.net.URL)}
; {var1748=java.lang.ClassLoader, var3366=r1, var3820=r0, var625=null_type, var165=org.apache.ibatis.io.ClassLoaderWrapper, var1674=org.apache.ibatis.io.Resources, var1137=$r2, var1761=java.net.URL, var1492=r3}
; {java.lang.ClassLoader=var1748, r1=var3366, r0=var3820, null_type=var625, org.apache.ibatis.io.ClassLoaderWrapper=var165, org.apache.ibatis.io.Resources=var1674, $r2=var1137, java.net.URL=var1761, r3=var1492}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.ClassLoader;	r0 := @parameter1: java.lang.String;	$r2 = <org.apache.ibatis.io.Resources: org.apache.ibatis.io.ClassLoaderWrapper classLoaderWrapper>;	r3 = virtualinvoke $r2.<org.apache.ibatis.io.ClassLoaderWrapper: java.net.URL getResourceAsURL(java.lang.String,java.lang.ClassLoader)>(r0, r1);	if r3 != null goto return r3;	return r3
;block_num 2
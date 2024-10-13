(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var843 0)
(declare-sort var659 0)
(declare-sort var1380 0)
(declare-sort var1623 0)
(declare-sort var3488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getResourceAsStream/1805979041 (var1380 String var843) var3488)
(declare-const null-var843 var843)
(declare-const null-String String)
(declare-const var1623-classLoaderWrapper var1380)
(declare-const null-var3488 var3488)
(declare-const var2620 var843) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2620 null-var843)))
(declare-const var2974 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2974 null-String)))
(define-const var1843 var1380 var1623-classLoaderWrapper) ; Statement: $r2 = <org.apache.ibatis.io.Resources: org.apache.ibatis.io.ClassLoaderWrapper classLoaderWrapper> 
(assert true)
(define-const var418 var3488 (getResourceAsStream/1805979041 var1843 var2974 var2620)) ; Statement: r3 = virtualinvoke $r2.<org.apache.ibatis.io.ClassLoaderWrapper: java.io.InputStream getResourceAsStream(java.lang.String,java.lang.ClassLoader)>(r0, r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var418 null-var3488))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getResourceAsStream/1805979041=([org.apache.ibatis.io.ClassLoaderWrapper, java.lang.String, java.lang.ClassLoader], java.io.InputStream)}
; {var843=java.lang.ClassLoader, var2620=r1, var2974=r0, var659=null_type, var1380=org.apache.ibatis.io.ClassLoaderWrapper, var1623=org.apache.ibatis.io.Resources, var1843=$r2, var3488=java.io.InputStream, var418=r3}
; {java.lang.ClassLoader=var843, r1=var2620, r0=var2974, null_type=var659, org.apache.ibatis.io.ClassLoaderWrapper=var1380, org.apache.ibatis.io.Resources=var1623, $r2=var1843, java.io.InputStream=var3488, r3=var418}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.ClassLoader;	r0 := @parameter1: java.lang.String;	$r2 = <org.apache.ibatis.io.Resources: org.apache.ibatis.io.ClassLoaderWrapper classLoaderWrapper>;	r3 = virtualinvoke $r2.<org.apache.ibatis.io.ClassLoaderWrapper: java.io.InputStream getResourceAsStream(java.lang.String,java.lang.ClassLoader)>(r0, r1);	if r3 != null goto return r3;	return r3
;block_num 2
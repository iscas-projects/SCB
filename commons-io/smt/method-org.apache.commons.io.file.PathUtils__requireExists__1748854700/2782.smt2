(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var14 0)
(declare-sort var2202 0)
(declare-sort var2831 0)
(declare-sort var1388 0)
(declare-sort var286 0)
(declare-sort var1737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1388_requireNonNull/1378936425 (var286 String) var286)
(declare-fun cast-from-var14-to-var286 (var14) var286)
(declare-fun var1737_exists/1474989889 (var14 (Array Int var2831)) Bool)
(declare-const null-var14 var14)
(declare-const null-String String)
(declare-const null-__Array__Int__var2831__ (Array Int var2831))
(declare-const var175 var14) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var175 null-var14)))
(declare-const var722 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var722 null-String)))
(declare-const var2240 (Array Int var2831)) ; Statement: r2 := @parameter2: java.nio.file.LinkOption[] 
(assert (not (= var2240 null-__Array__Int__var2831__)))
;(assert (var1388_requireNonNull/1378936425 (cast-from-var14-to-var286 var175) var722)) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, r1) 

(declare-const var175!1 var14)
(declare-const var722!1 String)
(define-const var167 Bool (var1737_exists/1474989889 var175!1 var2240)) ; Statement: $z0 = staticinvoke <org.apache.commons.io.file.PathUtils: boolean exists(java.nio.file.Path,java.nio.file.LinkOption[])>(r0, r2) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (= (ite var167 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1388_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var14-to-var286=([java.nio.file.Path], java.lang.Object), var1737_exists/1474989889=([java.nio.file.Path, java.nio.file.LinkOption[]], boolean)}
; {var14=java.nio.file.Path, var175=r0, var722=r1, var2202=null_type, var2831=java.nio.file.LinkOption, var2240=r2, var1388=java.util.Objects, var286=java.lang.Object, var1737=org.apache.commons.io.file.PathUtils, var167=$z0}
; {java.nio.file.Path=var14, r0=var175, r1=var722, null_type=var2202, java.nio.file.LinkOption=var2831, r2=var2240, java.util.Objects=var1388, java.lang.Object=var286, org.apache.commons.io.file.PathUtils=var1737, $z0=var167}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.nio.file.Path;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.nio.file.LinkOption[];	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, r1);	$z0 = staticinvoke <org.apache.commons.io.file.PathUtils: boolean exists(java.nio.file.Path,java.nio.file.LinkOption[])>(r0, r2);	if $z0 != 0 goto return r0;	return r0
;block_num 2
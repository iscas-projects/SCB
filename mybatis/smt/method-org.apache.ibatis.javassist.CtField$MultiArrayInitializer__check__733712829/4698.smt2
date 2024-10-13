(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2288 0)
(declare-sort var3289 0)
(declare-sort var2069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2069-init () var2069)
(declare-fun <init>/-874668403 (var2069 String) void)
(declare-const null-var2288 var2288)
(declare-const null-String String)
(declare-const var3022 var2288) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtField$MultiArrayInitializer 
(assert (not (= var3022 null-var2288)))
(declare-const var588 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var588 null-String)))
(assert (and true (and (> (str.len var588) 0) (<= 0 0))))
(define-const var1281 Int (charAt/698050440 var588 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2929 Int (cast-from-Int-to-Int var1281)) ; Statement: $i1 = (int) $c0 
 ; Statement: if $i1 == 91 goto return 
(assert (not (= var2929 91))) ; Negate: Cond: $i1 == 91  
(define-const var3894 var2069 var2069-init) ; Statement: $r3 = new org.apache.ibatis.javassist.CannotCompileException 
(assert true)
;(assert (<init>/-874668403 var3894 "type mismatch")) ; Statement: specialinvoke $r3.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>("type mismatch") 

(declare-const var3894!1 var2069)
(declare-const var1362 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2069-init=([], org.apache.ibatis.javassist.CannotCompileException), <init>/-874668403=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String], void)}
; {var2288=org.apache.ibatis.javassist.CtField$MultiArrayInitializer, var3022=r2, var588=r0, var3289=null_type, var1281=$c0, var2929=$i1, var2069=org.apache.ibatis.javassist.CannotCompileException, var3894=$r3, var1362="type mismatch"}
; {org.apache.ibatis.javassist.CtField$MultiArrayInitializer=var2288, r2=var3022, r0=var588, null_type=var3289, $c0=var1281, $i1=var2929, org.apache.ibatis.javassist.CannotCompileException=var2069, $r3=var3894, "type mismatch"=var1362}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtField$MultiArrayInitializer;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 == 91 goto return;	$r3 = new org.apache.ibatis.javassist.CannotCompileException;	specialinvoke $r3.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>("type mismatch");	throw $r3
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2662 0)
(declare-sort var2952 0)
(declare-sort var2927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2952_getType/935593766 (String Int Int Int) (Array Int ClassObject))
(declare-fun var2927-init () var2927)
(declare-fun <init>/-1084991535 (var2927 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var2202 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2202 null-String)))
(assert true)
(define-const var3765 Int (length/-134980193 var2202)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3227 (Array Int ClassObject) (var2952_getType/935593766 var2202 var3765 0 0)) ; Statement: r1 = staticinvoke <org.apache.ibatis.javassist.runtime.Desc: java.lang.Class[] getType(java.lang.String,int,int,int)>(r0, $i0, 0, 0) 
 ; Statement: if r1 == null goto $r2 = new java.lang.RuntimeException 
(assert (= var3227 null-__Array__Int__ClassObject__)) ; Cond: r1 == null 
(define-const var817 var2927 var2927-init) ; Statement: $r2 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/-1084991535 var817 "$type: internal error")) ; Statement: specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>("$type: internal error") 

(declare-const var817!1 var2927)
(declare-const var685 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2952_getType/935593766=([java.lang.String, int, int, int], java.lang.Class[]), var2927-init=([], java.lang.RuntimeException), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2202=r0, var2662=null_type, var3765=$i0, var2952=org.apache.ibatis.javassist.runtime.Desc, var3227=r1, var2927=java.lang.RuntimeException, var817=$r2, var685="$type: internal error"}
; {r0=var2202, null_type=var2662, $i0=var3765, org.apache.ibatis.javassist.runtime.Desc=var2952, r1=var3227, java.lang.RuntimeException=var2927, $r2=var817, "$type: internal error"=var685}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = staticinvoke <org.apache.ibatis.javassist.runtime.Desc: java.lang.Class[] getType(java.lang.String,int,int,int)>(r0, $i0, 0, 0);	if r1 == null goto $r2 = new java.lang.RuntimeException;	$r2 = new java.lang.RuntimeException;	specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>("$type: internal error");	throw $r2
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2194 0)
(declare-sort var2883 0)
(declare-sort var21 0)
(declare-sort var3726 0)
(declare-sort var948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/-526725382 (var21 String) ClassObject)
(declare-fun var948-init () var948)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1087086210 (var948 String) void)
(declare-const null-var2194 var2194)
(declare-const null-String String)
(declare-const var3726-primitiveTypes var21)
(declare-const null-ClassObject ClassObject)
(declare-const var2972 var2194) ; Statement: r7 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2972 null-var2194)))
(declare-const var369 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var369 null-String)))
(define-const var3242 var21 var3726-primitiveTypes) ; Statement: $r1 = <org.apache.ibatis.ognl.OgnlRuntime: org.apache.ibatis.ognl.PrimitiveTypes primitiveTypes> 
(assert true)
(define-const var2227 ClassObject (get/-526725382 var3242 var369)) ; Statement: r10 = virtualinvoke $r1.<org.apache.ibatis.ognl.PrimitiveTypes: java.lang.Class get(java.lang.String)>(r0) 
 ; Statement: if r10 != null goto (branch) 
(assert (not (= var2227 null-ClassObject))) ; Cond: r10 != null 
 ; Statement: if r10 != null goto return r10 
(assert (not (not (= var2227 null-ClassObject)))) ; Negate: Cond: r10 != null  
(define-const var1240 var948 var948-init) ; Statement: $r2 = new java.lang.ClassNotFoundException 
(define-const var2339 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2339)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2339!1 String)
(assert (= var2339!1 ""))
(assert true)
(define-const var2222 String (append/672562846 var2339!1 "Unable to resolve class: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve class: ") 
(declare-const var2339!2 String)
(assert (= var2339!2 (str.++ var2339!1 "Unable to resolve class: ")))
(assert true)
(define-const var1345 String (append/672562846 var2222 var369)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2222!1 String)
(assert (= var2222!1 (str.++ var2222 var369)))
(assert true)
(define-const var2619 String (toString/-2075883882 var1345)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1087086210 var1240 var2619)) ; Statement: specialinvoke $r2.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r6) 

(declare-const var1240!1 var948)
(declare-const var2619!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {get/-526725382=([org.apache.ibatis.ognl.PrimitiveTypes, java.lang.String], java.lang.Class), var948-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var2194=org.apache.ibatis.ognl.OgnlContext, var2972=r7, var369=r0, var2883=null_type, var21=org.apache.ibatis.ognl.PrimitiveTypes, var3726=org.apache.ibatis.ognl.OgnlRuntime, var3242=$r1, var2227=r10, var948=java.lang.ClassNotFoundException, var1240=$r2, var2339=$r3, var2222=$r4, var1345=$r5, var2619=$r6}
; {org.apache.ibatis.ognl.OgnlContext=var2194, r7=var2972, r0=var369, null_type=var2883, org.apache.ibatis.ognl.PrimitiveTypes=var21, org.apache.ibatis.ognl.OgnlRuntime=var3726, $r1=var3242, r10=var2227, java.lang.ClassNotFoundException=var948, $r2=var1240, $r3=var2339, $r4=var2222, $r5=var1345, $r6=var2619}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r0 := @parameter1: java.lang.String;	$r1 = <org.apache.ibatis.ognl.OgnlRuntime: org.apache.ibatis.ognl.PrimitiveTypes primitiveTypes>;	r10 = virtualinvoke $r1.<org.apache.ibatis.ognl.PrimitiveTypes: java.lang.Class get(java.lang.String)>(r0);	if r10 != null goto (branch);	if r10 != null goto return r10;	$r2 = new java.lang.ClassNotFoundException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve class: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 3
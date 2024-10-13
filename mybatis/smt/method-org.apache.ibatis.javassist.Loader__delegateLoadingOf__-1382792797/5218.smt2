(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var180 0)
(declare-sort var85 0)
(declare-sort var1320 0)
(declare-sort var3227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun notDefinedPackages/60359931 (var180) var1320)
(declare-fun addElement/-1717065458 (var1320 var3227) void)
(declare-fun cast-from-String-to-var3227 (String) var3227)
(declare-const null-var180 var180)
(declare-const null-String String)
(declare-const var58 var180) ; Statement: r1 := @this: org.apache.ibatis.javassist.Loader 
(assert (not (= var58 null-var180)))
(declare-const var3811 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3811 null-String)))
(assert true)
(define-const var1424 Bool (endsWith/985337093 var3811 ".")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.javassist.Loader: java.util.HashMap notDefinedHere> 
(assert (not (= (ite var1424 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1556 var1320 (notDefinedPackages/60359931 var58)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.Loader: java.util.Vector notDefinedPackages> 
(assert true)
;(assert (addElement/-1717065458 var1556 (cast-from-String-to-var3227 var3811))) ; Statement: virtualinvoke $r3.<java.util.Vector: void addElement(java.lang.Object)>(r0) 

(declare-const var1556!1 var1320)
(declare-const var3811!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), notDefinedPackages/60359931=([org.apache.ibatis.javassist.Loader], java.util.Vector), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var3227=([java.lang.String], java.lang.Object)}
; {var180=org.apache.ibatis.javassist.Loader, var58=r1, var3811=r0, var85=null_type, var1424=$z0, var1320=java.util.Vector, var1556=$r3, var3227=java.lang.Object}
; {org.apache.ibatis.javassist.Loader=var180, r1=var58, r0=var3811, null_type=var85, $z0=var1424, java.util.Vector=var1320, $r3=var1556, java.lang.Object=var3227}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.Loader;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.javassist.Loader: java.util.HashMap notDefinedHere>;	$r3 = r1.<org.apache.ibatis.javassist.Loader: java.util.Vector notDefinedPackages>;	virtualinvoke $r3.<java.util.Vector: void addElement(java.lang.Object)>(r0);	goto [?= return];	return
;block_num 3
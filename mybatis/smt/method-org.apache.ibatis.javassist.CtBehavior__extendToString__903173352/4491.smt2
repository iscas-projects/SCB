(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2431 0)
(declare-sort var110 0)
(declare-sort var2584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/1424975170 (var110) String)
(declare-fun cast-from-var2431-to-var110 (var2431) var110)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun methodInfo/-921615669 (var2431) var2584)
(declare-fun getDescriptor/241025769 (var2584) String)
(declare-const null-var2431 var2431)
(declare-const null-String String)
(declare-const var2794 var2431) ; Statement: r1 := @this: org.apache.ibatis.javassist.CtBehavior 
(assert (not (= var2794 null-var2431)))
(declare-const var3576 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3576 null-String)))
(assert true)
;(assert (append/-1166366385 var3576 32)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3576!1 String)
(assert (str.prefixof var3576 var3576!1))
(assert true)
(define-const var3242 String (getName/1424975170 (cast-from-var2431-to-var110 var2794))) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtBehavior: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var3576!1 var3242)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3576!2 String)
(assert (= var3576!2 (str.++ var3576!1 var3242)))
(assert true)
;(assert (append/-1166366385 var3576!2 32)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3576!3 String)
(assert (str.prefixof var3576!2 var3576!3))
(define-const var1490 var2584 (methodInfo/-921615669 var2794)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.CtBehavior: org.apache.ibatis.javassist.bytecode.MethodInfo methodInfo> 
(assert true)
(define-const var2461 String (getDescriptor/241025769 var1490)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>() 
(assert true)
;(assert (append/672562846 var3576!3 var2461)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3576!4 String)
(assert (= var3576!4 (str.++ var3576!3 var2461)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/1424975170=([org.apache.ibatis.javassist.CtMember], java.lang.String), cast-from-var2431-to-var110=([org.apache.ibatis.javassist.CtBehavior], org.apache.ibatis.javassist.CtMember), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), methodInfo/-921615669=([org.apache.ibatis.javassist.CtBehavior], org.apache.ibatis.javassist.bytecode.MethodInfo), getDescriptor/241025769=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String)}
; {var2431=org.apache.ibatis.javassist.CtBehavior, var2794=r1, var3576=r0, var110=org.apache.ibatis.javassist.CtMember, var3242=$r2, var2584=org.apache.ibatis.javassist.bytecode.MethodInfo, var1490=$r3, var2461=$r4}
; {org.apache.ibatis.javassist.CtBehavior=var2431, r1=var2794, r0=var3576, org.apache.ibatis.javassist.CtMember=var110, $r2=var3242, org.apache.ibatis.javassist.bytecode.MethodInfo=var2584, $r3=var1490, $r4=var2461}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.ibatis.javassist.CtBehavior;	r0 := @parameter0: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtBehavior: java.lang.String getName()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = r1.<org.apache.ibatis.javassist.CtBehavior: org.apache.ibatis.javassist.bytecode.MethodInfo methodInfo>;	$r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	return
;block_num 1
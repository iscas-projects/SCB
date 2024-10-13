(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3774 0)
(declare-sort var1987 0)
(declare-sort var2805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/-1256007426 (var3774) var2805)
(declare-fun var2805_access$100/-1528079441 (var2805) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3774 var3774)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2407 var3774) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$StyleMapper 
(assert (not (= var2407 null-var3774)))
(declare-const var1982 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1982 null-String)))
(assert true)
(define-const var2528 Int (lastIndexOf/-1292097097 var1982 46)) ; Statement: i0 = virtualinvoke r8.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 <= 0 goto $r0 = newarray (java.lang.String)[1] 
(assert (<= var2528 0)) ; Cond: i0 <= 0 
(define-const var784 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.String)[1] 
(define-const var579 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var579)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var579!1 String)
(assert (= var579!1 ""))
(assert true)
(define-const var468 String (append/672562846 var579!1 var1982)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var579!2 String)
(assert (= var579!2 (str.++ var579!1 var1982)))
(define-const var2733 var2805 (this$0/-1256007426 var2407)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$StyleMapper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess this$0> 
(define-const var2354 String (var2805_access$100/-1528079441 var2733)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.String access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess)>($r3) 
(assert true)
(define-const var1907 String (append/672562846 var468 var2354)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var468!1 String)
(assert (= var468!1 (str.++ var468 var2354)))
(assert true)
(define-const var3232 String (toString/-2075883882 var1907)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var784!1 (Array Int String))
(assert (not (= var784!1 null-__Array__Int__String__)))
(assert (= (select var784!1 0) var3232)) ; Statement: $r0[0] = $r7 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/-1256007426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$StyleMapper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess), var2805_access$100/-1528079441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3774=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$StyleMapper, var2407=r2, var1982=r8, var1987=null_type, var2528=i0, var784=$r0, var579=$r1, var468=$r5, var2805=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, var2733=$r3, var2354=$r4, var1907=$r6, var3232=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$StyleMapper=var3774, r2=var2407, r8=var1982, null_type=var1987, i0=var2528, $r0=var784, $r1=var579, $r5=var468, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess=var2805, $r3=var2733, $r4=var2354, $r6=var1907, $r7=var3232}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$StyleMapper;	r8 := @parameter0: java.lang.String;	i0 = virtualinvoke r8.<java.lang.String: int lastIndexOf(int)>(46);	if i0 <= 0 goto $r0 = newarray (java.lang.String)[1];	$r0 = newarray (java.lang.String)[1];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$StyleMapper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess this$0>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.String access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r0[0] = $r7;	return $r0
;block_num 2
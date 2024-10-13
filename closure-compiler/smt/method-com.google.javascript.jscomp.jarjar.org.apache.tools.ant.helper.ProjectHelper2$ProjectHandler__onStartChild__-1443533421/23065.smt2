(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var866 0)
(declare-sort var1725 0)
(declare-sort var3502 0)
(declare-sort var830 0)
(declare-sort var615 0)
(declare-sort var1463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1463_access$300/927191767 () var615)
(declare-const null-var866 var866)
(declare-const null-String String)
(declare-const null-var3502 var3502)
(declare-const null-var830 var830)
(declare-const var3850 var866) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler 
(assert (not (= var3850 null-var866)))
(declare-const var3844 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3844 null-String)))
(declare-const var620 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var620 null-String)))
(declare-const var344 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var344 null-String)))
(declare-const var1204 var3502) ; Statement: r6 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var1204 null-var3502)))
(declare-const var3396 var830) ; Statement: r7 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var3396 null-var830)))
(define-const var2863 String "target") ; Statement: $r1 = "target" 
(assert true)
(define-const var2984 Bool (= var2863 var620)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
(assert (not (= (ite var2984 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3231 Bool (isEmpty/-1285796103 var3844)) ; Statement: $z1 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$300()>() 
(assert (not (= (ite var3231 1 0) 0))) ; Cond: $z1 != 0 
(define-const var2506 var615 var1463_access$300/927191767) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$300()>() 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var1463_access$300/927191767=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler)}
; {var866=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler, var3850=r4, var3844=r2, var1725=null_type, var620=r0, var344=r5, var3502=org.xml.sax.Attributes, var1204=r6, var830=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var3396=r7, var2863=$r1, var2984=$z0, var3231=$z1, var615=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler, var1463=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2, var2506=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler=var866, r4=var3850, r2=var3844, null_type=var1725, r0=var620, r5=var344, org.xml.sax.Attributes=var3502, r6=var1204, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var830, r7=var3396, $r1=var2863, $z0=var2984, $z1=var3231, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler=var615, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2=var1463, $r8=var2506}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	r6 := @parameter3: org.xml.sax.Attributes;	r7 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	$r1 = "target";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	$z1 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$300()>();	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$300()>();	goto [?= return $r8];	return $r8
;block_num 4
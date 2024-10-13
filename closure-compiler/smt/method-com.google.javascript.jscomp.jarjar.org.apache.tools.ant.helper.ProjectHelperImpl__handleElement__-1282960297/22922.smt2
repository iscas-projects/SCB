(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var478 0)
(declare-sort var1597 0)
(declare-sort var139 0)
(declare-sort var2843 0)
(declare-sort var3625 0)
(declare-sort var2971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2971-init () var2971)
(declare-fun <init>/2031254785 (var2971 var478 var1597) void)
(declare-const null-var478 var478)
(declare-const null-var1597 var1597)
(declare-const null-var139 var139)
(declare-const null-String String)
(declare-const null-var3625 var3625)
(declare-const var2186 var478) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl 
(assert (not (= var2186 null-var478)))
(declare-const var58 var1597) ; Statement: r7 := @parameter1: org.xml.sax.DocumentHandler 
(assert (not (= var58 null-var1597)))
(declare-const var3181 var139) ; Statement: r8 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(assert (not (= var3181 null-var139)))
(declare-const var1413 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var1413 null-String)))
(declare-const var1637 var3625) ; Statement: r9 := @parameter4: org.xml.sax.AttributeList 
(assert (not (= var1637 null-var3625)))
(define-const var3521 String "description") ; Statement: $r1 = "description" 
(assert true)
(define-const var3502 Bool (= var3521 var1413)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(assert (not (= (ite var3502 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var840 var2971 var2971-init) ; Statement: $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler 
(assert true)
;(assert (<init>/2031254785 var840 var2186 var58)) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl,org.xml.sax.DocumentHandler)>(r2, r7) 

(declare-const var840!1 var2971)
(declare-const var2186!1 var478)
(declare-const var58!1 var1597)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2971-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler), <init>/2031254785=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl, org.xml.sax.DocumentHandler], void)}
; {var478=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl, var2186=r2, var1597=org.xml.sax.DocumentHandler, var58=r7, var139=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var3181=r8, var1413=r0, var2843=null_type, var3625=org.xml.sax.AttributeList, var1637=r9, var3521=$r1, var3502=$z0, var2971=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler, var840=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl=var478, r2=var2186, org.xml.sax.DocumentHandler=var1597, r7=var58, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var139, r8=var3181, r0=var1413, null_type=var2843, org.xml.sax.AttributeList=var3625, r9=var1637, $r1=var3521, $z0=var3502, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler=var2971, $r11=var840}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl;	r7 := @parameter1: org.xml.sax.DocumentHandler;	r8 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	r0 := @parameter3: java.lang.String;	r9 := @parameter4: org.xml.sax.AttributeList;	$r1 = "description";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	$r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler;	specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl,org.xml.sax.DocumentHandler)>(r2, r7);	goto [?= return];	return
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var962 0)
(declare-sort var432 0)
(declare-sort var2160 0)
(declare-sort var3564 0)
(declare-sort var3084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/456963423 (var2160 String Int) void)
(declare-fun cast-from-var962-to-var2160 (var962) var2160)
(declare-fun getValue/-1445752687 (var3564) String)
(declare-fun cast-from-var432-to-var3564 (var432) var3564)
(declare-fun var3084-init () var3084)
(declare-fun <init>/46168300 (var3084) void)
(declare-fun setValue/-565436303 (var3564 String) void)
(declare-fun cast-from-var3084-to-var3564 (var3084) var3564)
(declare-fun setEol/87516040 (var962 var3084) void)
(declare-const null-var962 var962)
(declare-const null-var432 var432)
(declare-const var1002 var962) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF 
(assert (not (= var1002 null-var962)))
(declare-const var3662 var432) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$AddAsisRemove 
(assert (not (= var3662 null-var432)))
(assert true)
;(assert (log/456963423 (cast-from-var962-to-var2160 var1002) "DEPRECATED: The cr attribute has been deprecated," 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>("DEPRECATED: The cr attribute has been deprecated,", 1) 

(declare-const var1002!1 var962)
(declare-const var2376 String)
(declare-const var118 Int)
(assert true)
;(assert (log/456963423 (cast-from-var962-to-var2160 var1002!1) "Please use the eol attribute instead" 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>("Please use the eol attribute instead", 1) 

(declare-const var1002!2 var962)
(declare-const var2321 String)
(declare-const var118!1 Int)
(assert true)
(define-const var377 String (getValue/-1445752687 (cast-from-var432-to-var3564 var3662))) ; Statement: r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$AddAsisRemove: java.lang.String getValue()>() 
(define-const var3306 var3084 var3084-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf 
(assert true)
;(assert (<init>/46168300 var3306)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf: void <init>()>() 

(declare-const var3306!1 var3084)
(define-const var3665 String "remove") ; Statement: $r4 = "remove" 
(assert true)
(define-const var3519 Bool (= var3665 var377)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r5 = "asis" 
(assert (not (= (ite var3519 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (setValue/-565436303 (cast-from-var3084-to-var3564 var3306!1) "lf")) ; Statement: virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf: void setValue(java.lang.String)>("lf") 

(declare-const var3306!2 var3084)
(declare-const var3583 String)
 ; Statement: goto [?= virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void setEol(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf)>($r3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (setEol/87516040 var1002!2 var3306!2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void setEol(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf)>($r3) 

(declare-const var1002!3 var962)
(declare-const var3306!3 var3084)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var962-to-var2160=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var432-to-var3564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$AddAsisRemove], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), var3084-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf), <init>/46168300=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf], void), setValue/-565436303=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, java.lang.String], void), cast-from-var3084-to-var3564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), setEol/87516040=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf], void)}
; {var962=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF, var1002=r0, var432=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$AddAsisRemove, var3662=r1, var2160=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2376="DEPRECATED: The cr attribute has been deprecated,", var118=1, var2321="Please use the eol attribute instead", var3564=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var377=r2, var3084=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf, var3306=$r3, var3665=$r4, var3519=$z0, var3583="lf"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF=var962, r0=var1002, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$AddAsisRemove=var432, r1=var3662, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2160, "DEPRECATED: The cr attribute has been deprecated,"=var2376, 1=var118, "Please use the eol attribute instead"=var2321, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var3564, r2=var377, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf=var3084, $r3=var3306, $r4=var3665, $z0=var3519, "lf"=var3583}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$AddAsisRemove;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>("DEPRECATED: The cr attribute has been deprecated,", 1);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>("Please use the eol attribute instead", 1);	r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$AddAsisRemove: java.lang.String getValue()>();	$r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf;	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf: void <init>()>();	$r4 = "remove";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r5 = "asis";	virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf: void setValue(java.lang.String)>("lf");	goto [?= virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void setEol(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf)>($r3)];	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void setEol(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$CrLf)>($r3);	return
;block_num 3
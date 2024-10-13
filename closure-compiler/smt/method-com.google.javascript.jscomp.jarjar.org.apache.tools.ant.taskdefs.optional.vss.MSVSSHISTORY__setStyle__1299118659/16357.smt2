(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1744 0)
(declare-sort var1411 0)
(declare-sort var1683 0)
(declare-sort var3425 0)
(declare-sort var1357 0)
(declare-sort var1786 0)
(declare-sort var3921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var1683) String)
(declare-fun cast-from-var1411-to-var1683 (var1411) var1683)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3425-init () var3425)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1357) String)
(declare-fun cast-from-var1411-to-var1357 (var1411) var1357)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var3921) var1786)
(declare-fun cast-from-var1744-to-var3921 (var1744) var3921)
(declare-fun <init>/-469549130 (var3425 String var1786) void)
(declare-const null-var1744 var1744)
(declare-const null-var1411 var1411)
(declare-const var679 var1744) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY 
(assert (not (= var679 null-var1744)))
(declare-const var2968 var1411) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY$BriefCodediffNofile 
(assert (not (= var2968 null-var1411)))
(assert true)
(define-const var522 String (getValue/-1445752687 (cast-from-var1411-to-var1683 var2968))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY$BriefCodediffNofile: java.lang.String getValue()>() 
(define-const var3523 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2404 Int (hashCode/-467973558 var522)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1040106819: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("nofile");     case -867501198: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("codediff");     case 94005370: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("brief");     case 1544803905: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("default");     default: goto tableswitch(b1) {     case 0: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-B");     case 1: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-D");     case 2: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("");     case 3: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-F-");     default: goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException; }; } 
(assert (and (not (= var2404 1544803905)) (and (not (= var2404 94005370)) (and (not (= var2404 (- 867501198))) (and (not (= var2404 (- 1040106819))) true))))) ; Intersect: Negate: Cond: $i0 == 1544803905   and Intersect: Negate: Cond: $i0 == 94005370   and Intersect: Negate: Cond: $i0 == -867501198   and Intersect: Negate: Cond: $i0 == -1040106819   and Non Conditional    
 ; Statement: tableswitch(b1) {     case 0: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-B");     case 1: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-D");     case 2: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("");     case 3: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-F-");     default: goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException; } 
(assert (and (not (= var3523 3)) (and (not (= var3523 2)) (and (not (= var3523 1)) (and (not (= var3523 0)) true))))) ; Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional    
(define-const var2411 var3425 var3425-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2914 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2914)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2914!1 String)
(assert (= var2914!1 ""))
(assert true)
(define-const var132 String (append/672562846 var2914!1 "Style ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Style ") 
(declare-const var2914!2 String)
(assert (= var2914!2 (str.++ var2914!1 "Style ")))
(assert true)
(define-const var2728 String (append/-1031950772 var132 (cast-from-var1411-to-var1357 var2968))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var132!1 String)
(assert (str.prefixof var132 var132!1))
(assert true)
(define-const var1303 String (append/672562846 var2728 " unknown.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" unknown.") 
(declare-const var2728!1 String)
(assert (= var2728!1 (str.++ var2728 " unknown.")))
(assert true)
(define-const var1269 String (toString/-2075883882 var1303)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1938 var1786 (getLocation/851674571 (cast-from-var1744-to-var3921 var679))) ; Statement: $r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var2411 var1269 var1938)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r9, $r8) 

(declare-const var2411!1 var3425)
(declare-const var1269!1 String)
(declare-const var1938!1 var1786)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var1411-to-var1683=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY$BriefCodediffNofile], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), hashCode/-467973558=([java.lang.String], int), var3425-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1411-to-var1357=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY$BriefCodediffNofile], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1744-to-var3921=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1744=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY, var679=r2, var1411=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY$BriefCodediffNofile, var2968=r0, var1683=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var522=r1, var3523=b1, var2404=$i0, var3425=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2411=$r3, var2914=$r4, var132=$r5, var1357=java.lang.Object, var2728=$r6, var1303=$r7, var1269=$r9, var1786=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3921=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1938=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY=var1744, r2=var679, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY$BriefCodediffNofile=var1411, r0=var2968, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var1683, r1=var522, b1=var3523, $i0=var2404, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3425, $r3=var2411, $r4=var2914, $r5=var132, java.lang.Object=var1357, $r6=var2728, $r7=var1303, $r9=var1269, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1786, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3921, $r8=var1938}
;seq <java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY$BriefCodediffNofile;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY$BriefCodediffNofile: java.lang.String getValue()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1040106819: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("nofile");     case -867501198: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("codediff");     case 94005370: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("brief");     case 1544803905: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("default");     default: goto tableswitch(b1) {     case 0: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-B");     case 1: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-D");     case 2: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("");     case 3: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-F-");     default: goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException; }; };	tableswitch(b1) {     case 0: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-B");     case 1: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-D");     case 2: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("");     case 3: goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: void setInternalStyle(java.lang.String)>("-F-");     default: goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException; };	$r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Style ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" unknown.");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSSHISTORY: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r9, $r8);	throw $r3
;block_num 3
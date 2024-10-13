(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var83 0)
(declare-sort var3703 0)
(declare-sort var2006 0)
(declare-sort var564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3703_access$000/407375304 (var3703) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var564 String Int) void)
(declare-fun cast-from-var83-to-var564 (var83) var564)
(declare-const null-var83 var83)
(declare-const null-var3703 var3703)
(declare-const null-String String)
(declare-const var1110 var83) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend 
(assert (not (= var1110 null-var83)))
(declare-const var607 var3703) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo 
(assert (not (= var607 null-var3703)))
(declare-const var72 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var72 null-String)))
(define-const var2584 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2584)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2584!1 String)
(assert (= var2584!1 ""))
(assert true)
(define-const var1813 String (append/672562846 var2584!1 "Class ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var2584!2 String)
(assert (= var2584!2 (str.++ var2584!1 "Class ")))
(define-const var3968 String (var3703_access$000/407375304 var607)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo)>(r2) 
(assert true)
(define-const var1734 String (append/672562846 var1813 var3968)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1813!1 String)
(assert (= var1813!1 (str.++ var1813 var3968)))
(assert true)
(define-const var2199 String (append/672562846 var1734 " depends on ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" depends on ") 
(declare-const var1734!1 String)
(assert (= var1734!1 (str.++ var1734 " depends on ")))
(assert true)
(define-const var1032 String (append/672562846 var2199 var72)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2199!1 String)
(assert (= var2199!1 (str.++ var2199 var72)))
(assert true)
(define-const var135 String (toString/-2075883882 var1032)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var83-to-var564 var1110) var135 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r9, 4) 

(declare-const var1110!1 var83)
(declare-const var135!1 String)
(declare-const var2138 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3703_access$000/407375304=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var83-to-var564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var83=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, var1110=r0, var3703=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo, var607=r2, var72=r6, var2006=null_type, var2584=$r1, var1813=$r4, var3968=$r3, var1734=$r5, var2199=$r7, var1032=$r8, var135=$r9, var564=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2138=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend=var83, r0=var1110, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo=var3703, r2=var607, r6=var72, null_type=var2006, $r1=var2584, $r4=var1813, $r3=var3968, $r5=var1734, $r7=var2199, $r8=var1032, $r9=var135, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var564, 4=var2138}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo;	r6 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" depends on ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r9, 4);	return
;block_num 1
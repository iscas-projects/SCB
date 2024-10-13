(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mClearToolDir/-1822879494 (var2325) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2325 var2325)
(declare-const var1771 var2325) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase 
(assert (not (= var1771 null-var2325)))
(define-const var2868 String (mClearToolDir/-1822879494 var1771)) ; Statement: r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase: java.lang.String mClearToolDir> 
(assert true)
(define-const var1257 Bool (isEmpty/-1285796103 var2868)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= (ite var1257 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1103 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1103)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1103!1 String)
(assert (= var1103!1 ""))
(assert true)
(define-const var1035 String (append/672562846 var1103!1 var2868)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1103!2 String)
(assert (= var1103!2 (str.++ var1103!1 var2868)))
(assert true)
(define-const var881 String (append/672562846 var1035 "cleartool")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cleartool") 
(declare-const var1035!1 String)
(assert (= var1035!1 (str.++ var1035 "cleartool")))
(assert true)
(define-const var3868 String (toString/-2075883882 var881)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {mClearToolDir/-1822879494=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2325=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase, var1771=r0, var2868=r4, var1257=$z0, var1103=$r5, var1035=$r6, var881=$r7, var3868=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase=var2325, r0=var1771, r4=var2868, $z0=var1257, $r5=var1103, $r6=var1035, $r7=var881, $r8=var3868}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase;	r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase: java.lang.String mClearToolDir>;	$z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cleartool");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2
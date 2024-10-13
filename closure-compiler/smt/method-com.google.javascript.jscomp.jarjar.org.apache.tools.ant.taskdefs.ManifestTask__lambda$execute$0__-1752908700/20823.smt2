(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1128 0)
(declare-sort var1925 0)
(declare-sort var194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var194 String Int) void)
(declare-fun cast-from-var1128-to-var194 (var1128) var194)
(declare-const null-var1128 var1128)
(declare-const null-String String)
(declare-const var1536 var1128) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestTask 
(assert (not (= var1536 null-var1128)))
(declare-const var820 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var820 null-String)))
(define-const var1493 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1493)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1493!1 String)
(assert (= var1493!1 ""))
(assert true)
(define-const var577 String (append/672562846 var1493!1 "Manifest warning: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest warning: ") 
(declare-const var1493!2 String)
(assert (= var1493!2 (str.++ var1493!1 "Manifest warning: ")))
(assert true)
(define-const var470 String (append/672562846 var577 var820)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var577!1 String)
(assert (= var577!1 (str.++ var577 var820)))
(assert true)
(define-const var3153 String (toString/-2075883882 var470)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1128-to-var194 var1536) var3153 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestTask: void log(java.lang.String,int)>($r5, 1) 

(declare-const var1536!1 var1128)
(declare-const var3153!1 String)
(declare-const var1684 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1128-to-var194=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1128=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestTask, var1536=r0, var820=r2, var1925=null_type, var1493=$r1, var577=$r3, var470=$r4, var3153=$r5, var194=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1684=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestTask=var1128, r0=var1536, r2=var820, null_type=var1925, $r1=var1493, $r3=var577, $r4=var470, $r5=var3153, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var194, 1=var1684}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestTask;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest warning: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestTask: void log(java.lang.String,int)>($r5, 1);	return
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3528 0)
(declare-sort var386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun script/1953596185 (var3528) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3528 var3528)
(declare-const null-String String)
(declare-const var3674 var3528) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase 
(assert (not (= var3674 null-var3528)))
(declare-const var245 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var245 null-String)))
(define-const var3662 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3662)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3662!1 String)
(assert (= var3662!1 ""))
(define-const var1255 String (script/1953596185 var3674)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: java.lang.String script> 
(assert true)
(define-const var1274 String (append/672562846 var3662!1 var1255)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3662!2 String)
(assert (= var3662!2 (str.++ var3662!1 var1255)))
(assert true)
(define-const var590 String (append/672562846 var1274 var245)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1274!1 String)
(assert (= var1274!1 (str.++ var1274 var245)))
(assert true)
(define-const var3881 String (toString/-2075883882 var590)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3674!1 var3528)
(assert (not (= var3674!1 null-var3528)))
(assert (= (script/1953596185 var3674!1) var3881)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: java.lang.String script> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), script/1953596185=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3528=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase, var3674=r1, var245=r3, var386=null_type, var3662=$r0, var1255=$r2, var1274=$r4, var590=$r5, var3881=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase=var3528, r1=var3674, r3=var245, null_type=var386, $r0=var3662, $r2=var1255, $r4=var1274, $r5=var590, $r6=var3881}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: java.lang.String script>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: java.lang.String script> = $r6;	return
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var76 0)
(declare-sort var1993 0)
(declare-sort var2905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun scriptFile/1532117966 (var76) var2905)
(declare-fun script/1532117966 (var76) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var76 var76)
(declare-const null-var1993 var1993)
(declare-const null-var2905 var2905)
(declare-const var1079 var76) ; Statement: r0 := @this: freemarker.ext.ant.JythonAntTask 
(assert (not (= var1079 null-var76)))
(declare-const var1935 var1993) ; Statement: r9 := @parameter0: java.util.Map 
(assert (not (= var1935 null-var1993)))
(define-const var3155 var2905 (scriptFile/1532117966 var1079)) ; Statement: $r1 = r0.<freemarker.ext.ant.JythonAntTask: java.io.File scriptFile> 
 ; Statement: if $r1 == null goto $r2 = r0.<freemarker.ext.ant.JythonAntTask: java.lang.String script> 
(assert (= var3155 null-var2905)) ; Cond: $r1 == null 
(define-const var372 String (script/1532117966 var1079)) ; Statement: $r2 = r0.<freemarker.ext.ant.JythonAntTask: java.lang.String script> 
(assert true)
(define-const var1436 String (trim/-847153721 var372)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1814 Int (length/-134980193 var1436)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var1814 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {scriptFile/1532117966=([freemarker.ext.ant.JythonAntTask], java.io.File), script/1532117966=([freemarker.ext.ant.JythonAntTask], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var76=freemarker.ext.ant.JythonAntTask, var1079=r0, var1993=java.util.Map, var1935=r9, var2905=java.io.File, var3155=$r1, var372=$r2, var1436=$r3, var1814=$i0}
; {freemarker.ext.ant.JythonAntTask=var76, r0=var1079, java.util.Map=var1993, r9=var1935, java.io.File=var2905, $r1=var3155, $r2=var372, $r3=var1436, $i0=var1814}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.ext.ant.JythonAntTask;	r9 := @parameter0: java.util.Map;	$r1 = r0.<freemarker.ext.ant.JythonAntTask: java.io.File scriptFile>;	if $r1 == null goto $r2 = r0.<freemarker.ext.ant.JythonAntTask: java.lang.String script>;	$r2 = r0.<freemarker.ext.ant.JythonAntTask: java.lang.String script>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	if $i0 <= 0 goto return;	return
;block_num 3
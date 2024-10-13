(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1966 0)
(declare-sort var550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1573095867 (var1966) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun trimLeading/1573095867 (var1966) Bool)
(declare-fun trim/1573095867 (var1966) Bool)
(declare-const null-var1966 var1966)
(declare-const null-String String)
(declare-const var1161 var1966) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement 
(assert (not (= var1161 null-var1966)))
(define-const var2166 String (value/1573095867 var1161)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value> 
(assert (not (= var2166 null-String))) ; Cond: $r1 != null 
(define-const var740 String (value/1573095867 var1161)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value> 
(assert true)
(define-const var3379 String (trim/-847153721 var740)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2239 Bool (isEmpty/-1285796103 var3379)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: boolean trimLeading> 
(assert (= (ite var2239 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1343 Bool (trimLeading/1573095867 var1161)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: boolean trimLeading> 
 ; Statement: if $z1 == 0 goto $z2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: boolean trim> 
(assert (= (ite var1343 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3110 Bool (trim/1573095867 var1161)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: boolean trim> 
 ; Statement: if $z2 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value> 
(assert (= (ite var3110 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1740 String (value/1573095867 var1161)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1573095867=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), trimLeading/1573095867=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement], boolean), trim/1573095867=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement], boolean)}
; {var1966=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement, var1161=r0, var2166=$r1, var550=null_type, var740=$r2, var3379=$r3, var2239=$z0, var1343=$z1, var3110=$z2, var1740=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement=var1966, r0=var1161, $r1=var2166, null_type=var550, $r2=var740, $r3=var3379, $z0=var2239, $z1=var1343, $z2=var3110, $r4=var1740}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: boolean trimLeading>;	$z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: boolean trimLeading>;	if $z1 == 0 goto $z2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: boolean trim>;	$z2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: boolean trim>;	if $z2 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value>;	return $r4
;block_num 5
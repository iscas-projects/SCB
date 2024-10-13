(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2317 0)
(declare-sort var1429 0)
(declare-sort var2004 0)
(declare-sort var605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var605_isOutputLanguageJava/1735442213 () Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun println/-1226480079 (var1429 String) void)
(declare-const null-var2317 var2317)
(declare-const null-var1429 var1429)
(declare-const null-String String)
(declare-const var62 var2317) ; Statement: r1 := @this: org.javacc.utils.OutputFileGenerator 
(assert (not (= var62 null-var2317)))
(declare-const var3851 var1429) ; Statement: r0 := @parameter0: java.io.PrintWriter 
(assert (not (= var3851 null-var1429)))
(declare-const var1575 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1575 null-String)))
(assert true) ; Non Conditional
(assert true)
(define-const var2729 Int (indexOf/-1209756239 var1575 "${")) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>("${") 
(define-const var2603 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
(assert (= var2729 var2603)) ; Cond: $i0 == $i2 
(define-const var2487 Bool var605_isOutputLanguageJava/1735442213) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
 ; Statement: if $z0 == 0 goto $z2 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("\\#") 
(assert (= (ite var2487 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1250 Bool (startsWith/-1785782452 var1575 "\u005c#")) ; Statement: $z2 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("\\#") 
 ; Statement: if $z2 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r2) 
(assert (= (ite var1250 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (println/-1226480079 var3851 var1575)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r2) 

(declare-const var3851!1 var1429)
(declare-const var1575!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var605_isOutputLanguageJava/1735442213=([], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), println/-1226480079=([java.io.PrintWriter, java.lang.String], void)}
; {var2317=org.javacc.utils.OutputFileGenerator, var62=r1, var1429=java.io.PrintWriter, var3851=r0, var1575=r2, var2004=null_type, var2729=$i0, var2603=$i2, var605=org.javacc.parser.Options, var2487=$z0, var1250=$z2}
; {org.javacc.utils.OutputFileGenerator=var2317, r1=var62, java.io.PrintWriter=var1429, r0=var3851, r2=var1575, null_type=var2004, $i0=var2729, $i2=var2603, org.javacc.parser.Options=var605, $z0=var2487, $z2=var1250}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.javacc.utils.OutputFileGenerator;	r0 := @parameter0: java.io.PrintWriter;	r2 := @parameter1: java.lang.String;	$i0 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>("${");	$i2 = (int) -1;	if $i0 == $i2 goto $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	if $z0 == 0 goto $z2 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("\\#");	$z2 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("\\#");	if $z2 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r2);	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r2);	return
;block_num 5
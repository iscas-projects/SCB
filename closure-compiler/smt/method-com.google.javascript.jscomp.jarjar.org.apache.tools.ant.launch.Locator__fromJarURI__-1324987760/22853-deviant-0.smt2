(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var93 0)
(declare-sort var3167 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var3167_fromURI/-1058523913 (String) String)
(declare-const null-String String)
(declare-const var3786 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3786 null-String)))
(assert true)
(define-const var3488 Int (indexOf/-1209756239 var3786 "!/")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("!/") 
(define-const var3889 String "jar:") ; Statement: $r1 = "jar:" 
(assert true)
(define-const var3969 Int (length/-134980193 var3889)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert (not (and true (and (>= var3969 0) (>= (str.len var3786) var3488) (>= var3488 var3969)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var3167_fromURI/-1058523913=([java.lang.String], java.lang.String)}
; {var3786=r0, var93=null_type, var3488=i0, var3889=$r1, var3969=$i1, var326=r2, var3167=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator, var276=$r3}
; {r0=var3786, null_type=var93, i0=var3488, $r1=var3889, $i1=var3969, r2=var326, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator=var3167, $r3=var276}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("!/");	$r1 = "jar:";	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i1, i0);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator: java.lang.String fromURI(java.lang.String)>(r2);	return $r3
;block_num 1
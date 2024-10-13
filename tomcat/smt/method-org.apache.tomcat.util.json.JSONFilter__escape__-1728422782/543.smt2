(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3834_escape/-1843499768 (String Int Int) String)
(declare-const null-String String)
(declare-const var2703 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2703 null-String)))
(define-const var303 Int (String_length/-667254855 var2703)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2435 String (var3834_escape/-1843499768 var2703 0 var303)) ; Statement: $r1 = staticinvoke <org.apache.tomcat.util.json.JSONFilter: java.lang.CharSequence escape(java.lang.CharSequence,int,int)>(r0, 0, $i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var3834_escape/-1843499768=([java.lang.CharSequence, int, int], java.lang.CharSequence)}
; {var2703=r0, var303=$i0, var3834=org.apache.tomcat.util.json.JSONFilter, var2435=$r1}
; {r0=var2703, $i0=var303, org.apache.tomcat.util.json.JSONFilter=var3834, $r1=var2435}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r1 = staticinvoke <org.apache.tomcat.util.json.JSONFilter: java.lang.CharSequence escape(java.lang.CharSequence,int,int)>(r0, 0, $i0);	return $r1
;block_num 1
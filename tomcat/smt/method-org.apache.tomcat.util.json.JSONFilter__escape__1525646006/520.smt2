(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var937 0)
(declare-sort var1388 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1388_escape/-1843499768 (String Int Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var2570 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2570 null-String)))
(assert true)
(define-const var3708 Int (length/-134980193 var2570)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2778 String (var1388_escape/-1843499768 (cast-from-String-to-String var2570) 0 var3708)) ; Statement: $r1 = staticinvoke <org.apache.tomcat.util.json.JSONFilter: java.lang.CharSequence escape(java.lang.CharSequence,int,int)>(r0, 0, $i0) 
(define-const var1743 String (String_toString/-1426662429 var2778)) ; Statement: $r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1388_escape/-1843499768=([java.lang.CharSequence, int, int], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var2570=r0, var937=null_type, var3708=$i0, var1388=org.apache.tomcat.util.json.JSONFilter, var2778=$r1, var1743=$r2}
; {r0=var2570, null_type=var937, $i0=var3708, org.apache.tomcat.util.json.JSONFilter=var1388, $r1=var2778, $r2=var1743}
;seq <java.lang.String: int length()>;	<java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = staticinvoke <org.apache.tomcat.util.json.JSONFilter: java.lang.CharSequence escape(java.lang.CharSequence,int,int)>(r0, 0, $i0);	$r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>();	return $r2
;block_num 1
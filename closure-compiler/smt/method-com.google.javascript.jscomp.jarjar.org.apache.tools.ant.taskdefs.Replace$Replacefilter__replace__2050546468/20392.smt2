(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/291154857 (var3469) String)
(declare-fun inputBuffer/-524338880 (var3469) String)
(declare-fun indexOf/2094225745 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun replaceValue/-524338880 (var3469) String)
(declare-const null-var3469 var3469)
(declare-const var1538 var3469) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter 
(assert (not (= var1538 null-var3469)))
(assert true)
(define-const var2020 String (getToken/291154857 var1538)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String getToken()>() 
(define-const var268 String (inputBuffer/-524338880 var1538)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer> 
(assert true)
(define-const var472 Int (indexOf/2094225745 var268 var2020)) ; Statement: i3 = virtualinvoke $r2.<java.lang.StringBuffer: int indexOf(java.lang.String)>(r1) 
(define-const var308 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(define-const var975 Int var308) ; Statement: i4 = $i6 
(assert true)
(define-const var1983 Int (length/-134980193 var2020)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3009 String (replaceValue/-524338880 var1538)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String replaceValue> 
(assert true)
(define-const var3762 Int (length/-134980193 var3009)) ; Statement: i1 = virtualinvoke $r3.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i3 < 0 goto return i4 
(assert (< var472 0)) ; Cond: i3 < 0 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/291154857=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.String), inputBuffer/-524338880=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.StringBuffer), indexOf/2094225745=([java.lang.StringBuffer, java.lang.String], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), replaceValue/-524338880=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.String)}
; {var3469=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter, var1538=r0, var2020=r1, var268=$r2, var472=i3, var308=$i6, var975=i4, var1983=i0, var3009=$r3, var3762=i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter=var3469, r0=var1538, r1=var2020, $r2=var268, i3=var472, $i6=var308, i4=var975, i0=var1983, $r3=var3009, i1=var3762}
;seq <java.lang.StringBuffer: int indexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuffer: int indexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String getToken()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer>;	i3 = virtualinvoke $r2.<java.lang.StringBuffer: int indexOf(java.lang.String)>(r1);	$i6 = (int) -1;	i4 = $i6;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String replaceValue>;	i1 = virtualinvoke $r3.<java.lang.String: int length()>();	if i3 < 0 goto return i4;	return i4
;block_num 3
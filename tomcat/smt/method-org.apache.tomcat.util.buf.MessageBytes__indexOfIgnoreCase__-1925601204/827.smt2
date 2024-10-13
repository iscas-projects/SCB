(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3867 0)
(declare-sort var3854 0)
(declare-sort var489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/442797975 (var3867) String)
(declare-fun strValue/797072951 (var3867) String)
(declare-fun toUpperCase/398655892 (String var489) String)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(declare-const null-var3867 var3867)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var489-ENGLISH var489)
(declare-const var3968 var3867) ; Statement: r0 := @this: org.apache.tomcat.util.buf.MessageBytes 
(assert (not (= var3968 null-var3867)))
(declare-const var3067 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3067 null-String)))
(declare-const var2193 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2193 null-Int)))
(assert true)
;(assert (toString/442797975 var3968)) ; Statement: virtualinvoke r0.<org.apache.tomcat.util.buf.MessageBytes: java.lang.String toString()>() 

(declare-const var3968!1 var3867)
(define-const var691 String (strValue/797072951 var3968!1)) ; Statement: $r2 = r0.<org.apache.tomcat.util.buf.MessageBytes: java.lang.String strValue> 
(define-const var3322 var489 var489-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var193 String (toUpperCase/398655892 var691 var3322)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
(define-const var77 var489 var489-ENGLISH) ; Statement: $r5 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2397 String (toUpperCase/398655892 var3067 var77)) ; Statement: r6 = virtualinvoke r4.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r5) 
(assert true)
(define-const var1392 Int (indexOf/1795197748 var193 var2397 var2193)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String,int)>(r6, i0) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/442797975=([org.apache.tomcat.util.buf.MessageBytes], java.lang.String), strValue/797072951=([org.apache.tomcat.util.buf.MessageBytes], java.lang.String), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), indexOf/1795197748=([java.lang.String, java.lang.String, int], int)}
; {var3867=org.apache.tomcat.util.buf.MessageBytes, var3968=r0, var3067=r4, var3854=null_type, var2193=i0, var691=$r2, var489=java.util.Locale, var3322=$r1, var193=r3, var77=$r5, var2397=r6, var1392=$i1}
; {org.apache.tomcat.util.buf.MessageBytes=var3867, r0=var3968, r4=var3067, null_type=var3854, i0=var2193, $r2=var691, java.util.Locale=var489, $r1=var3322, r3=var193, $r5=var77, r6=var2397, $i1=var1392}
;seq <org.apache.tomcat.util.buf.MessageBytes: java.lang.String toString()>;	<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>;	<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 2,"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r0 := @this: org.apache.tomcat.util.buf.MessageBytes;	r4 := @parameter0: java.lang.String;	i0 := @parameter1: int;	virtualinvoke r0.<org.apache.tomcat.util.buf.MessageBytes: java.lang.String toString()>();	$r2 = r0.<org.apache.tomcat.util.buf.MessageBytes: java.lang.String strValue>;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	$r5 = <java.util.Locale: java.util.Locale ENGLISH>;	r6 = virtualinvoke r4.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r5);	$i1 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String,int)>(r6, i0);	return $i1
;block_num 1
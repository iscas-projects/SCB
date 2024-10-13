(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2217 0)
(declare-sort var443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/442797975 (var2217) String)
(declare-fun strValue/797072951 (var2217) String)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(declare-const null-var2217 var2217)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1562 var2217) ; Statement: r0 := @this: org.apache.tomcat.util.buf.MessageBytes 
(assert (not (= var1562 null-var2217)))
(declare-const var183 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var183 null-String)))
(declare-const var3097 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3097 null-Int)))
(assert true)
;(assert (toString/442797975 var1562)) ; Statement: virtualinvoke r0.<org.apache.tomcat.util.buf.MessageBytes: java.lang.String toString()>() 

(declare-const var1562!1 var2217)
(define-const var3575 String (strValue/797072951 var1562!1)) ; Statement: $r2 = r0.<org.apache.tomcat.util.buf.MessageBytes: java.lang.String strValue> 
(assert true)
(define-const var546 Int (indexOf/1795197748 var3575 var183 var3097)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int indexOf(java.lang.String,int)>(r1, i0) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/442797975=([org.apache.tomcat.util.buf.MessageBytes], java.lang.String), strValue/797072951=([org.apache.tomcat.util.buf.MessageBytes], java.lang.String), indexOf/1795197748=([java.lang.String, java.lang.String, int], int)}
; {var2217=org.apache.tomcat.util.buf.MessageBytes, var1562=r0, var183=r1, var443=null_type, var3097=i0, var3575=$r2, var546=$i1}
; {org.apache.tomcat.util.buf.MessageBytes=var2217, r0=var1562, r1=var183, null_type=var443, i0=var3097, $r2=var3575, $i1=var546}
;seq <org.apache.tomcat.util.buf.MessageBytes: java.lang.String toString()>;	<java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r0 := @this: org.apache.tomcat.util.buf.MessageBytes;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	virtualinvoke r0.<org.apache.tomcat.util.buf.MessageBytes: java.lang.String toString()>();	$r2 = r0.<org.apache.tomcat.util.buf.MessageBytes: java.lang.String strValue>;	$i1 = virtualinvoke $r2.<java.lang.String: int indexOf(java.lang.String,int)>(r1, i0);	return $i1
;block_num 1
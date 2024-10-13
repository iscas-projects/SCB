(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2957 0)
(declare-sort var2377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun append/-1536975096 (var2957 String Int Int) void)
(declare-const null-var2957 var2957)
(declare-const null-String String)
(declare-const var443 var2957) ; Statement: r0 := @this: org.apache.tomcat.util.buf.CharChunk 
(assert (not (= var443 null-var2957)))
(declare-const var814 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var814 null-String)))
(assert true)
(define-const var3548 Int (length/-134980193 var814)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (append/-1536975096 var443 var814 0 var3548)) ; Statement: virtualinvoke r0.<org.apache.tomcat.util.buf.CharChunk: void append(java.lang.String,int,int)>(r1, 0, $i0) 

(declare-const var443!1 var2957)
(declare-const var814!1 String)
(declare-const var450 Int)
(declare-const var3548!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), append/-1536975096=([org.apache.tomcat.util.buf.CharChunk, java.lang.String, int, int], void)}
; {var2957=org.apache.tomcat.util.buf.CharChunk, var443=r0, var814=r1, var2377=null_type, var3548=$i0, var450=0}
; {org.apache.tomcat.util.buf.CharChunk=var2957, r0=var443, r1=var814, null_type=var2377, $i0=var3548, 0=var450}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.buf.CharChunk;	r1 := @parameter0: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	virtualinvoke r0.<org.apache.tomcat.util.buf.CharChunk: void append(java.lang.String,int,int)>(r1, 0, $i0);	return
;block_num 1
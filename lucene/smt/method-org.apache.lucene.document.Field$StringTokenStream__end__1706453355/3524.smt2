(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3785 0)
(declare-sort var42 0)
(declare-sort var2449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun end/1013868047 (var42) void)
(declare-fun cast-from-var3785-to-var42 (var3785) var42)
(declare-fun value/2076319297 (var3785) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offsetAttribute/2076319297 (var3785) var2449)
(declare-fun var2449_setOffset/-460967 (var2449 Int Int) void)
(declare-const null-var3785 var3785)
(declare-const var3468 var3785) ; Statement: r0 := @this: org.apache.lucene.document.Field$StringTokenStream 
(assert (not (= var3468 null-var3785)))
(assert true)
;(assert (end/1013868047 (cast-from-var3785-to-var42 var3468))) ; Statement: specialinvoke r0.<org.apache.lucene.analysis.TokenStream: void end()>() 

(declare-const var3468!1 var3785)
(define-const var1228 String (value/2076319297 var3468!1)) ; Statement: $r1 = r0.<org.apache.lucene.document.Field$StringTokenStream: java.lang.String value> 
(assert true)
(define-const var3521 Int (length/-134980193 var1228)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var2949 var2449 (offsetAttribute/2076319297 var3468!1)) ; Statement: $r2 = r0.<org.apache.lucene.document.Field$StringTokenStream: org.apache.lucene.analysis.tokenattributes.OffsetAttribute offsetAttribute> 
;(assert (var2449_setOffset/-460967 var2949 var3521 var3521)) ; Statement: interfaceinvoke $r2.<org.apache.lucene.analysis.tokenattributes.OffsetAttribute: void setOffset(int,int)>(i0, i0) 

(declare-const var2949!1 var2449)
(declare-const var3521!1 Int)
(declare-const var3521!2 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {end/1013868047=([org.apache.lucene.analysis.TokenStream], void), cast-from-var3785-to-var42=([org.apache.lucene.document.Field$StringTokenStream], org.apache.lucene.analysis.TokenStream), value/2076319297=([org.apache.lucene.document.Field$StringTokenStream], java.lang.String), length/-134980193=([java.lang.String], int), offsetAttribute/2076319297=([org.apache.lucene.document.Field$StringTokenStream], org.apache.lucene.analysis.tokenattributes.OffsetAttribute), var2449_setOffset/-460967=([org.apache.lucene.analysis.tokenattributes.OffsetAttribute, int, int], void)}
; {var3785=org.apache.lucene.document.Field$StringTokenStream, var3468=r0, var42=org.apache.lucene.analysis.TokenStream, var1228=$r1, var3521=i0, var2449=org.apache.lucene.analysis.tokenattributes.OffsetAttribute, var2949=$r2}
; {org.apache.lucene.document.Field$StringTokenStream=var3785, r0=var3468, org.apache.lucene.analysis.TokenStream=var42, $r1=var1228, i0=var3521, org.apache.lucene.analysis.tokenattributes.OffsetAttribute=var2449, $r2=var2949}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.document.Field$StringTokenStream;	specialinvoke r0.<org.apache.lucene.analysis.TokenStream: void end()>();	$r1 = r0.<org.apache.lucene.document.Field$StringTokenStream: java.lang.String value>;	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = r0.<org.apache.lucene.document.Field$StringTokenStream: org.apache.lucene.analysis.tokenattributes.OffsetAttribute offsetAttribute>;	interfaceinvoke $r2.<org.apache.lucene.analysis.tokenattributes.OffsetAttribute: void setOffset(int,int)>(i0, i0);	return
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2157 0)
(declare-sort var520 0)
(declare-sort var2078 0)
(declare-sort var66 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun used/2076319297 (var2157) Bool)
(declare-fun clearAttributes/-1557448030 (var520) void)
(declare-fun cast-from-var2157-to-var520 (var2157) var520)
(declare-fun termAttribute/2076319297 (var2157) var2078)
(declare-fun value/2076319297 (var2157) String)
(declare-fun var2078_append/8808810 (var2078 String) var2078)
(declare-fun offsetAttribute/2076319297 (var2157) var66)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var66_setOffset/-460967 (var66 Int Int) void)
(declare-const null-var2157 var2157)
(declare-const var961 var2157) ; Statement: r0 := @this: org.apache.lucene.document.Field$StringTokenStream 
(assert (not (= var961 null-var2157)))
(define-const var952 Bool (used/2076319297 var961)) ; Statement: $z0 = r0.<org.apache.lucene.document.Field$StringTokenStream: boolean used> 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<org.apache.lucene.document.Field$StringTokenStream: void clearAttributes()>() 
(assert (= (ite var952 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (clearAttributes/-1557448030 (cast-from-var2157-to-var520 var961))) ; Statement: virtualinvoke r0.<org.apache.lucene.document.Field$StringTokenStream: void clearAttributes()>() 

(declare-const var961!1 var2157)
(define-const var3285 var2078 (termAttribute/2076319297 var961!1)) ; Statement: $r2 = r0.<org.apache.lucene.document.Field$StringTokenStream: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAttribute> 
(define-const var3842 String (value/2076319297 var961!1)) ; Statement: $r1 = r0.<org.apache.lucene.document.Field$StringTokenStream: java.lang.String value> 
;(assert (var2078_append/8808810 var3285 var3842)) ; Statement: interfaceinvoke $r2.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: org.apache.lucene.analysis.tokenattributes.CharTermAttribute append(java.lang.String)>($r1) 

(declare-const var3285!1 var2078)
(declare-const var3842!1 String)
(define-const var1505 var66 (offsetAttribute/2076319297 var961!1)) ; Statement: $r4 = r0.<org.apache.lucene.document.Field$StringTokenStream: org.apache.lucene.analysis.tokenattributes.OffsetAttribute offsetAttribute> 
(define-const var2490 String (value/2076319297 var961!1)) ; Statement: $r3 = r0.<org.apache.lucene.document.Field$StringTokenStream: java.lang.String value> 
(assert true)
(define-const var3187 Int (length/-134980193 var2490)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
;(assert (var66_setOffset/-460967 var1505 0 var3187)) ; Statement: interfaceinvoke $r4.<org.apache.lucene.analysis.tokenattributes.OffsetAttribute: void setOffset(int,int)>(0, $i0) 

(declare-const var1505!1 var66)
(declare-const var970 Int)
(declare-const var3187!1 Int)
(declare-const var961!2 var2157)
(assert (not (= var961!2 null-var2157)))
(assert (= (used/2076319297 var961!2) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.lucene.document.Field$StringTokenStream: boolean used> = 1 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {used/2076319297=([org.apache.lucene.document.Field$StringTokenStream], boolean), clearAttributes/-1557448030=([org.apache.lucene.util.AttributeSource], void), cast-from-var2157-to-var520=([org.apache.lucene.document.Field$StringTokenStream], org.apache.lucene.util.AttributeSource), termAttribute/2076319297=([org.apache.lucene.document.Field$StringTokenStream], org.apache.lucene.analysis.tokenattributes.CharTermAttribute), value/2076319297=([org.apache.lucene.document.Field$StringTokenStream], java.lang.String), var2078_append/8808810=([org.apache.lucene.analysis.tokenattributes.CharTermAttribute, java.lang.String], org.apache.lucene.analysis.tokenattributes.CharTermAttribute), offsetAttribute/2076319297=([org.apache.lucene.document.Field$StringTokenStream], org.apache.lucene.analysis.tokenattributes.OffsetAttribute), length/-134980193=([java.lang.String], int), var66_setOffset/-460967=([org.apache.lucene.analysis.tokenattributes.OffsetAttribute, int, int], void)}
; {var2157=org.apache.lucene.document.Field$StringTokenStream, var961=r0, var952=$z0, var520=org.apache.lucene.util.AttributeSource, var2078=org.apache.lucene.analysis.tokenattributes.CharTermAttribute, var3285=$r2, var3842=$r1, var66=org.apache.lucene.analysis.tokenattributes.OffsetAttribute, var1505=$r4, var2490=$r3, var3187=$i0, var970=0}
; {org.apache.lucene.document.Field$StringTokenStream=var2157, r0=var961, $z0=var952, org.apache.lucene.util.AttributeSource=var520, org.apache.lucene.analysis.tokenattributes.CharTermAttribute=var2078, $r2=var3285, $r1=var3842, org.apache.lucene.analysis.tokenattributes.OffsetAttribute=var66, $r4=var1505, $r3=var2490, $i0=var3187, 0=var970}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.document.Field$StringTokenStream;	$z0 = r0.<org.apache.lucene.document.Field$StringTokenStream: boolean used>;	if $z0 == 0 goto virtualinvoke r0.<org.apache.lucene.document.Field$StringTokenStream: void clearAttributes()>();	virtualinvoke r0.<org.apache.lucene.document.Field$StringTokenStream: void clearAttributes()>();	$r2 = r0.<org.apache.lucene.document.Field$StringTokenStream: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAttribute>;	$r1 = r0.<org.apache.lucene.document.Field$StringTokenStream: java.lang.String value>;	interfaceinvoke $r2.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: org.apache.lucene.analysis.tokenattributes.CharTermAttribute append(java.lang.String)>($r1);	$r4 = r0.<org.apache.lucene.document.Field$StringTokenStream: org.apache.lucene.analysis.tokenattributes.OffsetAttribute offsetAttribute>;	$r3 = r0.<org.apache.lucene.document.Field$StringTokenStream: java.lang.String value>;	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	interfaceinvoke $r4.<org.apache.lucene.analysis.tokenattributes.OffsetAttribute: void setOffset(int,int)>(0, $i0);	r0.<org.apache.lucene.document.Field$StringTokenStream: boolean used> = 1;	return 1
;block_num 2
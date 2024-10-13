(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1826 0)
(declare-sort var2795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun buff/-423279612 (var1826) (Array Int Int))
(declare-fun start/-1046112200 (var2795) Int)
(declare-fun cast-from-var1826-to-var2795 (var1826) var2795)
(declare-fun end/-1046112200 (var2795) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1826 var1826)
(declare-const var1516 var1826) ; Statement: r1 := @this: org.apache.tomcat.util.buf.CharChunk 
(assert (not (= var1516 null-var1826)))
(define-const var2570 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var2510 (Array Int Int) (buff/-423279612 var1516)) ; Statement: $r2 = r1.<org.apache.tomcat.util.buf.CharChunk: char[] buff> 
(define-const var1915 Int (start/-1046112200 (cast-from-var1826-to-var2795 var1516))) ; Statement: $i3 = r1.<org.apache.tomcat.util.buf.CharChunk: int start> 
(define-const var89 Int (end/-1046112200 (cast-from-var1826-to-var2795 var1516))) ; Statement: $i1 = r1.<org.apache.tomcat.util.buf.CharChunk: int end> 
(define-const var2329 Int (start/-1046112200 (cast-from-var1826-to-var2795 var1516))) ; Statement: $i0 = r1.<org.apache.tomcat.util.buf.CharChunk: int start> 
(define-const var3205 Int (- var89 var2329)) ; Statement: $i2 = $i1 - $i0 
(assert true)
;(assert (<init>/-253222812 var2570 var2510 var1915 var3205)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, $i3, $i2) 

(declare-const var2570!1 String)
(declare-const var2510!1 (Array Int Int))
(declare-const var1915!1 Int)
(declare-const var3205!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), buff/-423279612=([org.apache.tomcat.util.buf.CharChunk], char[]), start/-1046112200=([org.apache.tomcat.util.buf.AbstractChunk], int), cast-from-var1826-to-var2795=([org.apache.tomcat.util.buf.CharChunk], org.apache.tomcat.util.buf.AbstractChunk), end/-1046112200=([org.apache.tomcat.util.buf.AbstractChunk], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1826=org.apache.tomcat.util.buf.CharChunk, var1516=r1, var2570=$r0, var2510=$r2, var2795=org.apache.tomcat.util.buf.AbstractChunk, var1915=$i3, var89=$i1, var2329=$i0, var3205=$i2}
; {org.apache.tomcat.util.buf.CharChunk=var1826, r1=var1516, $r0=var2570, $r2=var2510, org.apache.tomcat.util.buf.AbstractChunk=var2795, $i3=var1915, $i1=var89, $i0=var2329, $i2=var3205}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: org.apache.tomcat.util.buf.CharChunk;	$r0 = new java.lang.String;	$r2 = r1.<org.apache.tomcat.util.buf.CharChunk: char[] buff>;	$i3 = r1.<org.apache.tomcat.util.buf.CharChunk: int start>;	$i1 = r1.<org.apache.tomcat.util.buf.CharChunk: int end>;	$i0 = r1.<org.apache.tomcat.util.buf.CharChunk: int start>;	$i2 = $i1 - $i0;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, $i3, $i2);	return $r0
;block_num 1